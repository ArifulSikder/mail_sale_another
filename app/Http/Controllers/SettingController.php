<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\SetEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class SettingController extends Controller
{
    public function setEmail()
    {
        $data['email_data'] = SetEmail::latest()->paginate();
        return view('backend.env.emailIndex', $data);
    }

    public function storeEmail(Request $request)
    {
        Validator::make($request->all(), [
            'mailer' => 'required|string',
            'host' => 'required|string',
            'port' => 'required|numeric',
            'username' => 'required|string',
            'password' => 'required|string',
            'encription' => 'required|string',
            'address' => 'required|string',
            'name' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'mailer.required' => 'Please Enter The Mailer',
            'host.required' => 'Please Enter The Host',
            'port.required' => 'Please Enter The Port',
            'username.required' => 'Please Enter The User Name',
            'password.required' => 'Please Enter The Password',
            'encription.required' => 'Please Enter The Encription',
            'address.required' => 'Please Enter The Address',
            'name.required' => 'Please Enter The Name',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $setMail = new SetEmail();
        $setMail->mailer = $request->mailer;
        $setMail->host = $request->host;
        $setMail->port = $request->port;
        $setMail->username = $request->username;
        $setMail->password = $request->password;
        $setMail->encription = $request->encription;
        $setMail->address = $request->address;
        $setMail->name = $request->name;
        $setMail->active_status = $request->active_status;
        $setMail->created_by = Auth::id();

        if ($setMail->save()) {
            return response()->json([
                'success' => "Mail Saved Successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function updateEmail(Request $request)
    {
        Validator::make($request->all(), [
            'mailer' => 'required|string',
            'host' => 'required|string',
            'port' => 'required|numeric',
            'username' => 'required|string',
            'password' => 'required|string',
            'encription' => 'required|string',
            'address' => 'required|string',
            'name' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'mailer.required' => 'Please Enter The Mailer',
            'host.required' => 'Please Enter The Host',
            'port.required' => 'Please Enter The Port',
            'username.required' => 'Please Enter The User Name',
            'password.required' => 'Please Enter The Password',
            'encription.required' => 'Please Enter The Encription',
            'address.required' => 'Please Enter The Address',
            'name.required' => 'Please Enter The Name',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $setMail = SetEmail::findOrFail($request->edit_id);
        $setMail->mailer = $request->mailer;
        $setMail->host = $request->host;
        $setMail->port = $request->port;
        $setMail->username = $request->username;
        $setMail->password = $request->password;
        $setMail->encription = $request->encription;
        $setMail->address = $request->address;
        $setMail->name = $request->name;
        $setMail->active_status = $request->active_status;
        $setMail->created_by = Auth::id();

        if ($setMail->save()) {
            return response()->json([
                'success' => "Mail Updated Successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function updatEmailStatus($id, $status)
    {
        if ($status == 0) {
            $about = SetEmail::findOrFail($id)->update([
                'active_status' =>  '1',
                'updated_by' => Auth::id()
            ]);

            if ($about == true) {
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
            $about = SetEmail::findOrFail($id)->update([
                'active_status' =>  '0',
                'updated_by' => Auth::id()
            ]);

            if ($about == true) {
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

    public function deleteEmail($id)
    {
        $delete = SetEmail::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "Email Data Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }
}
