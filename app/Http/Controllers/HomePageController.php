<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\HomePaveshop;
use App\Models\MeetTeam;
use App\Models\ProductGuarantee;
use App\Models\Slider;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class HomePageController extends Controller
{
    // HOME PAVESHOP START// 
    // HOME PAVESHOP ADD DETAILS 
    public function index()
    {
        return view('backend.homepage.homepaveshop.add-details');
    }

    // HOME PAVESHOP STORE 
    public function storeDetails(Request $request)
    {

        $validatorData = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'title.required' => 'Please Enter The Title',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $homePabeshop = HomePaveshop::create([
            'title' => $request->title,
            'description' => $request->description,
            'active_status' =>  $request->active_status,
            'created_by' => Auth::id()
        ]);

        if ($homePabeshop) {
            return response()->json([
                'success' => "Details saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // HOME PAVESHOP SHOW  
    public function showDetails()
    {
        $data['details']= HomePaveshop::latest()->paginate(10);
        return view('backend.homepage.homepaveshop.indexPaveshop', $data);
    }

    // HOME PAVESHOP EDIT PAGE SHOW  
    public function editDetails($id)
    {
        $data['details_pev'] = HomePaveshop::findOrFail($id); 
        return view('backend.homepage.homepaveshop.edit-paveshop', $data);
    }

    // HOME PAVESHOP UPDATE  
    public function updateDetails(Request $request)
    {
        $validatorData = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'title.required' => 'Please Enter The Title',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        
        $homePabeshop = HomePaveshop::findOrFail($request->id)->update([
            'title' => $request->title,
            'description' => $request->description,
            'active_status' =>  $request->active_status,
            'updated_by' => Auth::id()
        ]);

        if ($homePabeshop) {
            return response()->json([
                'success' => "Details Updated successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }

    }

    // HOME PVASHOP UPDATE STATUS
    public function updateHomeStatus($id, $status)
    {
        if ($status == 0) {
            $team = HomePaveshop::findOrFail($id)->update([
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
            $team = HomePaveshop::findOrFail($id)->update([
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

    // HOME PAVESHOP DELETE DATA 
    public function deleteDetails($id)
    {
        $delete = HomePaveshop::findOrFail($id)->delete();


        if ($delete == true) {
            $notification = [
                'success' => "Details Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

    // MEET TEAM SOHOW INDEX PAGE
    public function meetTeam()
    {
        $data['members'] = MeetTeam::latest()->paginate(10);
        return view('backend.homepage.team.indexTeam', $data );
    }

    // MEET TEAM STORE TEAM MEMBER
    public function storeTeam(Request $request)
    {
        $validatorData = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            'designation' =>  'required',
            'description' => 'required|string',
            'active_status' => 'required|in:0,1',
        ],[
            'name.required' => 'Please Enter The Name',
            'photo.required' => 'Please Select A Photo',
            'designation.required' => 'Please Enter The Designation',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $image = '';
        if ($request->file('photo')) {
            $image = uploadPlease($request->file('photo'));
        }

        $team = MeetTeam::create([
            'name' => $request->name,
            'photo' => $image,
            'designation' => $request->designation,
            'description' => $request->description,
            'active_status' =>  $request->active_status,
            'created_by' => Auth::id()
        ]);

        if ($team) {
            return response()->json([
                'success' => "Meeting team saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // MEET TEAM UPDATE DATA
    public function updateTeam(Request $request)
    {
        $validatorData = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'photo' => 'image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            'designation' =>  'required',
            'description' => 'required|string',
            'active_status' => 'required|in:0,1',
        ],[
            'name.required' => 'Please Enter The Name',
            'designation.required' => 'Please Enter The Designation',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        if ($request->hasFile('photo')) {
            $id = $request->edit_id;
            $photo = MeetTeam::where('id', $id)->value('photo');
            File::delete($photo);
            $image = '';
            if ($request->file('photo')) {
                $image = uploadPlease($request->file('photo'));
            }
            $team = MeetTeam::findOrFail($id)->update([
                'name' => $request->name,
                'photo' => $image,
                'designation' => $request->designation,
                'description' => $request->description,
                'active_status' =>  $request->active_status,
                'updated_by' => Auth::id()
            ]);
            if ($team) {
                return response()->json([
                    'success' => "Meeting team updated successfully.",
                ]);
            } else {
                return response()->json([
                    'error' => "Opps! Something Went Wrong.",
                ]);
            }
            
        } else {
            $id = $request->edit_id;
            $team = MeetTeam::findOrFail($id)->update([
                'name' => $request->name,
                'designation' => $request->designation,
                'description' => $request->description,
                'active_status' =>  $request->active_status,
                'updated_by' => Auth::id()
            ]);
            if ($team) {
                return response()->json([
                    'success' => "Meeting team updated successfully.",
                ]);
            } else {
                return response()->json([
                    'error' => "Opps! Something Went Wrong.",
                ]);
            }
        }
        
    }

    // MEET TEAM UPDATE STATUS
    public function updateTeamStatus($id, $status)
    {
        if ($status == 0) {
            $team = MeetTeam::findOrFail($id)->update([
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
            $team = MeetTeam::findOrFail($id)->update([
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

    // MEET TEAM DELETE DATA
    public function deleteTeam($id)
    {
        $photo = MeetTeam::where('id', $id)->value('photo');
        File::delete($photo);
        
        $delete = MeetTeam::findOrFail($id)->delete();
        if ($delete == true) {
            $notification = [
                'success' => "Team Member Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }


    // START TOP SLIDER //
    // START TOP INDEX PAGE 
    public function sliderIndex()
    {
        $data['subcategories'] = Category::all();
        $data['sliders'] = Slider::latest()->paginate(10);
        return view('backend.homepage.slider.sliderIndex', $data);
    }

    // SLIDER STORE 
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

    // SLIDER UPDATE 
    public function updateSlider(Request $request)
    {
        $validatorData = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'subcategory_id' => "required|numeric",
            'short_description' => 'required|string',
            'background_photo' => 'image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            'photo_alt' => 'required|string|max:255',
            'active_status' => 'required|in:0,1',
        ],[
            'title.required' => 'Please Enter The Title',
            'subcategory_id.required' => 'Please Select The Subcategory',
            'short_description.required' => 'Please Enter The Short Description',
            'photo_alt.required' => 'Please Enter The Photo Alternative',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        if ($request->hasFile('background_photo')) {
            $id = $request->edit_id;

            $photo = Slider::where('id', $id)->value('background_photo');
            File::delete($photo);
            $image = '';
            if ($request->file('background_photo')) {
                $image = uploadPlease($request->file('background_photo'));
            }
    
            $slider = Slider::findOrFail($id)->update([
                'title' => $request->title,
                'subcategory_id' => $request->subcategory_id,
                'short_description' => $request->short_description,
                'background_photo' => $image,
                'photo_alt' =>  $request->photo_alt,
                'active_status' =>  $request->active_status,
                'updated_by' => Auth::id()
            ]);
            if ($slider) {
                return response()->json([
                    'success' => "Slider updated successfully.",
                ]);
            } else {
                return response()->json([
                    'error' => "Opps! Something Went Wrong.",
                ]);
            }
            
        } else {
            $id = $request->edit_id;
            $slider = Slider::findOrFail($id)->update([
                'title' => $request->title,
                'subcategory_id' => $request->subcategory_id,
                'short_description' => $request->short_description,
                'photo_alt' =>  $request->photo_alt,
                'active_status' =>  $request->active_status,
                'updated_by' => Auth::id()
            ]);
            if ($slider) {
                return response()->json([
                    'success' => "Slider updated successfully.",
                ]);
            } else {
                return response()->json([
                    'error' => "Opps! Something Went Wrong.",
                ]);
            }
        }
    }

    // SLIDER UPDATE STATUS
    public function updateSliderStatus($id, $status)
    {
        if ($status == 0) {
            $team = Slider::findOrFail($id)->update([
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
            $team = Slider::findOrFail($id)->update([
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

    // SLIDER DELETE 
    public function deleteSlider($id)
    {
        $photo = Slider::where('id', $id)->value('background_photo');
        File::delete($photo);

        $delete = Slider::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "Slider Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

    // SLIDER DELETE 

    // PRODUCT GUARANTEE START FROM HERE 
    // PRODUCT GUARANTEE INDEX
    public function productIndex()
    {
        $data['guarantees'] = ProductGuarantee::latest()->paginate(10);
        return view('backend.homepage.productGuarantee.GuaranteeIndex', $data);
    }

    // PRODUCT GUARANTEE UPDATE 
    public function storeGuarantee(Request $request)
    {
        $primaryValidate =  [
            'logo_type' => 'required|in:0,1',
            'title' => 'required|string',
            'short_description' => 'required|string',
            'active_status' => 'required|in:0,1',
        ];

        $additionalValidation = [];
        if ($request->logo_type == 1) {
            $additionalValidation = [
                'icon_fw' =>  'required',
            ];
        } else {
            $additionalValidation = [
                'image_logo' =>  'required|image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            ];
        }
        $finalValidate = array_merge($primaryValidate, $additionalValidation );


        Validator::make($request->all(),$finalValidate,[
            'logo_type.required' => 'Please Select Logo Type',
            'title.required' => 'Please Enter The Title',
            'short_description.required' => 'Please Enter The Short Description',
            'active_status.required' =>  'Please Select The Status',
            'image_logo.required' => 'Please Select Image',
            'icon_fw.required' => 'Please Select Icon',
        ])->validate();

        $guarantee = new ProductGuarantee();

        $guarantee->logo_type = $request->logo_type;
        $guarantee->title = $request->title;
        $guarantee->short_description = $request->short_description;
        $guarantee->active_status = $request->active_status;
        $guarantee->created_by = Auth::id();
        if ($request->logo_type == 1) {
            $guarantee->logo = $request->icon_fw;
        } else {
            $image = '';
            if ($request->file('image_logo')) {
                $image = uploadPlease($request->file('image_logo'));
            }
            $guarantee->logo = $image;
        }
        
        if ($guarantee->save()) {
            return response()->json([
                'success' => "Product Guarantee Added successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }

    }

    public function updateGuarantee(Request $request)
    {
        
        $primaryValidate =  [
            'logo_type' => 'required|in:0,1',
            'title' => 'required|string',
            'short_description' => 'required|string',
            'active_status' => 'required|in:0,1',
        ];

        $additionalValidation = [];
        if ($request->logo_type == 1) {
            $additionalValidation = [
                'icon_fw' =>  'required',
            ];
        } else {
            $additionalValidation = [
                'image_logo' =>  'image|mimes:jpeg,png,jpg,gif,svg|max:5120',
            ];
        }
        $finalValidate = array_merge($primaryValidate, $additionalValidation );


        Validator::make($request->all(),$finalValidate,[
            'logo_type.required' => 'Please Select Logo Type',
            'title.required' => 'Please Enter The Title',
            'short_description.required' => 'Please Enter The Short Description',
            'active_status.required' =>  'Please Select The Status',
            'icon_fw.required' => 'Please Select Icon',
        ])->validate();

        $photo = ProductGuarantee::where('id', $request->id_e)->value('logo');
        $logo_type = ProductGuarantee::where('id', $request->id_e)->value('logo_type');

        $guarantee = ProductGuarantee::find($request->id_e);

        $guarantee->logo_type = $request->logo_type;
        $guarantee->title = $request->title;
        $guarantee->short_description = $request->short_description;
        $guarantee->active_status = $request->active_status;
        $guarantee->updated_by = Auth::id();
        if ($request->logo_type == 1) {
            if ($logo_type == 0) {
                $photo = ProductGuarantee::where('id', $request->id_e)->value('logo');
                File::delete($photo);
            } 
            $guarantee->logo = $request->icon_fw;
        } else {
            if ($request->file('image_logo')) {
                if ($logo_type == 0) {
                    $photo = ProductGuarantee::where('id', $request->id_e)->value('logo');
                    File::delete($photo);
                } 
                $image = '';
                if ($request->file('image_logo')) {
                    $image = uploadPlease($request->file('image_logo'));
                }
                $guarantee->logo = $image;
            }
            
        }
        
        if ($guarantee->save()) {
            return response()->json([
                'success' => "Product Guarantee Updated successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function deleteGuarantee($id)
    {
        $logo_type = ProductGuarantee::where('id', $id)->value('logo_type');
        if ($logo_type == 0) {
            $photo = ProductGuarantee::where('id', $id)->value('logo');
            File::delete($photo);
        }
       

        $delete = ProductGuarantee::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "Gurantee Item Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

    // SLIDER UPDATE STATUS
    public function updateGuaranteeStatus($id, $status)
    {
        if ($status == 0) {
            $team = ProductGuarantee::findOrFail($id)->update([
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
            $team = ProductGuarantee::findOrFail($id)->update([
                'active_status' =>  '0',
                'updated_by' => Auth::id()
            ]);

            if ($team == true) {
                $notification = [
                    'success' => "Status Inactivated Successfully.",
                ];
            } else {
                $notification = [
                    'error' => "Opps! There Is A Problem!",
                ];
            }
            return back()->with($notification);
        } 
    }



}
