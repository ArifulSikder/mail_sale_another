<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\PaymentApi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;

class PaymentApiController extends Controller
{
    public function payApiList(Request $request)
    {
        $search = $request->search;
        $data['api_list'] = PaymentApi::orderBy('payment_type', 'DESC')
            ->when($search !== null, function ($query) use($search) {
                return $query->where('mode', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        // $data['api_list'] = PaymentApi::orderBy('payment_type', 'DESC')->orderBy('mode', 'DESC')->paginate(15);
        return view('backend.payment.apiList', $data);
    }

    public function storePayApi(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'payment_type' => 'required|in:1,2',
                'mode' => 'required|in:1,2',
                'client_id' => 'required|string|max:255',
                'client_secret' => 'required|string|max:255',
                'app_id' => 'required|string|max:255',
                'active_status' => 'required|in:0,1',
            ],
            [
                'payment_type.required' => 'Please Select The Payment Type',
                'mode.required' => 'Please Select The Mode',
                'client_id.required' => 'Please Enter The Client ID',
                'client_secret.required' => 'Please Enter The Client Secret',
                'app_id.required' => 'Please Enter The App ID',
                'active_status.required' => 'Please Select The Active Status',
            ],
        )->validate();

        $api = new PaymentApi();
        $api->payment_type = $request->payment_type;
        $api->mode = $request->mode;
        $api->client_id = $request->client_id;
        $api->client_secret = $request->client_secret;
        $api->app_id = $request->app_id;
        $api->active_status = $request->active_status;
        $api->created_by = Auth::id();

        if ($request->payment_type == 1) {
            if ($request->active_status == 1) {
                PaymentApi::Where('active_status', 1)
                    ->where('id', '!=', $api->id)
                    ->where('payment_type', 1)
                    ->update(['active_status' => 0]);

                $this->setEnvStripe($api);
            }
        } else {
            if ($request->active_status == 1) {
                PaymentApi::Where('active_status', 1)
                    ->where('id', '!=', $api->id)
                    ->where('payment_type', 2)
                    ->update(['active_status' => 0]);

                $this->setEnvPaypal($api);
            }
        }

        if ($api->save()) {
            return response()->json([
                'success' => 'Paymet API Added Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function updatePayApi(Request $request)
    {
        Validator::make(
            $request->all(),
            [
                'payment_type' => 'required|in:0,1',
                'mode' => 'required|in:0,1',
                'client_id' => 'required|string|max:255',
                'client_secret' => 'required|string|max:255',
                'app_id' => 'required|string|max:255',
                'active_status' => 'required|in:0,1',
            ],
            [
                'payment_type.required' => 'Please Select The Payment Type',
                'mode.required' => 'Please Select The Mode',
                'client_id.required' => 'Please Enter The Client ID',
                'client_secret.required' => 'Please Enter The Client Secret',
                'app_id.required' => 'Please Enter The App ID',
                'active_status.required' => 'Please Select The Active Status',
            ],
        )->validate();

        $api = PaymentApi::findOrFail($request->edit_id);
        $api->payment_type = $request->payment_type;
        $api->mode = $request->mode;
        $api->client_id = $request->client_id;
        $api->client_secret = $request->client_secret;
        $api->app_id = $request->app_id;
        $api->active_status = $request->active_status;
        $api->updated_by = Auth::id();

        if ($api->save()) {
            return response()->json([
                'success' => 'Paymet API Updated Successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    // payment api update status
    public function updatApiStatus($id, $status)
    {
        if ($status == 0) {
            $policy = PaymentApi::findOrFail($id)->update([
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
            $policy = PaymentApi::findOrFail($id)->update([
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

    // delete pay api
    public function deletePayapi($id)
    {
        $delete = PaymentApi::findOrFail($id)->delete();

        if ($delete == true) {
            $notification = [
                'success' => 'Payment API Deleted Successfully.',
            ];
        } else {
            $notification = [
                'error' => 'Opps! There Is A Problem!',
            ];
        }

        return back()->with($notification);
    }

    public function setEnvStripe($data)
    {
        $envFile = app()->environmentFilePath();
        $content = file_get_contents($envFile);

        $replacements = [
            'STRIPE_KEY' => $data->client_id,
            'STRIPE_SECRET' => $data->client_secret,
        ];

        foreach ($replacements as $key => $newValue) {
            $content = preg_replace("/^{$key}=.*/m", "{$key}={$newValue}", $content);
        }

        file_put_contents($envFile, $content);
        return;
    }

    public function setEnvPaypal($data)
    {
        $envFile = app()->environmentFilePath();
        $content = file_get_contents($envFile);

        if ($data->mode == 1) {
            //sendbox
            $replacements = [
                'PAYPAL_MODE' => 'sendbox',
                'PAYPAL_SANDBOX_CLIENT_ID' => $data->client_id,
                'PAYPAL_SANDBOX_CLIENT_SECRET' => $data->client_secret,
            ];
        } else {
            //live
            $replacements = [
                'PAYPAL_MODE' => 'live',
                'PAYPAL_LIVE_CLIENT_ID' => $data->client_id,
                'PAYPAL_LIVE_CLIENT_SECRET' => $data->client_secret,
                'PAYPAL_LIVE_APP_ID' => $data->app_id,
            ];
        }

        foreach ($replacements as $key => $newValue) {
            $content = preg_replace("/^{$key}=.*/m", "{$key}={$newValue}", $content);
        }

        file_put_contents($envFile, $content);
        return;
    }
}
