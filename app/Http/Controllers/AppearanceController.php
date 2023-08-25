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
use App\Http\Requests\OrderInformationRequest;
use App\Models\AboutUs;
use App\Models\FAQCategory;
use App\Models\HomePaveshop;
use App\Models\MeetTeam;
use App\Models\Order;
use App\Models\Payment;
use App\Models\ProductGuarantee;
use App\Models\PurchaseProduct;
use App\Models\Review;
use App\Models\SeoPage;
use App\Models\Slider;
use App\Models\SubCategoryDescription;
use App\Rules\UniqueStripeToken;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\RateLimiter;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Validation\ValidationException;
use Srmklive\PayPal\Services\PayPal as PayPalClient;
use Stripe\Stripe;

class AppearanceController extends Controller
{
    public function index()
    {
        $data['products'] = Product::with('advantages', 'details', 'descriptions')
            ->where('active_status', 1)
            ->where('pinned', 1)
            ->get();
        $data['meet_teams'] = MeetTeam::where('active_status', '1')
            ->oldest()
            ->take(3)
            ->get();
        $data['gurantees'] = ProductGuarantee::where('active_status', '1')
            ->oldest()
            ->take(3)
            ->get();
        $data['home_pave'] = HomePaveshop::where('active_status', '1')->first();
        $data['slider'] = Slider::where('active_status', '1')->first();

        $seo = SeoPage::where('slug', 'home')->first();
        perform_seo($seo);

        return view('frontend.index', $data);
    }

    // customer contact
    public function contact()
    {
        $seo = SeoPage::where('slug', 'contact')->first();
        perform_seo($seo);
        return view('frontend.contact');
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
                    Password::min(8),
                    // ->letters()
                    // ->mixedCase()
                    // ->numbers()
                    // ->symbols()
                    // ->uncompromised(),
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
        $data['slider'] = Slider::where('active_status', '1')->first();

        return view('frontend.pricing', $data);
    }

    public function categoryWiseProduct($slug)
    {
        
        $seo = SeoPage::where('slug', $slug)->where('type', 'product_category')->first();
        perform_seo($seo);
        
        $data['category'] = Category::where('slug', $slug)->first();
        $data['products'] = Product::where('sub_category_id', $data['category']->id)
            ->where('active_status', 1)
            ->paginate(12);
        $data['slider'] = Slider::where('active_status', '1')->first();

        $id = Category::where('slug', $slug)->value('id');
        $data['descriptions'] = SubCategoryDescription::where('subcategory_id', $id)
            ->where('active_status', 1)
            ->latest()
            ->get();

        return view('frontend.pricing', $data);
    }

    public function productDetails($category_slug, $product_slug)
    {
        
        $seo = SeoPage::where('slug', $product_slug)->where('type', 'product')->first();
        perform_seo($seo);

        $data['reviews'] = Review::where('product_slug', $product_slug)
            ->take(5)
            ->get();
        $data['category'] = Category::where('slug', $category_slug)->first();
        $data['product'] = Product::with('advantages', 'details', 'descriptions', 'subcategory')
            ->where('active_status', 1)
            ->where('slug', $product_slug)
            ->first();

        return view('frontend.product-details', $data);
        // return $data['product'];
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
        $data['faq_cat'] = FAQCategory::where('active_status', 1)->with('question')->get();
        return view('frontend.faq', $data);
    }

    public function aboutUs()
    {
        $data['about_us'] = AboutUs::where('active_status', 1)->first();
        return view('frontend.about-us', $data);
    }

    public function storeCustomerReview(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'rate' => 'required|numeric',
                'name' => 'required|string|max:100',
                'email' => 'required|string',
                'review' => 'required|string',
            ],
            [
                'rate.required' => 'Please Select Rating Star',
                'name.required' => 'Please Enter Your Name',
                'email.required' => 'Please Enter Your Email',
                'review.required' => 'Please Enter Your Review',
            ],
        )->validate();

        $review = new Review();
        $review->rating = $request->rate;
        $review->name = $request->name;
        $review->email = $request->email;
        $review->customer_review = $request->review;
        $review->product_slug = $request->product_slug;
        $review->date = now();
        $review->created_by = Auth::id();

        if ($review->save()) {
            return response()->json([
                'success' => 'Review Submitted successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function orderInformation(OrderInformationRequest $request)
    {
        if ($request->create_account == 1) {
            $user = new User();

            $user->type = 'Customer';
            $user->username = $request->username;
            $user->email = $request->email;
            $user->f_name = $request->f_name;
            $user->l_name = $request->l_name;
            $user->company_name = $request->company_name;
            $user->code = $request->code;
            $user->street = $request->street;
            $user->address = $request->address;
            $user->town = $request->town;
            $user->city = $request->town;
            $user->country = $request->country;
            $user->post_code = $request->post_code;
            $user->phone = $request->phone;
            $user->email = $request->email;
            $user->password = Hash::make($request->password);
            $user->save();

            $credentials = [];
            $credentials['email'] = $user->email;
            $credentials['password'] = $request->password;

            Auth::attempt($credentials);
        }

        session(['request_data' => json_encode($request->all())]);
        if ($request->payment_method == 1) {
            return view('frontend.stripe');
        } elseif ($request->payment_method == 2) {
            $provider = new PayPalClient();
            $provider->setApiCredentials(config('paypal'));
            $paypalToken = $provider->getAccessToken();

            $response = $provider->createOrder([
                'intent' => 'CAPTURE',
                'application_context' => [
                    'return_url' => route('processSuccessPaypal'),
                    'cancel_url' => route('processCancelPaypal'),
                ],
                'purchase_units' => [
                    0 => [
                        'amount' => [
                            'currency_code' => 'USD',
                            'value' => Cart::subtotal(),
                        ],
                    ],
                ],
            ]);

            if (isset($response['id']) && $response['id'] != null) {
                // redirect to approve href
                foreach ($response['links'] as $links) {
                    if ($links['rel'] == 'approve') {
                        return redirect()->away($links['href']);
                    }
                }

                $message = [
                    'error' => 'Something went wrong.',
                ];
                return redirect()
                    ->route('checkout')
                    ->with($message);
            } else {
                $message = [
                    'error' => 'Something went wrong.',
                ];
                return redirect()
                    ->route('checkout')
                    ->with($response['message'] ?? $message);
            }
        } elseif ($request->payment_method == 3) {
            return view('frontend.payoneer');
        }
    }

    public function stripePayment(Request $request)
    {
        $user = json_decode(session('request_data'), true);
        $request['card_number'] = str_replace(' ', '', $request->card_number);

        $rules = [
            'card_name' => 'required|string',
            'card_number' => 'required|digits_between:15,16|numeric',
            'expiry_month' => 'required|numeric|min:1|max:12',
            'expiry_year' => ['required', 'numeric', 'digits_between:2,4'],
            'card_cvc' => ['required', 'numeric', 'digits_between:3,4'],
            'stripeToken' => ['required', new UniqueStripeToken()],
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

        try {
            Stripe::setApiKey(env('STRIPE_SECRET'));
            $customer = \Stripe\Customer::create([
                'email' => $user['email'],
                'name' => $user['f_name'] . ' ' . $user['l_name'],
                'source' => $request->stripeToken,
            ]);

            $stripe = \Stripe\Charge::create([
                'amount' => Cart::subtotal() * 100,
                'currency' => 'usd',
                'customer' => $customer->id,
                'description' => $user['note'] == null ? 'Empty description' : $user['note'],
                'shipping' => [
                    'name' => $user['f_name'] . ' ' . $user['l_name'],
                    'address' => [
                        'line1' => $user['address'],
                        'postal_code' => $user['post_code'],
                        'city' => $user['town'],
                        'state' => $user['street'],
                        'country' => $user['code'],
                    ],
                ],
            ]);
        } catch (\Exception $th) {
            // return view('errors.400');
            return $th;
        }

        if ($stripe['status'] === 'succeeded') {
            $order = new Order();

            $order->user_id = $user['id'];
            $order->f_name = $user['f_name'];
            $order->l_name = $user['l_name'];
            $order->company_name = $user['company_name'];
            $order->code = $user['code'];
            $order->street = $user['street'];
            $order->address = $user['address'];
            $order->town = $user['town'];
            $order->country = $user['country'];
            $order->post_code = $user['post_code'];
            $order->phone = $user['phone'];
            $order->email = $user['email'];
            $order->note = $user['note'];
            $order->total_price = Cart::subtotal();
            $order->payment_method = $user['payment_method'];
            $order->agree = $user['agree'];
            $order->save();

            $count = count($user['product_id']);
            for ($i = 0; $i < $count; $i++) {
                $selling_price = Product::findOrFail($user['product_id'][$i])->selling_price;

                $purchase_product = new PurchaseProduct();
                $purchase_product->order_id = $order->id;
                $purchase_product->product_id = $user['product_id'][$i];
                $purchase_product->product_quantity = $user['product_quantity'][$i];
                $purchase_product->sales_price = $selling_price;
                $purchase_product->save();
            }

            $payment = new Payment();
            $payment->order_id = $order->id;
            $payment->card_name = $request->card_name;
            $payment->card_number = $request->card_number;
            $payment->expiry_month = $request->expiry_month;
            $payment->expiry_year = $request->expiry_year;
            $payment->card_cvc = $request->card_cvc;
            $payment->stripeToken = $request->stripeToken;
            $payment->amount = Cart::subtotal();
            $payment->save();

            Cart::forget();

            return redirect()->route('payment-success');
        }
    }

    public function processSuccessPaypal(Request $request)
    {
        $provider = new PayPalClient();
        $provider->setApiCredentials(config('paypal'));
        $provider->getAccessToken();
        $response = $provider->capturePaymentOrder($request['token']);

        $user = json_decode(session('request_data'), true);

        if (isset($response['status']) && $response['status'] == 'COMPLETED') {
            $order = new Order();

            $order->user_id = $user['id'];
            $order->f_name = $user['f_name'];
            $order->l_name = $user['l_name'];
            $order->company_name = $user['company_name'];
            $order->code = $user['code'];
            $order->street = $user['street'];
            $order->address = $user['address'];
            $order->town = $user['town'];
            $order->country = $user['country'];
            $order->post_code = $user['post_code'];
            $order->phone = $user['phone'];
            $order->email = $user['email'];
            $order->note = $user['note'];
            $order->total_price = Cart::subtotal();
            $order->payment_method = $user['payment_method'];
            $order->agree = $user['agree'];
            $order->save();

            $count = count($user['product_id']);
            for ($i = 0; $i < $count; $i++) {
                $selling_price = Product::findOrFail($user['product_id'][$i])->selling_price;

                $purchase_product = new PurchaseProduct();
                $purchase_product->order_id = $order->id;
                $purchase_product->product_id = $user['product_id'][$i];
                $purchase_product->product_quantity = $user['product_quantity'][$i];
                $purchase_product->sales_price = $selling_price;
                $purchase_product->save();
            }

            $payment = new Payment();
            $payment->order_id = $order->id;
            $payment->card_name = 'Paypal';
            $payment->amount = Cart::subtotal();
            $payment->save();

            Cart::forget();

            return redirect()->route('payment-success');
        } else {
            $message = [
                'error' => 'Something went wrong.',
            ];
            return redirect()
                ->back()
                ->with($response['message'] ?? $message);
        }
    }

    public function processCancelPaypal(Request $request)
    {
        $message = [
            'error' => 'You have canceled the transaction.',
        ];
        return redirect()
            ->route('checkout')
            ->with($response['message'] ?? $message);
    }

    public function paymentSuccessMessage()
    {
        return view('frontend.payment.payment_success_message');
    }
}
