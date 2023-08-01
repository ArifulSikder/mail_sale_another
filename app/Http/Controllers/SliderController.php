<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SliderController extends Controller
{
    public function sliderIndex()
    {
        $data['subcategories'] = Category::all();
        $data['sliders'] = Slider::latest()->paginate(10);
        return view('backend.homepage.slider.sliderIndex', $data);
    }

    public function storeSlider(Request $request)
    {
        $validatorData = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'subcategory_id' => "required|numeric",
            'short_description' => 'required|string',
            'background_photo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            'photo_alt' => 'required|string|max:255',
            'active_status' => 'required|in:0,1',
        ],[
            'title.required' => 'Please Enter The Title',
            'subcategory_id.required' => 'Please Select The Subcategory',
            'short_description.required' => 'Please Enter The Short Description',
            'background_photo.required' => 'Please Select The Background Photo',
            'photo_alt.required' => 'Please Enter The Photo Alternative',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $image = '';
        if ($request->file('background_photo')) {
            $image = uploadPlease($request->file('background_photo'));
        }

        $slider = Slider::create([
            'title' => $request->title,
            'subcategory_id' => $request->subcategory_id,
            'short_description' => $request->short_description,
            'background_photo' => $image,
            'photo_alt' =>  $request->photo_alt,
            'active_status' =>  $request->active_status,
            'created_by' => Auth::id()
        ]);

        if ($slider) {
            return response()->json([
                'success' => "Slider saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }
}
