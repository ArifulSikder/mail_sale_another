<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\ReciveMail;
use App\Mail\SenMail;
use App\Models\CustomerMessage;
use App\Models\SmsTemplete;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;

class CustomerMessageController extends Controller
{
    // store customer contact 
    public function storeCustomerMessage(Request $request)
    {
        Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email',
            'message' => 'required|string',
        ],[
            'name.required' => 'Please Enter The Name',
            'email.required' => 'Please Enter The Email',
            'message.required' => 'Please Enter The Message',
        ])->validate();

        $message = new CustomerMessage();  
        $message->name = $request->name;
        $message->email = $request->email;
        $message->message = $request->message;
        $message->created_by = Auth::id();
        $message->save();

        //mail content to admin
        $data = array(
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message,
        );
        Mail::to('islammahfuzul31@gmail.com')->send(new ReciveMail($data));
        
        // mail content to user 
        $user_data = array(
            'name' => $request->name,
            'email' => 'islammahfuzul31@gmail.com',
            'link' => 'https://laravel.com/docs/9.x/mail',
        );
        Mail::to($request->email)->send(new SenMail($user_data));
            
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

    // view customer message  in admin dashboard
    public function customerContact()
    {
        $data['msg_count'] = CustomerMessage::count();
        $data['messages'] = CustomerMessage::latest()->paginate(15);
        return view('backend.customerContact.inbox', $data);
    }

    // view indivudual message  in admin dashboard
    public function individualMessage($id)
    {
        $data['single_msg'] = CustomerMessage::findOrFail($id);
        return view('backend.customerContact.individualMsg', $data);
    }

    // Update Contact  in admin dashboard
    public function updatContactStatus($id, $status)
    {
        if ($status == 0) {
            $policy = CustomerMessage::findOrFail($id)->update([
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
            $policy = CustomerMessage::findOrFail($id)->update([
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

    // delete customer message  in admin dashboard
    public function deleteCustomerMessage(Request $request)
    {
        
        foreach ($request->ids as $id) {
            $delete = CustomerMessage::findOrFail($id)->delete();
        }
        if ($delete) {
            return response()->json([
                'success' => "Customer Message Deleted successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    // sms templete 
    public function smsTemplete()
    {
        $data['templetes'] = SmsTemplete::latest()->paginate(15);
        return view('backend.SmsTemplete.smsTempleteIndex', $data);
    }

     // Store SMS Templete 
     public function storeSmsTemplete(Request $request)
     {
        Validator::make($request->all(), [
            'templete_name' => 'required|string|max:100',
            'subject' => 'required|max:100',
            'visit_link' => 'required|string',
            'message' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'templete_name.required' => 'Please Enter The Templete Name',
            'subject.required' => 'Please Enter The Subject',
            'visit_link.required' => 'Please Input The Visit Link',
            'message.required' => 'Please Enter The Message',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $templete = new SmsTemplete();

        $templete->templete_name = $request->templete_name;
        $templete->subject = $request->subject;
        $templete->visit_link = $request->visit_link;
        $templete->message = $request->message;
        $templete->active_status = $request->active_status;
        $templete->created_by = Auth::id();

        if ($templete->save()) {
            return response()->json([
                'success' => "SMS Templete Saved Successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
     }

     // update SMS Templete 
     public function updateSmsTemplete(Request $request)
     {
        Validator::make($request->all(), [
            'templete_name' => 'required|string|max:100',
            'subject' => 'required|max:100',
            'visit_link' => 'required|string',
            'message' => 'required|string',
            'active_status' =>  'required|in:0,1',
        ],[
            'templete_name.required' => 'Please Enter The Templete Name',
            'subject.required' => 'Please Enter The Subject',
            'visit_link.required' => 'Please Input The Visit Link',
            'message.required' => 'Please Enter The Message',
            'active_status.required' =>  'Please Select The Status',
        ])->validate();

        $templete = SmsTemplete::findOrFail($request->edit_id);

        $templete->templete_name = $request->templete_name;
        $templete->subject = $request->subject;
        $templete->visit_link = $request->visit_link;
        $templete->message = $request->message;
        $templete->active_status = $request->active_status;
        $templete->updated_by = Auth::id();

        if ($templete->save()) {
            return response()->json([
                'success' => "SMS Templete Updated Successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
     }

     // Update Templete Status
    public function updatTempleteStatus($id, $status)
    {
        if ($status == 0) {
            $policy = SmsTemplete::findOrFail($id)->update([
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
            $policy = SmsTemplete::findOrFail($id)->update([
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

    // delete SMS Templete
    public function deleteTemplete($id)
    {

        $delete = SmsTemplete::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => "SMS Templete Deleted Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }

        return back()->with($notification);
    }

}
