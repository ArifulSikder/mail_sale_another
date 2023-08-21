<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\SetEmail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
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
        Validator::make(
            $request->all(),
            [
                'mailer' => 'required|string',
                'host' => 'required|string',
                'port' => 'required|numeric',
                'username' => 'required|string',
                'password' => 'required|string',
                'encription' => 'required|string',
                'address' => 'required|string',
                'name' => 'required|string',
                'active_status' => 'required|in:0,1',
            ],
            [
                'mailer.required' => 'Please Enter The Mailer',
                'host.required' => 'Please Enter The Host',
                'port.required' => 'Please Enter The Port',
                'username.required' => 'Please Enter The User Name',
                'password.required' => 'Please Enter The Password',
                'encription.required' => 'Please Enter The Encription',
                'address.required' => 'Please Enter The Address',
                'name.required' => 'Please Enter The Name',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

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
        $setMail->save();
     
        if ($request->active_status == 1) {
            SetEmail::Where('active_status', 1)
                ->where('id', '!=', $setMail->id)
                ->update(['active_status' => 0]);
            $this->setEnvMailer($setMail);
        }

        Artisan::call('config:clear');

        if ($setMail) {
            return response()->json([
                'success' => 'Mail Saved Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function updateEmail(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'mailer' => 'required|string',
                'host' => 'required|string',
                'port' => 'required|numeric',
                'username' => 'required|string',
                'password' => 'required|string',
                'encription' => 'required|string',
                'address' => 'required|string',
                'name' => 'required|string',
                'active_status' => 'required|in:0,1',
            ],
            [
                'mailer.required' => 'Please Enter The Mailer',
                'host.required' => 'Please Enter The Host',
                'port.required' => 'Please Enter The Port',
                'username.required' => 'Please Enter The User Name',
                'password.required' => 'Please Enter The Password',
                'encription.required' => 'Please Enter The Encription',
                'address.required' => 'Please Enter The Address',
                'name.required' => 'Please Enter The Name',
                'active_status.required' => 'Please Select The Status',
            ],
        )->validate();

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
                'success' => 'Mail Updated Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function updatEmailStatus($id, $status)
    {
        if ($status == 0) {
            $setMail = SetEmail::findOrFail($id);
            $setMail->update([
                'active_status' => '1',
                'updated_by' => Auth::id(),
            ]);

            if ($status == 0) {
                SetEmail::Where('active_status', 1)
                    ->where('id', '!=', $setMail->id)
                    ->update(['active_status' => 0]);
                $this->setEnvMailer($setMail);
            }

            if ($setMail == true) {
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
            $setMail = SetEmail::findOrFail($id);
            $setMail->update([
                'active_status' => '0',
                'updated_by' => Auth::id(),
            ]);

            if ($setMail == true) {
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

    public function deleteEmail($id)
    {
        $delete = SetEmail::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => 'Email Data Deleted Successfully.',
            ];
        } else {
            $notification = [
                'error' => 'Opps! There Is A Problem!',
            ];
        }

        return back()->with($notification);
    }

    public function setEnvMailer($data)
    {
        $envFile = app()->environmentFilePath();
        $content = file_get_contents($envFile);
      
        $replacements = [
            'MAIL_MAILER' => $data->mailer,
            'MAIL_HOST' => $data->host,
            'MAIL_PORT' => $data->port,
            'MAIL_USERNAME' => $data->username,
            'MAIL_PASSWORD' => $data->password,
            'MAIL_ENCRYPTION' => $data->encription,
            'MAIL_FROM_ADDRESS' => $data->address,
            'MAIL_FROM_NAME' => $data->name,
        ];

        foreach ($replacements as $key => $newValue) {
            $content = preg_replace("/^{$key}=.*/m", "{$key}={$newValue}", $content);
        }

        file_put_contents($envFile, $content);
        return;
    }
}
