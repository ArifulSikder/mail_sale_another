<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\SeoPage;
use App\Models\SubCategoryDescription;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class CategoryController extends Controller
{

    //********************************** category start ************************************** */
    public function index()
    {
        $data['categories'] = Category::orderBy('name', 'ASC')->where('parent_id', null)->paginate(10);
        return view('backend.product.category.index', $data);
    }
    

    public function storeCategory(Request $request)
    {
        $validatorData = Validator::make($request->all(), [
            'name' => 'required|string|max:255|unique:categories,name',
            'active_status' =>  'required|in:0,1',
        ],[
            'name.required' => 'Please Enter The Name',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

       

        // Add the data to the database
        $category = Category::create([
            'name' => $request->name,
            'slug' => "#",
            'active_status' =>  $request->active_status,
            'created_by' => Auth::id()
        ]);
        
        if ($category) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
      

    }

    public function updateCategory(Request $request)
    {

        Validator::make($request->all(), [
            'name' => "required|string|max:255|unique:categories,name,{$request->id},id",
            'active_status' =>  'required|in:0,1',
        ],[
            'name.required' => 'Please Enter The Name',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();
        
        // Add the data to the database
        $category = Category::findOrFail($request->id)->update([
            'name' => $request->name,
            'slug' => "#",
            'active_status' =>  $request->active_status,
            'updated_by' => Auth::id()
        ]);
        
        if ($category) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
        
    }

    public function deleteCategory($category_id)
    {
        Category::findOrFail($category_id)->delete();
        return redirect()->back();
    }


    //*************************************** category end ******************************************** */

    //*************************************** sub category start ******************************************** */

    public function indexSubCategory()
    {
        $data['categories'] = Category::where('parent_id', null)->get();
        $data['subCategories'] = Category::with('category')->where('parent_id','!=', null)->paginate(10);
        return view('backend.product.sub_category.index', $data);
    }

    public function storeSubCategory(Request $request)
    {
      
        $request->validate( [
            'name' => "required|string|max:255|unique:categories,name",
            'slug' => "required|string|max:255|unique:categories,slug",
            'parent_id' =>  'required|numeric',
            'active_status' =>  'required|in:0,1',
        ],[
            'name' => "Sub Category Name Is Required!",
            'parent_id' =>  'Category Name Is Required!',
            'slug' => "Slug Is Required!",
            'active_status' =>  'Status Is Required!',
        ]);

        $seo = new SeoPage();

        $seo->title = $request->name;
        $seo->slug = $request->slug;
        $seo->type = "sub_category";
        $seo->created_by = Auth::id();
        $seo->save();

        $sub_category = Category::create([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => $request->slug,
            'active_status' => $request->active_status,
            'created_by' => Auth::id()
        ]);

           
        if ($sub_category) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
        
    }

    
    public function updateSubCategory(Request $request)
    {
        $request->validate( [
            'name' => "required|string|max:255|unique:categories,name,{$request->id},id",
            'slug' => "required|string|max:255|unique:categories,slug,{$request->id},id",
            'parent_id' =>  'required|numeric',
            'active_status' =>  'required|in:0,1',
        ],[
            'name.required' => "Sub Category Name Is Required!",
            'parent_id.required' =>  'Category Name Is Required!',
            'slug.required' => "Slug Is Required!",
            'active_status.required' =>  'Status Is Required!',
        ]);

        $sub_category = Category::findOrFail($request->id)->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id,
            'slug' => $request->slug,
            'active_status' => $request->active_status,
            'updated_by' => Auth::id()
        ]);

           
        if ($sub_category) {
            return response()->json([
                'success' => true,
            ]);
        } else {
            return response()->json([
                'success' => false,
            ]);
        }
        
    }


    public function getSubCategoryAjax(Request $request)
    {
        $data['data'] = Category::with('category')
        ->where('parent_id', $request->category_id)
        ->where('parent_id','!=', null)
        ->get();

        return response()->json($data);
        
    }

    public function descriptionSubCategory($id)
    {
        $data['subcategory'] = Category::findOrFail($id);
        $data['sub_descriptions'] = SubCategoryDescription::where('subcategory_id', $id)->latest()->paginate(15);
        return view('backend.product.sub_category.descriptionIndex', $data);
    }

    public function storeSubCategoryDes(Request $request)
    {
        Validator::make($request->all(), [
            'subcategory_id' => 'required|numeric',
            'description' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'subcategory_id.required' => 'Subcategory Required',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $subDescription = new SubCategoryDescription();
        $subDescription->subcategory_id = $request->subcategory_id;
        $subDescription->description = $request->description;
        $subDescription->active_status = $request->active_status;
        $subDescription->created_by = Auth::id();

        if ($subDescription->save()) {
            return response()->json([
                'success' => "SubCategory Description saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function editSubCategoryDes(Request $request)
    {
        Validator::make($request->all(), [
            'subcategory_id' => 'required|numeric',
            'description' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'subcategory_id.required' => 'Subcategory Required',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $subDescription = SubCategoryDescription::findOrFail($request->edit_id);
        $subDescription->subcategory_id = $request->subcategory_id;
        $subDescription->description = $request->description;
        $subDescription->active_status = $request->active_status;
        $subDescription->created_by = Auth::id();

        if ($subDescription->save()) {
            return response()->json([
                'success' => "SubCategory Description Updated Successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function updatSubCatDesStatus($id, $status)
    {
        if ($status == 0) {
            $team = SubCategoryDescription::findOrFail($id)->update([
                'active_status' =>  '1',
                'updated_by' => Auth::id()
            ]);

            if ($team == true) {
                $notification = [
                    'success' => "Status Activated Successfully.",
                ];
            } else {
                $notification = [
                    'error' => "Opps! There Is A Problem!",
                ];
            }
            return back()->with($notification);

        } elseif($status == 1) {
            $team = SubCategoryDescription::findOrFail($id)->update([
                'active_status' =>  '0',
                'updated_by' => Auth::id()
            ]);

            if ($team == true) {
                $notification = [
                    'success' => "Status inactivated Successfully.",
                ];
            } else {
                $notification = [
                    'error' => "Opps! There Is A Problem!",
                ];
            }
            return back()->with($notification);
        } 
    }
    //*************************************** sub category end ******************************************** */


}
