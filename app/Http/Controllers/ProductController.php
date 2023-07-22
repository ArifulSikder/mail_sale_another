<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Models\ProductAdvantage;
use App\Models\ProductDescription;
use App\Models\ProductDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    
    //*************************************** product start ******************************************** */
    public function index()
    {
        $data['products'] = Product::with('subcategory','category')->latest()->paginate(10);
        $data['categories'] = Category::where('parent_id', null)->get();
        $data['subCategories'] = Category::with('category')->where('parent_id','!=', null)->paginate(10);
        return view('backend.product.index', $data);
    }

    public function storeProduct(Request $request)
    {
        $request->validate( [
            'thumbnail' =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            'category_id' => "required|numeric",
            'sub_category_id' => "required|numeric",
            'name' => "required|string|max:255",
            'slug' => "required|string|max:255|unique:products,slug,{$request->id},id",
            'selling_price' =>  'required|numeric',
            'active_status' =>  'required|in:0,1',
        ],[
            'thumbnail.required' =>  'Please Choose a Thumbnail',
            'category_id.required' => "Product Category Is Required",
            'sub_category_id.required' => "Product Subcategory Is Required",
            'name.required' => "Product Name Is Required",
            'slug.required' => "Product Slug Is Required",
            'selling_price.required' =>  'Product Selling Price Is Required',
            'active_status.required' =>  'Product Active Status Is Required',
        ]);

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
            'selling_price' =>  $request->selling_price,
            'active_status' =>  $request->active_status,
            'created_by' => Auth::id()
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

        $request->validate( [
            'category_id' => "required|numeric",
            'sub_category_id' => "required|numeric",
            'name' => "required|string|max:255",
            'slug' => "required|string|max:255|unique:products,slug,{$request->id},id",
            'selling_price' =>  'required|numeric',
            'active_status' =>  'required|in:0,1',
        ],[
            'category_id.required' => "Product Category Is Required",
            'sub_category_id.required' => "Product Subcategory Is Required",
            'name.required' => "Product Name Is Required",
            'slug.required' => "Product Slug Is Required",
            'selling_price.required' =>  'Product Selling Price Is Required',
            'active_status.required' =>  'Product Active Status Is Required',
        ]);


        $product = Product::findOrFail($request->id);
        $image = $product->thumbnail;


        if ($request->file('thumbnail')) {

            $request->validate([
                'thumbnail' =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            ],[
                'thumbnail.required' =>  'Please Choose a Thumbnail',
            ]);

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
            'selling_price' =>  $request->selling_price,
            'active_status' =>  $request->active_status,
            'updated_by' => Auth::id()
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

    public function productAdvantages($product_id)
    {
        $data['product'] = Product::findOrFail($product_id);
        $data['advantages'] = ProductAdvantage::where('product_id', $product_id)->paginate(10);
        return view('backend.product.advantages.index', $data);
    }

    public function storeProductAdvantage(Request $request)
    {
        $request->validate( [
            'product_id' => "required|numeric",
            'title' => "required|string|max:255",
            'active_status' =>  'required|in:0,1',
        ],[
            'product_id.required' => "Product Id Is Required",
            'title.required' => "Advantage Title Is Required",
            'active_status.required' =>  'Advantage Active Status Is Required',
        ]);

        $advantage = ProductAdvantage::create([
            'product_id' => $request->product_id,
            'title' => $request->title,
            'active_status' => $request->active_status,
            'created_by' => Auth::id()
        ]);
        
     
        if ($advantage==true) {
            $notification = ([
                'success' => 'Advantage Added Successfully',
            ]);
        }else{
            $notification = ([
                'error' => 'Opps! Something is wrong...!',
            ]);
        }

        return redirect()->back()->with($notification);
    }

    public function updateProductAdvantage(Request $request)
    {
        $request->validate( [
            'product_id' => "required|numeric",
            'title' => "required|string|max:255",
            'active_status' =>  'required|in:0,1',
        ],[
            'product_id.required' => "Product Id Is Required",
            'title.required' => "Advantage Title Is Required",
            'active_status.required' =>  'Advantage Active Status Is Required',
        ]);

        $advantage = ProductAdvantage::findOrFail($request->id)->update([
            'product_id' => $request->product_id,
            'title' => $request->title,
            'active_status' => $request->active_status,
            'updated_by' => Auth::id()
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
        $request->validate([
            "product_id" => "required|integer",
            "active_status" => "required|integer",
            "content" => "required|string"
        ],[
            "product_id.required" => "Required",
            "active_status.required" => "Active Status Is Required",
            "content.required" => "Please Write Or Past The Content"
        ]);
        
        
        $details = ProductDetail::create([
            "product_id" => $request->product_id,
            "active_status" => $request->active_status,
            "content" => $request->content,
            "created_by" => Auth::id(),
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
        
        $request->validate([
            "product_id" => "required|integer",
            "active_status" => "required|integer",
            "content" => "required|string"
        ],[
            "product_id.required" => "Required",
            "active_status.required" => "Active Status Is Required",
            "content.required" => "Please Write Or Past The Content"
        ]);
        
        
        $details = ProductDetail::findOrFail($request->id)->update([
            "product_id" => $request->product_id,
            "active_status" => $request->active_status,
            "content" => $request->content,
            "updated_by" => Auth::id(),
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


    // ++++++++++++++++++++++++++++++++++++++ start product description ********************************
    public function productDescription($product_id)
    {
        $data['product'] = Product::findOrFail($product_id);
        $data['productDescriptions'] = ProductDescription::where('product_id', $product_id)->paginate(10);
        return view('backend.product.description.indexDescription', $data);
    }

    public function storeProductDescription(Request $request)
    {
        
        $request->validate([
            "product_id" => "required|integer",
            "active_status" => "required|integer",
            "content" => "required|string"
        ],[
            "product_id.required" => "Required",
            "active_status.required" => "Active Status Is Required",
            "content.required" => "Please Write Or Past The Content"
        ]);
        
        $description = ProductDescription::create([
            "product_id" => $request->product_id,
            "active_status" => $request->active_status,
            "content" => $request->content,
            "created_by" => Auth::id(),
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
        
        $request->validate([
            "product_id" => "required|integer",
            "active_status" => "required|integer",
            "content" => "required|string"
        ],[
            "product_id.required" => "Required",
            "active_status.required" => "Active Status Is Required",
            "content.required" => "Please Write Or Past The Content"
        ]);
        
        $description = ProductDescription::findOrFail($request->id)->update([
            "product_id" => $request->product_id,
            "active_status" => $request->active_status,
            "content" => $request->content,
            "updated_by" => Auth::id(),
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
}
