<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\DefaultSend;
use App\Mail\ReciveMail;
use App\Mail\SenMail;
use App\Models\CustomerMessage;
use App\Models\CustomerSmsDefault;
use App\Models\SendMsgCustomer;
use App\Models\SmsTemplete;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Validator;
use SebastianBergmann\Template\Template;

class CustomerMessageController extends Controller
{
    // store customer contact
    public function storeCustomerMessage(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'name' => 'required|string|max:255',
                'email' => 'required|string|email',
                'message' => 'required|string',
            ],
            [
                'name.required' => 'Please Enter The Name',
                'email.required' => 'Please Enter The Email',
                'message.required' => 'Please Enter The Message',
            ],
        )->validate();

        $message = new CustomerMessage();
        $message->name = $request->name;
        $message->email = $request->email;
        $message->message = $request->message;
        $message->created_by = Auth::id();
        $message->save();

        //mail content to admin
        $data = [
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message,
        ];
        Mail::to('islammahfuzul31@gmail.com')->send(new ReciveMail($data));

        // mail content to user
        $default_sms = CustomerSmsDefault::where('active_status', 1)->first();
        $default_data = [
            'name' => $request->name,
            'subject' => $default_sms->subject,
            'message' => $default_sms->message,
            'visit_link' => $default_sms->visit_link,
        ];
        Mail::to($request->email)->send(new DefaultSend($default_data));

        if ($message) {
            return response()->json([
                'success' => 'Message Send To Admin successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // view customer message  in admin dashboard
    public function customerContact(Request $request)
    {
        $search = $request->search;
        $data['messages'] = CustomerMessage::latest()
            ->when($search !== null, function ($query) use ($search) {
                return $query->where('name', 'LIKE', "%{$search}%")->orWhere('email', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        // $data['messages'] = CustomerMessage::latest()->paginate(15);
        $data['msg_count_send'] = SendMsgCustomer::count();
        $data['msg_count_inbox'] = CustomerMessage::count();
        $data['templetes'] = SmsTemplete::latest()->get();
        return view('backend.customerContact.inbox', $data);
    }

    // view indivudual message  in admin dashboard
    public function individualMessage($id)
    {
        $data['msg_count_send'] = SendMsgCustomer::count();
        $data['msg_count_inbox'] = CustomerMessage::count();
        $data['single_msg'] = CustomerMessage::findOrFail($id);
        return view('backend.customerContact.individualMsg', $data);
    }

    public function individualSent($id)
    {
        $data['msg_count_send'] = SendMsgCustomer::count();
        $data['msg_count_inbox'] = CustomerMessage::count();
        $data['single_msg'] = SendMsgCustomer::findOrFail($id);
        return view('backend.customerContact.individualMsg', $data);
    }

    // Update Contact  in admin dashboard
    public function updatContactStatus($id, $status)
    {
        if ($status == 0) {
            $policy = CustomerMessage::findOrFail($id)->update([
                'active_status' => '1',
                'updated_by' => Auth::id(),
            ]);

            if ($policy == true) {
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
            $policy = CustomerMessage::findOrFail($id)->update([
                'active_status' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($policy == true) {
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

    // delete customer message  in admin dashboard
    public function deleteCustomerMessage(Request $request)
    {
        foreach ($request->ids as $id) {
            $delete = CustomerMessage::findOrFail($id)->delete();
        }
        if ($delete) {
            return response()->json([
                'success' => 'Customer Message Deleted successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // sms templete
    public function smsTemplete(Request $request)
    {
        $search = $request->search;
        $data['templetes'] = SmsTemplete::latest()
            ->when($search !== null, function ($query) use ($search) {
                return $query->where('templete_name', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        // $data['templetes'] = SmsTemplete::latest()->paginate(10);
        return view('backend.SmsTemplete.smsTempleteIndex', $data);
    }

    // Store SMS Templete
    public function storeSmsTemplete(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'templete_name' => 'required|string|unique:sms_templetes',
                'subject' => 'required',
                'visit_link' => 'required|string',
                'message' => 'required|string',
                'active_status' => 'required|in:0,1',
            ],
            [
                'templete_name.required' => 'Please Enter The Templete Name',
                'subject.required' => 'Please Enter The Subject',
                'visit_link.required' => 'Please Input The Visit Link',
                'message.required' => 'Please Enter The Message',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $templete = new SmsTemplete();

        $templete->templete_name = $request->templete_name;
        $templete->subject = $request->subject;
        $templete->visit_link = $request->visit_link;
        $templete->message = $request->message;
        $templete->active_status = $request->active_status;
        $templete->created_by = Auth::id();

        if ($templete->save()) {
            return response()->json([
                'success' => 'SMS Templete Saved Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // update SMS Templete
    public function updateSmsTemplete(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'templete_name' => 'required|string|max:100',
                'subject' => 'required|max:100',
                'visit_link' => 'required|string',
                'message' => 'required|string',
                'active_status' => 'required|in:0,1',
            ],
            [
                'templete_name.required' => 'Please Enter The Templete Name',
                'subject.required' => 'Please Enter The Subject',
                'visit_link.required' => 'Please Input The Visit Link',
                'message.required' => 'Please Enter The Message',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $templete = SmsTemplete::findOrFail($request->edit_id);

        $templete->templete_name = $request->templete_name;
        $templete->subject = $request->subject;
        $templete->visit_link = $request->visit_link;
        $templete->message = $request->message;
        $templete->active_status = $request->active_status;
        $templete->updated_by = Auth::id();

        if ($templete->save()) {
            return response()->json([
                'success' => 'SMS Templete Updated Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // Update Templete Status
    public function updatTempleteStatus($id, $status)
    {
        if ($status == 0) {
            $policy = SmsTemplete::findOrFail($id)->update([
                'active_status' => '1',
                'updated_by' => Auth::id(),
            ]);

            if ($policy == true) {
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
            $policy = SmsTemplete::findOrFail($id)->update([
                'active_status' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($policy == true) {
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

    // delete SMS Templete
    public function deleteTemplete($id)
    {
        $delete = SmsTemplete::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => 'SMS Templete Deleted Successfully.',
            ];
        } else {
            $notification = [
                'error' => 'Opps! There Is A Problem!',
            ];
        }

        return back()->with($notification);
    }

    //get templete
    public function getTemplete($id)
    {
        $templete = SmsTemplete::findOrFail($id);
        if ($templete) {
            return response()->json([
                'status' => 200,
                'templete' => $templete,
            ]);
        } else {
            return response()->json([
                'status' => 200,
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function getEmails(Request $request)
    {
        $emails = CustomerMessage::whereIn('id', $request->ids)
            ->where('active_status', 1)
            ->select('email')
            ->get();

        session(['emails' => json_encode($emails)]);
        return response()->json([
            'status' => 200,
        ]);
    }

    public function sendMsgCustomer(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'templete_name' => 'required|string',
                'subject' => 'required|max:100',
                'visit_link' => 'required',
                'message' => 'required',
            ],
            [
                'templete_name.required' => 'Please Enter The Templete Name',
                'subject.required' => 'Please Enter The Subject',
                'visit_link.required' => 'Please Input The Visit Link',
                'message.required' => 'Please Enter The Message',
            ],
        )->validate();

        $emails = json_decode(session('emails'), true);
        $user_data = [
            'subject' => $request->subject,
            'message' => $request->message,
            'visit_link' => $request->visit_link,
        ];

        foreach ($emails as $email) {
            $send = new SendMsgCustomer();
            $send->email = $email['email'];
            $send->templete_name = $request->templete_name;
            $send->subject = $request->subject;
            $send->visit_link = $request->visit_link;
            $send->message = $request->message;
            $send->created_by = Auth::id();
            $send->save();
            Mail::to($email)->send(new SenMail($user_data));
        }

        return response()->json([
            'success' => 'SMS Send To Customers Successfully.',
        ]);
    }

    public function sendMailIndex(Request $request)
    {
        $search = $request->search;
        $data['messages'] = SendMsgCustomer::latest()
            ->when($search !== null, function ($query) use ($search) {
                return $query->where('email', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        $data['msg_count_send'] = SendMsgCustomer::count();
        $data['msg_count_inbox'] = CustomerMessage::count();
        // $data['messages'] = SendMsgCustomer::latest()->paginate(15);
        return view('backend.customerContact.sendIndes', $data);
    }

    public function deleteSentMessage(Request $request)
    {
        foreach ($request->ids as $id) {
            $delete = SendMsgCustomer::findOrFail($id)->delete();
        }
        if ($delete) {
            return response()->json([
                'success' => 'Customer Message Deleted successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    //DEFAULT SMS FOR CUSTOMER

    public function defaultSms(Request $request)
    {
        $search = $request->search;
        $data['default_sms'] = CustomerSmsDefault::latest()
            ->when($search !== null, function ($query) use($search) {
                return $query->where('subject', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        $data['templetes'] = SmsTemplete::latest()->get();
        // $data['default_sms'] = CustomerSmsDefault::latest()->paginate('10');
        return view('backend.customerContact.defaultSms', $data);
    }

    public function storeDefaultSms(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'subject' => 'required',
                'visit_link' => 'required|string',
                'message' => 'required|string',
                'active_status' => 'required|in:0,1',
            ],
            [
                'subject.required' => 'Please Enter The Subject',
                'visit_link.required' => 'Please Input The Visit Link',
                'message.required' => 'Please Enter The Message',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $templete = new CustomerSmsDefault();

        $templete->templete_id = $request->templete_id;
        $templete->subject = $request->subject;
        $templete->visit_link = $request->visit_link;
        $templete->message = $request->message;
        $templete->active_status = $request->active_status;
        $templete->created_by = Auth::id();

        if ($request->active_status == 1) {
            CustomerSmsDefault::Where('active_status', 1)
                ->where('id', '!=', $templete->id)
                ->update(['active_status' => 0]);
        }

        if ($templete->save()) {
            return response()->json([
                'success' => 'SMS Templete Saved Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function updateDefaultSms(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'subject' => 'required',
                'visit_link' => 'required|string',
                'message' => 'required|string',
                'active_status' => 'required|in:0,1',
            ],
            [
                'subject.required' => 'Please Enter The Subject',
                'visit_link.required' => 'Please Input The Visit Link',
                'message.required' => 'Please Enter The Message',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

        $templete = CustomerSmsDefault::findOrFail($request->edit_id);

        $templete->templete_id = $request->templete_id;
        $templete->subject = $request->subject;
        $templete->visit_link = $request->visit_link;
        $templete->message = $request->message;
        $templete->active_status = $request->active_status;
        $templete->created_by = Auth::id();

        if ($request->active_status == 1) {
            CustomerSmsDefault::Where('active_status', 1)
                ->where('id', '!=', $templete->id)
                ->update(['active_status' => 0]);
        }

        if ($templete->save()) {
            return response()->json([
                'success' => 'Default Templete Updated Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function deleteDefault($id)
    {
        $delete = CustomerSmsDefault::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => 'Customer SMS Default Deleted Successfully.',
            ];
        } else {
            $notification = [
                'error' => 'Opps! There Is A Problem!',
            ];
        }

        return back()->with($notification);
    }

    public function updatDefaultStatus($id, $status)
    {
        if ($status == 0) {
            $team = CustomerSmsDefault::findOrFail($id)->update([
                'active_status' => '1',
                'updated_by' => Auth::id(),
            ]);

            CustomerSmsDefault::Where('active_status', 1)
                ->where('id', '!=', $id)
                ->update(['active_status' => 0]);

            if ($team == true) {
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
            $team = CustomerSmsDefault::findOrFail($id)->update([
                'active_status' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($team == true) {
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
}
