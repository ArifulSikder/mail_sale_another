<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Coupon;
use App\Models\Product;
use App\Models\ProductAdvantage;
use App\Models\ProductDescription;
use App\Models\ProductDetail;
use App\Models\Seller;
use App\Models\SeoPage;
use App\Models\StockManagement;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    //*************************************** product start ******************************************** */
    public function index(Request $request)
    {
        $search = $request->search;
        $data['products'] = Product::latest()
            ->when($search !== null, function ($query) use($search) {
                return $query->where('name', 'LIKE', "%{$search}%");
            })
            ->paginate(10);


        $data['categories'] = Category::where('parent_id', null)->get();
        $data['subCategories'] = Category::with('category')
            ->where('parent_id', '!=', null)
            ->paginate(10);
        $data['search'] = $search;
        return view('backend.product.index', $data);
    }

    public function storeProduct(Request $request)
    {
        $request->validate(
            [
                'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
                'category_id' => 'required|numeric',
                'sub_category_id' => 'required|numeric',
                'name' => 'required|string|max:255',
                'slug' => "required|string|max:255|unique:products,slug,{$request->id},id",
                'selling_price' => 'required|numeric',
                'active_status' => 'required|in:0,1',
            ],
            [
                'thumbnail.required' => 'Please Choose a Thumbnail',
                'category_id.required' => 'Product Category Is Required',
                'sub_category_id.required' => 'Product Subcategory Is Required',
                'name.required' => 'Product Name Is Required',
                'slug.required' => 'Product Slug Is Required',
                'selling_price.required' => 'Product Selling Price Is Required',
                'active_status.required' => 'Product Active Status Is Required',
            ],
        );

        $seo = new SeoPage();

        $seo->title = $request->name;
        $seo->slug = $request->slug;
        $seo->type = 'product';
        $seo->created_by = Auth::id();
        $seo->save();

        $image = '';
        if ($request->file('thumbnail')) {
            $image = uploadPlease($request->file('thumbnail'));
        }

        $product = Product::create([
            'thumbnail' => $image,
            'category_id' => $request->category_id,
            'sub_category_id' => $request->sub_category_id,
            'name' => $request->name,
            'slug' => $request->slug,
            'selling_price' => $request->selling_price,
            'active_status' => $request->active_status,
            'created_by' => Auth::id(),
        ]);

        if ($product) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }

    //update product

    public function updateProduct(Request $request)
    {
        $request->validate(
            [
                'category_id' => 'required|numeric',
                'sub_category_id' => 'required|numeric',
                'name' => 'required|string|max:255',
                'slug' => "required|string|max:255|unique:products,slug,{$request->id},id",
                'selling_price' => 'required|numeric',
                'active_status' => 'required|in:0,1',
            ],
            [
                'category_id.required' => 'Product Category Is Required',
                'sub_category_id.required' => 'Product Subcategory Is Required',
                'name.required' => 'Product Name Is Required',
                'slug.required' => 'Product Slug Is Required',
                'selling_price.required' => 'Product Selling Price Is Required',
                'active_status.required' => 'Product Active Status Is Required',
            ],
        );

        $product = Product::findOrFail($request->id);
        $image = $product->thumbnail;

        if ($request->file('thumbnail')) {
            $request->validate(
                [
                    'thumbnail' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
                ],
                [
                    'thumbnail.required' => 'Please Choose a Thumbnail',
                ],
            );

            if (isset($product) && is_object($product) && isset($product->thumbnail)) {
                File::delete($product->thumbnail);
            }

            $image = uploadPlease($request->file('thumbnail'));
        }

        $product->update([
            'thumbnail' => $image,
            'category_id' => $request->category_id,
            'sub_category_id' => $request->sub_category_id,
            'name' => $request->name,
            'slug' => $request->slug,
            'selling_price' => $request->selling_price,
            'active_status' => $request->active_status,
            'updated_by' => Auth::id(),
        ]);

        if ($product) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }

    //  update pin status
    public function updatePinStatus($id, $status)
    {
        $pin_count = Product::where('pinned', 1)->count();

        if ($pin_count >= 6 && $status == 0) {
            $notification = [
                'error' => 'You have reached the maximum product count',
            ];
            return back()->with($notification);
        }

        if ($status == 0) {
            $pinn = Product::findOrFail($id)->update([
                'pinned' => '1',
                'updated_by' => Auth::id(),
            ]);

            if ($pinn == true) {
                $notification = [
                    'success' => 'Product Pinned Successfully.',
                ];
            } else {
                $notification = [
                    'error' => 'Opps! There Is A Problem!',
                ];
            }
            return back()->with($notification);
        } elseif ($status == 1) {
            $pinn = Product::findOrFail($id)->update([
                'pinned' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($pinn == true) {
                $notification = [
                    'success' => 'Product Unpinned Successfully.',
                ];
            } else {
                $notification = [
                    'error' => 'Opps! There Is A Problem!',
                ];
            }
            return back()->with($notification);
        }
    }

    public function productAdvantages($product_id)
    {
        $data['product'] = Product::findOrFail($product_id);
        $data['advantages'] = ProductAdvantage::where('product_id', $product_id)->paginate(10);
        return view('backend.product.advantages.index', $data);
    }

    public function storeProductAdvantage(Request $request)
    {
        $request->validate(
            [
                'product_id' => 'required|numeric',
                'title' => 'required|string|max:255',
                'active_status' => 'required|in:0,1',
            ],
            [
                'product_id.required' => 'Product Id Is Required',
                'title.required' => 'Advantage Title Is Required',
                'active_status.required' => 'Advantage Active Status Is Required',
            ],
        );

        $advantage = ProductAdvantage::create([
            'product_id' => $request->product_id,
            'title' => $request->title,
            'active_status' => $request->active_status,
            'created_by' => Auth::id(),
        ]);

        if ($advantage == true) {
            $notification = [
                'success' => 'Advantage Added Successfully',
            ];
        } else {
            $notification = [
                'error' => 'Opps! Something is wrong...!',
            ];
        }

        return redirect()
            ->back()
            ->with($notification);
    }

    public function updateProductAdvantage(Request $request)
    {
        $request->validate(
            [
                'product_id' => 'required|numeric',
                'title' => 'required|string|max:255',
                'active_status' => 'required|in:0,1',
            ],
            [
                'product_id.required' => 'Product Id Is Required',
                'title.required' => 'Advantage Title Is Required',
                'active_status.required' => 'Advantage Active Status Is Required',
            ],
        );

        $advantage = ProductAdvantage::findOrFail($request->id)->update([
            'product_id' => $request->product_id,
            'title' => $request->title,
            'active_status' => $request->active_status,
            'updated_by' => Auth::id(),
        ]);

        if ($advantage) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }
    // ++++++++++++++++++++++++++++++++++++++ product details ++++++++++++++++++++++++++++++++++++++++

    public function productDetailsIndex($product_id)
    {
        $data['product'] = Product::findOrFail($product_id);
        $data['productDetails'] = ProductDetail::where('product_id', $product_id)->paginate(10);
        return view('backend.product.details.index', $data);
    }

    public function storeProductDetails(Request $request)
    {
        $request->validate(
            [
                'product_id' => 'required|integer',
                'active_status' => 'required|integer',
                'content' => 'required|string',
            ],
            [
                'product_id.required' => 'Required',
                'active_status.required' => 'Active Status Is Required',
                'content.required' => 'Please Write Or Past The Content',
            ],
        );

        $details = ProductDetail::create([
            'product_id' => $request->product_id,
            'active_status' => $request->active_status,
            'content' => $request->content,
            'created_by' => Auth::id(),
        ]);

        if ($details) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }

    public function updateProductDetails(Request $request)
    {
        $request->validate(
            [
                'product_id' => 'required|integer',
                'active_status' => 'required|integer',
                'content' => 'required|string',
            ],
            [
                'product_id.required' => 'Required',
                'active_status.required' => 'Active Status Is Required',
                'content.required' => 'Please Write Or Past The Content',
            ],
        );

        $details = ProductDetail::findOrFail($request->id)->update([
            'product_id' => $request->product_id,
            'active_status' => $request->active_status,
            'content' => $request->content,
            'updated_by' => Auth::id(),
        ]);

        if ($details) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }

    public function productDetailDelete($detail_id)
    {
        ProductDetail::findOrFail($detail_id)->delete();
        return redirect()->back();
    }

    public function deleteProductAdvantage($id)
    {
        ProductAdvantage::findOrFail($id)->delete();
        return redirect()->back();
    }

    public function deleteProduct($product_id)
    {
        ProductAdvantage::where('product_id', $product_id)->delete();
        Product::findOrFail($product_id)->delete();

        return redirect()->back();
    }
    //*************************************** product end ******************************************** */

    //++++++++++++++++++++++++++++++++++++++ start product description ********************************
    public function productDescription($product_id)
    {
        $data['product'] = Product::findOrFail($product_id);
        $data['productDescriptions'] = ProductDescription::where('product_id', $product_id)->paginate(10);
        return view('backend.product.description.indexDescription', $data);
    }

    public function storeProductDescription(Request $request)
    {
        $request->validate(
            [
                'product_id' => 'required|integer',
                'active_status' => 'required|integer',
                'content' => 'required|string',
            ],
            [
                'product_id.required' => 'Required',
                'active_status.required' => 'Active Status Is Required',
                'content.required' => 'Please Write Or Past The Content',
            ],
        );

        $description = ProductDescription::create([
            'product_id' => $request->product_id,
            'active_status' => $request->active_status,
            'content' => $request->content,
            'created_by' => Auth::id(),
        ]);

        if ($description) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }

    public function updateProductDescription(Request $request)
    {
        $request->validate(
            [
                'product_id' => 'required|integer',
                'active_status' => 'required|integer',
                'content' => 'required|string',
            ],
            [
                'product_id.required' => 'Required',
                'active_status.required' => 'Active Status Is Required',
                'content.required' => 'Please Write Or Past The Content',
            ],
        );

        $description = ProductDescription::findOrFail($request->id)->update([
            'product_id' => $request->product_id,
            'active_status' => $request->active_status,
            'content' => $request->content,
            'updated_by' => Auth::id(),
        ]);

        if ($description) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
    }
    // ++++++++++++++++++++++++++++++++++++++ end product description ********************************

    // stock view
    public function indexStock()
    {
        $data['stocks'] = StockManagement::latest()->paginate(15);
        $data['products'] = Product::latest()->get();
        $data['sellers'] = Seller::latest()->get();
        return view('backend.stockManage.indexStock', $data);
    }

    // store stock
    // public function storeStock(Request $request)
    // {
    //     Validator::make($request->all(), [
    //         'product_id' => 'required|numeric',
    //         'seller_id' => 'required|numeric',
    //         'quantity' => 'required|numeric',
    //         'stock_date' => 'required',
    //         'per_price' => 'required|numeric',
    //     ],[
    //         'product_id.required' => 'Please Select Product',
    //         'seller_id.required' => 'Please Select The Seller',
    //         'quantity.required' => 'Please Enter The Quantity',
    //         'stock_date.required' => 'Please Select Stock Date',
    //         'per_price.required' => 'Please Enter The Product Per Price',
    //     ])->validate();

    //     $stock = new StockManagement();
    //     $stock->product_id = $request->product_id;
    //     $stock->seller_id = $request->seller_id;
    //     $stock->quantity = $request->quantity;
    //     $stock->stock_date = $request->stock_date;
    //     $stock->per_price = $request->per_price;
    //     $stock->created_by = Auth::id();

    //     if ($stock->save()) {
    //         return response()->json([
    //             'success' => "Stock Added Successfully.",
    //         ]);
    //     } else {
    //         return response()->json([
    //             'error' => "Opps! Something Went Wrong.",
    //         ]);
    //     }
    // }

    // update stock
    public function updateStockAlert(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'stock_alert' => 'required|numeric',
            ],
            [
                'stock_alert.required' => 'Please Enter Stock Alert',
            ],
        )->validate();

        $stock = StockManagement::findOrFail($request->edit_id);
        $stock->stock_alert = $request->stock_alert;
        $stock->updated_by = Auth::id();

        if ($stock->save()) {
            return response()->json([
                'success' => 'Stock Updated Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    //delete stock
    public function deleteStock($id)
    {
        $delete = StockManagement::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => 'Stock Item Deleted Successfully.',
            ];
        } else {
            $notification = [
                'error' => 'Opps! There Is A Problem!',
            ];
        }

        return back()->with($notification);
    }

    // add seller
    public function indexSeller(Request $request)
    {
        $search = $request->search;
        $data['sellers'] = Seller::latest()
            ->when($search !== null, function ($query) use($search) {
                return $query->where('seller_name', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;
        
        return view('backend.seller.indexSeller', $data);
    }

    // store seller
    public function storeSeller(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'seller_name' => 'required|string',
                'address' => 'required|string',
                'phone' => 'required|string|max:20',
                'active_status' => 'required|in:0,1',
            ],
            [
                'seller_name.required' => 'Please Enter The Seller Name',
                'address.required' => 'Please Enter The Seller Address',
                'phone.required' => 'Please Enter The Seller Phone',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $seller = new Seller();
        $seller->seller_name = $request->seller_name;
        $seller->address = $request->address;
        $seller->phone = $request->phone;
        $seller->active_status = $request->active_status;
        $seller->created_by = Auth::id();

        if ($seller->save()) {
            return response()->json([
                'success' => 'Seller Saved successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // update seller
    public function updateSeller(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'seller_name' => 'required|string',
                'address' => 'required|string',
                'phone' => 'required|string|max:20',
                'active_status' => 'required|in:0,1',
            ],
            [
                'seller_name.required' => 'Please Enter The Seller Name',
                'address.required' => 'Please Enter The Seller Address',
                'phone.required' => 'Please Enter The Seller Phone',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $seller = Seller::findOrFail($request->edit_id);
        $seller->seller_name = $request->seller_name;
        $seller->address = $request->address;
        $seller->phone = $request->phone;
        $seller->active_status = $request->active_status;
        $seller->updated_by = Auth::id();

        if ($seller->save()) {
            return response()->json([
                'success' => 'Seller Updated successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // seller update status
    public function updatSellerStatus($id, $status)
    {
        if ($status == 0) {
            $about = Seller::findOrFail($id)->update([
                'active_status' => '1',
                'updated_by' => Auth::id(),
            ]);

            if ($about == true) {
                $notification = [
                    'success' => 'Status Activated Successfully.',
                ];
            } else {
                $notification = [
                    'error' => 'Opps! There Is A Problem!',
                ];
            }
            return back()->with($notification);
        } elseif ($status == 1) {
            $about = Seller::findOrFail($id)->update([
                'active_status' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($about == true) {
                $notification = [
                    'success' => 'Status inactivated Successfully.',
                ];
            } else {
                $notification = [
                    'error' => 'Opps! There Is A Problem!',
                ];
            }
            return back()->with($notification);
        }
    }

    // add coupon
    public function indexCoupon(Request $request)
    {
        $search = $request->search;
        $data['coupons'] = Coupon::latest()
            ->when($search !== null, function ($query) use($search) {
                return $query->where('coupon_name', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        $data['products'] = Product::latest()->get();
        return view('backend.coupon.indexCoupon', $data);
    }

    // store coupon
    public function storeCoupon(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'coupon_name' => 'required|string',
                'start_date' => 'required|string',
                'limit' => 'required|numeric',
                'product_id' => 'required',
                'end_date' => 'required|string|max:20',
                'coupon_discount' => 'required|numeric|between:1,100',
                'active_status' => 'required|in:0,1',
            ],
            [
                'coupon_name.required' => 'Please Enter The Coupon Name',
                'start_date.required' => 'Please Enter Start Date',
                'end_date.required' => 'Please Enter End Date',
                'coupon_discount.required' => 'Please Enter Coupon Discount',
                'limit.required' => 'Please Enter Limit',
                'product_id.required' => 'Please Select The Products',
                'active_status.required' => 'Please Select The Active Status',
            ],
        )->validate();

        $ids = $request->product_id;
        foreach ($ids as $id) {
            $coupon = new Coupon();
            $coupon->coupon_name = $request->coupon_name;
            $coupon->coupon_code = '#' . str_replace(' ', '', $request->coupon_name) . uniqid();
            $coupon->product_id = $id;
            $coupon->start_date = $request->start_date;
            $coupon->limit = $request->limit;
            $coupon->end_date = $request->end_date;
            $coupon->coupon_discount = $request->coupon_discount;
            $coupon->limit = '100';
            $coupon->active_status = $request->active_status;
            $coupon->created_by = Auth::id();
            $coupon->save();
        }

        if ($coupon) {
            return response()->json([
                'success' => 'Coupon Saved successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // update coupon
    public function updateCoupon(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'coupon_name' => 'required|string',
                'start_date' => 'required|string',
                'end_date' => 'required|string|max:20',
                'product_id' => 'required|numeric',
                'limit' => 'required|numeric',
                'coupon_discount' => 'required|numeric|between:1,100',
                'active_status' => 'required|in:0,1',
            ],
            [
                'coupon_name.required' => 'Please Enter The Coupon Name',
                'start_date.required' => 'Please Enter Start Date',
                'end_date.required' => 'Please Enter End Date',
                'limit.required' => 'Please Enter Limit',
                'product_id.required' => 'Please Select The Products',
                'coupon_discount.required' => 'Please Enter Coupon Discount',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $coupon = Coupon::findOrFail($request->edit_id);
        $coupon->coupon_name = $request->coupon_name;
        $coupon->product_id = $request->product_id;
        $coupon->start_date = $request->start_date;
        $coupon->limit = $request->limit;
        $coupon->end_date = $request->end_date;
        $coupon->coupon_discount = $request->coupon_discount;
        $coupon->active_status = $request->active_status;
        $coupon->updated_by = Auth::id();

        if ($coupon->save()) {
            return response()->json([
                'success' => 'Coupon Updated successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // Coupon update status
    public function updatCouponStatus($id, $status)
    {
        if ($status == 0) {
            $about = Coupon::findOrFail($id)->update([
                'active_status' => '1',
                'updated_by' => Auth::id(),
            ]);

            if ($about == true) {
                $notification = [
                    'success' => 'Status Activated Successfully.',
                ];
            } else {
                $notification = [
                    'error' => 'Opps! There Is A Problem!',
                ];
            }
            return back()->with($notification);
        } elseif ($status == 1) {
            $about = Coupon::findOrFail($id)->update([
                'active_status' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($about == true) {
                $notification = [
                    'success' => 'Status inactivated Successfully.',
                ];
            } else {
                $notification = [
                    'error' => 'Opps! There Is A Problem!',
                ];
            }
            return back()->with($notification);
        }
    }

    // FAQ category delete
    public function deleteCoupon($id)
    {
        $delete = Coupon::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => 'Coupon Deleted Successfully.',
            ];
        } else {
            $notification = [
                'error' => 'Opps! There Is A Problem!',
            ];
        }

        return back()->with($notification);
    }
}
