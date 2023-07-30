<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\HomePaveshop;
use App\Models\MeetTeam;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Validator;

class HomePageController extends Controller
{
    public function index()
    {
        return view('backend.homepage.homepaveshop.add-details');
    }

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

    public function showDetails()
    {
        $data['details']= HomePaveshop::paginate(10);
        return view('backend.homepage.homepaveshop.indexPaveshop', $data);
    }

    public function editDetails($id)
    {
        $data['details_pev'] = HomePaveshop::findOrFail($id); 
        return view('backend.homepage.homepaveshop.edit-paveshop', $data);
    }
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

    // MEET TEAM 
    public function meetTeam()
    {
        $data['members'] = MeetTeam::paginate(10);
        return view('backend.homepage.team.indexTeam', $data );
    }



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

    public function editTeam($id)
    {
        $team_member = MeetTeam::findOrFail($id);
        if ($team_member) {
            return response()->json([
                'status' => 200,
                'team_member' => $team_member
            ]);
        } else {
            return response()->json([
                'status' => 404,
                'message' => 'Team member not found',
            ]);
        }
        
    }

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

    public function deleteTeam($id)
    {
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


}
