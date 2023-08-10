<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\BusinessPolicy;
use App\Models\Category;
use App\Models\FAQ;
use App\Models\FAQCategory;
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
    // HOME PAVESHOP SHOW  
    public function showDetails()
    {
        $data['details']= HomePaveshop::latest()->paginate(10);
        return view('backend.homepage.homepaveshop.indexPaveshop', $data);
    }

    // HOME PAVESHOP STORE 
    public function storeDetails(Request $request)
    {

        Validator::make($request->all(), [
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

  


    // HOME PAVESHOP UPDATE  
    public function updateDetails(Request $request)
    {
        Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'title.required' => 'Please Enter The Title',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        
        $homePabeshop = HomePaveshop::findOrFail($request->edit_e)->update([
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
        Validator::make($request->all(), [
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
        Validator::make($request->all(), [
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
    // START TOP SLIDER INDEX PAGE 
    public function sliderIndex()
    {
        $data['subcategories'] = Category::all();
        $data['sliders'] = Slider::latest()->paginate(10);
        return view('backend.homepage.slider.sliderIndex', $data);
    }

    // SLIDER STORE 
    public function storeSlider(Request $request)
    {
        Validator::make($request->all(), [
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
        Validator::make($request->all(), [
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

    // PRODUCT GUARANTEE STORE 
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

    // PRODUCT GUARANTEE UPDATE 
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

    // PRODUCT GUARANTEE DELETE 
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

    // PRODUCT GUARANTEE UPDATE STATUS
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

    // BUSINESS POLICY START 
    // BUSINESS POLICY INDEX
    public function addPolicy()
    {
        return view('backend.homepage.businessPolicy.add-policy');
    }

    // BUSINESS POLICY STORE
    public function storePolicy(Request  $request)
    {
        Validator::make($request->all(), [
            'policy_type' => 'required',
            'description' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'policy_type.required' => 'Please Select The Business Policy',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $policy = BusinessPolicy::create([
            'policy_type' => $request->policy_type,
            'description' => $request->description,
            'active_status' =>  $request->active_status,
            'created_by' => Auth::id()
        ]);

        if ($policy) {
            return response()->json([
                'success' => "Business Policy saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function indexPolicy()
    {
        $data['polices']= BusinessPolicy::latest()->paginate(10);
        return view('backend.homepage.businessPolicy.indexPolices', $data);
    }

    public function editPolicy($id)
    {
        $data['policy'] = BusinessPolicy::findOrFail($id); 
        return view('backend.homepage.businessPolicy.edit-policy', $data);
    }

    public function updatePolicy(Request $request)
    {
        Validator::make($request->all(), [
            'policy_type' => 'required',
            'description' => 'required',
            'active_status' =>  'required|in:0,1',
        ],[
            'policy_type.required' => 'Please Select The Business Policy',
            'description.required' => 'Please Enter The Description',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        
        $policy = BusinessPolicy::findOrFail($request->id)->update([
            'policy_type' => $request->policy_type,
            'description' => $request->description,
            'active_status' =>  $request->active_status,
            'updated_by' => Auth::id()
        ]);

        if ($policy) {
            return response()->json([
                'success' => "Business Policy Updated successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function updatePolicyStatus($id, $status)
    {
        if ($status == 0) {
            $policy = BusinessPolicy::findOrFail($id)->update([
                'active_status' =>  '1',
                'updated_by' => Auth::id()
            ]);

            if ($policy == true) {
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
            $policy = BusinessPolicy::findOrFail($id)->update([
                'active_status' =>  '0',
                'updated_by' => Auth::id()
            ]);

            if ($policy == true) {
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

    public function deletePolicy($id)
    {
        $delete = BusinessPolicy::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "Policy Item Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

    // FAQ Category Start 
    public function addFaqCategory()
    {
        $data['categories'] = FAQCategory::latest()->paginate(10);
        return view('backend.homepage.faq.faqIndex', $data);
    }


    // FAQ category store 
    public function storeFaqCategory(Request $request)
    {
        Validator::make($request->all(), [
            'category_title' => 'required|string|max:255|unique:f_a_q_categories',
            'category_logo' => 'required|image|mimes:jpeg,png,jpg,gif,svg,webp|max:5120',
            'logo_alt' => 'required|string|max:255',
            'active_status' =>  'required|in:0,1',
        ],[
            'category_title.required' => 'Please Enter The Category Title',
            'category_logo.required' => 'Please Select The Logo',
            'logo_alt.required' => 'Please Enter The Logo Alt',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $image = '';
        if ($request->file('category_logo')) {
            $image = uploadPlease($request->file('category_logo'));
        }

        $category = FAQCategory::create([
            'category_title' => $request->category_title,
            'category_logo' => $image,
            'active_status' =>  $request->active_status,
            'logo_alt' =>  $request->logo_alt,
            'created_by' => Auth::id()
        ]);

        if ($category) {
            return response()->json([
                'success' => "FAQ Category saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // FAQ category update 
    public function updateFaqCategory(Request $request)
    {
        Validator::make($request->all(), [
            'category_title' => 'required|string|max:255',
            'category_logo' => 'image|mimes:jpeg,png,jpg,gif,svg,webp|max:5120',
            'logo_alt' => 'required|string|max:255',
            'active_status' =>  'required|in:0,1',
        ],[
            'category_title.required' => 'Please Enter The Category Title',
            'logo_alt.required' => 'Please Enter The Logo Alt',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $category = FAQCategory::findOrFail($request->edit_id);
        $category->category_title = $request->category_title;
        $category->logo_alt = $request->logo_alt;
        $category->active_status = $request->active_status;
        $category->updated_by = Auth::id();

        $image = '';
        if ($request->file('category_logo')) {
            $photo = FAQCategory::where('id', $request->edit_id)->value('category_logo');
            File::delete($photo);
            $image = uploadPlease($request->file('category_logo'));
            $category->category_logo = $image;
        }
    
        if ($category->save()) {
            return response()->json([
                'success' => "FAQ Category Updated successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // FAQ category update status 
    public function updatFaqStatus($id, $status)
    {
        if ($status == 0) {
            $policy = FAQCategory::findOrFail($id)->update([
                'active_status' =>  '1',
                'updated_by' => Auth::id()
            ]);

            if ($policy == true) {
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
            $policy = FAQCategory::findOrFail($id)->update([
                'active_status' =>  '0',
                'updated_by' => Auth::id()
            ]);

            if ($policy == true) {
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

    // FAQ category delete 
    public function deleteFaqCategory($id)
    {
        $delete = FAQCategory::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "FAQ Category Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

    // FAQ Questions 
    public function addFaqQuestion($cat_id)
    {
        $data['category'] = FAQCategory::findOrFail($cat_id);
        $data['faqs'] = FAQ::where('category_id', $cat_id)->get();
        return view('backend.homepage.faq.faqQuestions', $data);
        // return $data['faqs'];
        // return $cat_id;
    }

    // FAQ Questions  store
    public function StoreFaqQuestion(Request $request)
    {
        Validator::make($request->all(), [
            'category_id' => 'required|numeric',
            'question' => 'required|string',
            'answer' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'category_id.required' => 'Please Enter The Category Title',
            'question.required' => 'Please Enter The Question',
            'answer.required' => 'Please Enter The Answer',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $faq = new FAQ();  
        $faq->category_id = $request->category_id;
        $faq->question = $request->question;
        $faq->answer = $request->answer;
        $faq->active_status = $request->active_status;
        $faq->created_by = Auth::id();

        if ($faq->save()) {
            return response()->json([
                'success' => "FAQ saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // FAQ Questions Update
    public function updateFaqQuestion(Request $request)
    {
        Validator::make($request->all(), [
            'category_id' => 'required|numeric',
            'question' => 'required|string',
            'answer' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'category_id.required' => 'Please Enter The Category Title',
            'question.required' => 'Please Enter The Question',
            'answer.required' => 'Please Enter The Answer',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $id = $request->edit_id;
        $faq = FAQ::findOrFail($id);

        $faq->category_id = $request->category_id;
        $faq->question = $request->question;
        $faq->answer = $request->answer;
        $faq->active_status = $request->active_status;
        $faq->updated_by = Auth::id();

        if ($faq->save()) {
            return response()->json([
                'success' => "FAQ saved successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // FAQ Question update status 
    public function updatFaqQuesStatus($id, $status)
    {
        if ($status == 0) {
            $policy = FAQ::findOrFail($id)->update([
                'active_status' =>  '1',
                'updated_by' => Auth::id()
            ]);

            if ($policy == true) {
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
            $policy = FAQ::findOrFail($id)->update([
                'active_status' =>  '0',
                'updated_by' => Auth::id()
            ]);

            if ($policy == true) {
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

    // FAQ category delete 
    public function deleteFaqQues($id)
    {
        $delete = FAQ::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "FAQ Item Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

    
}
