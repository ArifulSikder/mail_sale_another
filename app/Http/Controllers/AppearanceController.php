<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Country;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Validation\Rules\Password;
use Illuminate\Support\Facades\Validator;
use App\Cart;
use App\Mail\SenMail;
use App\Models\CustomerMessage;
use App\Models\HomePaveshop;
use App\Models\MeetTeam;
use App\Models\Slider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;
use Stripe\Stripe;
use Stripe\Token;
use Stripe\Charge;


class AppearanceController extends Controller
{
    public function index()
    {
        $data['products']   = Product::with('advantages', 'details', 'descriptions')
            ->where('active_status', 1)
            ->get();
        $data['meet_teams'] = MeetTeam::where('active_status', '1')->oldest()->take(3)->get();
        $data['home_pave']  = HomePaveshop::where('active_status', '1')->first();
        $data['slider']     = Slider::where('active_status', '1')->first();

        return view('frontend.index', $data);
    }

    // customer contact 
    public function contact()
    {
        return view('frontend.contact');
    }



    // store customer contact 
    public function storeCustomerMessage(Request $request)
    {
        Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email',
            'message' => 'required|string',
        ],[
            'category_id.required' => 'Please Enter The Category Title',
            'question.required' => 'Please Enter The Question',
            'answer.required' => 'Please Enter The Answer',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $message = new CustomerMessage();  
        $message->name = $request->name;
        $message->email = $request->email;
        $message->message = $request->message;
        $message->created_by = Auth::id();
        $message->save();


        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message,
            'subject' => "Welcome To Pvashop",
        );

        //mail class defining
        Mail::to('islammahfuzul31@gmail.com')->send(new SenMail($data));


        if ($message) {
            return response()->json([
                'success' => "Message Send To Admin successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }



    public function myAccount()
    {
        $data['countries'] = Country::orderBy('name', 'ASC')->get();
        return view('frontend.my-account', $data);
    }

    public function cart()
    {
        return view('frontend.cart');
    }

    public function validateUserdata(Request $request)
    {
        if ($request->username) {
            $validator = Validator::make($request->all(), [
                'username' => 'required|unique:users,username',
            ])->validate();
        } elseif ($request->email) {
            $validator = Validator::make($request->all(), [
                'email' => 'required|email:rfc,dns|unique:users,email',
            ])->validate();
        } elseif ($request->password) {
            $validator = Validator::make($request->all(), [
                'password' => [
                    'required',
                    Password::min(8)
                        ->letters()
                        ->mixedCase()
                        ->numbers()
                        ->symbols()
                        ->uncompromised(),
                ],
            ])->validate();
        }

        return response()->json([
            'status' => 200,
        ]);
    }

    public function profilePhotoUpload(Request $request)
    {
        $request->validate(
            [
                'photo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            ],
            [
                'photo.required' => 'File Must Be Image!',
            ],
        );

        // $image = null;
        if (!empty($request->photo)) {
            File::delete(auth()->user()->photo);
            $file = $request->file('photo');
            $extension = $file->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $file->move(public_path('uploads/'), $filename);
            $imagePath = 'public/uploads/' . $filename;
        }

        $user = User::findOrFail(auth()->user()->id)->update(['photo' => $imagePath]);
        if ($user) {
            return response()->json(['success' => 'Success']);
        } else {
            return response()->json(['error' => 'error']);
        }
    }

    public function allProduct()
    {
        $data['products'] = Product::latest()
            ->where('active_status', 1)
            ->paginate(12);
        return view('frontend.pricing', $data);
    }

    public function categoryWiseProduct($slug)
    {
        $data['category'] = Category::where('slug', $slug)->first();
        $data['products'] = Product::where('sub_category_id', $data['category']->id)
            ->where('active_status', 1)
            ->paginate(12);
        $data['slider'] = Slider::where('active_status', '1')->first();
        
        return view('frontend.pricing', $data);
  
    }

    public function productDetails($category_slug, $product_slug)
    {
        $data['category'] = Category::where('slug', $category_slug)->first();
        $data['product'] = Product::with('advantages', 'details', 'descriptions', 'subcategory')
            ->where('active_status', 1)
            ->where('slug', $product_slug)
            ->first();

        return view('frontend.product-details', $data);
    }

    public function addToCard(Request $request)
    {
        $product = Product::findOrFail($request->product_id);

        if (!$product) {
            abort(404);
        }

        Cart::add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $request->quantity,
            'price' => $product->selling_price,
            'thumbnail' => $product->thumbnail,
        ]);

        $message = [
            'success' => 'Product added to cart successfully!',
        ];

        return redirect()
            ->back()
            ->with($message);
    }

    public function updateCart(Request $request)
    {
        if ($request->id and $request->qty) {
            $data['cart'] = Cart::update($request->id, $request->qty);
            return view('frontend.include.card_subtotal', $data)->render();
        }
    }

    public function removeProductItem(Request $request)
    {
        if ($request->id) {
            $data['cart'] = Cart::remove($request->id);
            return view('frontend.include.card_subtotal', $data)->render();
        }
    }

    public function myCard()
    {
        $data['carts'] = Cart::content();
        return view('frontend.cart', $data);
    }

    public function checkout()
    {
        if (count(Cart::content()) > 0) {
            $data['countries'] = Country::orderBy('name', 'ASC')->get();
            return view('frontend.checkout', $data);
        }

        $message = [
            'error' => 'Sorry! Your Cart Is Empty',
        ];

        return redirect('/cart')->with($message);
    }

    public function loginFromCheckoutPage(Request $request)
    {
        $request->validate(
            [
                'username' => 'required|string',
                'password' => [
                    'required',
                    Password::min(8)
                        ->letters()
                        ->mixedCase()
                        ->numbers()
                        ->symbols()
                        ->uncompromised(),
                ],
            ],
            [
                'username.required' => 'Please enter your username',
                'password.required' => 'Please enter your password',
            ],
        );

        $email = $request->only('username')['username'];
        $password = $request->only('password')['password'];

        $credential = [
            'email' => $email,
            'password' => $password,
        ];
        if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
            if (!Auth::attempt($credential)) {
                RateLimiter::hit($this->throttleKey());

                throw ValidationException::withMessages([
                    'email' => trans('auth.failed'),
                ]);

                return response()->json([
                    'success' => false,
                ]);
            }
        } else {
            $credential = [
                'username' => $email,
                'password' => $password,
            ];

            if (!Auth::attempt($credential, $request->boolean('remember'))) {
                throw ValidationException::withMessages([
                    'username' => trans('auth.failed'),
                ]);

                return response()->json([
                    'success' => false,
                ]);
            }
        }

        if (Auth::check()) {
            return response()->json([
                'success' => true,
            ]);
        }
    }

    public function orderInformation(Request $request)
    {
        $request->validate(
            [
                'id' => 'nullable|numeric',
                'f_name' => 'required|string|max:255',
                'l_name' => 'required|string|max:255',
                'company_name' => 'required|string|max:255',
                'code' => 'required|string',
                'street' => 'required|string|max:255',
                'address' => 'nullable|max:255',
                'town' => 'required|string|max:255',
                'country' => 'nullable|max:255',
                'post_code' => 'required|string|max:255',
                'phone' => 'required|string|max:255',
                'email' => 'required|email',
                'note' => 'nullable|max:1000',
                'product_id' => 'required|numeric',
                'product_quantity' => 'required|numeric',
                'payment_method' => 'required|numeric',
                'agree' => 'required|numeric',
            ],
            [
                'f_name.required' => 'First name is required.',
                'l_name.required' => 'Last name is required.',
                'company_name.required' => 'Company name is required.',
                'code.required' => 'Country name is required.',
                'street.required' => 'Street is required.',
                'town.required' => 'Town is required.',
                'post_code.required' => 'Post code is required.',
                'phone.required' => 'Phone number is required.',
                'email.required' => 'required|email:rfc,dns|unique:users,email',
                'payment_method.required' => 'Please select a payment type.',
                'agree.required' => 'Please agree with us.',
            ],
        );

        if ($request->create_account == 1) {
            $validator = Validator::make(
                $request->all(),
                [
                    'email' => 'required|email:rfc,dns|unique:users,email',
                    'username' => 'required|unique:users,username',
                    'password' => ['required', Password::min(8), 'string'],
                ],
                [
                    'email.required' => 'Email is required',
                    'username.required' => 'Username is required',
                    'password.required' => 'Password is required',
                ],
            );

            // $user = new User();

            // $user->type = 'Customer';
            // $user->username = $request->username;
            // $user->email = $request->email;
            // $user->password = Hash::make($request->password);
            // $user->save();
        }
        $data['selling_price'] = Product::findOrFail($request->product_id)->selling_price;
        $data['product_quantity'] = $request->product_quantity;
        session(['request_data' => json_encode($request->all())]);
        if ($request->payment_method == 1) {
            return view('frontend.stripe', $data);
        } elseif ($request->payment_method == 2) {
            return view('frontend.paypal');
        } elseif ($request->payment_method == 3) {
            return view('frontend.payoneer');
        }
    }

    public function stripePayment(Request $request)
    {
        $hello = $request['card_number'] = str_replace(' ', '', $request->card_number);

        $rules = [
            'card_name' => 'required|string',
            'card_number' => 'required|digits_between:15,16|numeric',
            'expiry_month' => 'required|numeric|min:1|max:12',
            'expiry_year' => ['required', 'numeric', 'digits_between:2,4'],
            'card_cvc' => ['required', 'numeric', 'digits_between:3,4'],
        ];
        //Validation message
        $customMessage = [
            'card_name.required' => 'Card name is required',
            'card_number.required' => 'Number is required',
            'expiry_month.required' => 'Month is required',
            'expiry_year.required' => 'Year is required',
            'card_cvc.required' => 'CVC is required',
        ];
        $validator = Validator::make($request->all(), $rules, $customMessage);
        if ($validator->fails()) {
            return Redirect::back()->withErrors($validator);
        }

        Stripe::setApiKey(env('STRIPE_SECRET'));
        $customer = \Stripe\Customer::create([
            'address' => [
                'line1' => 'Virani Chowk',
                'postal_code' => '360001',
                'city' => 'Rajkot',
                'state' => 'GJ',
                'country' => 'IN',
            ],
            'email' => 'demo@gmail.com',
            'name' => 'Hardik Savani',
            'source' => $request->stripeToken,
        ]);

        $hi = \Stripe\Charge::create([
            'amount' => 100 * 100,
            'currency' => 'usd',
            'customer' => $customer->id,
            'description' => 'this is description',
            'shipping' => [
                'name' => 'Jenny Rosen',
                'address' => [
                    'line1' => '510 Townsend St',
                    'postal_code' => '98140',
                    'city' => 'San Francisco',
                    'state' => 'CA',
                    'country' => 'US',
                ],
            ],
        ]);
    }

    public function refundPolicy()
    {
        return view('frontend.refund');
    }
    public function privacyPolicy()
    {
        return view('frontend.privacy-policy');
    }
    public function termsService()
    {
        return view('frontend.terms-of-service');
    }
    public function disclaimer()
    {
        return view('frontend.disclaimer');
    }
    public function faq()
    {   
        return view('frontend.faq');
    }

    public function aboutUs()
    {
        return view('frontend.about-us');
    }



}
