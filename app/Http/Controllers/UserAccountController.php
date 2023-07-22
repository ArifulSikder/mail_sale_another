<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rules\Password;

class UserAccountController extends Controller
{
    public function updateProfile(Request $request)
    {
        $request->validate([
            'id' => 'required|numeric',
            'f_name' => 'max:256',
            'l_name' => 'max:256',
            'company_name' => 'max:256',
            'code' => 'max:256',
            'country' => 'max:256',
            'street' => 'max:256',
            'address' => 'max:256',
            'town' => 'max:256',
            'post_code' => 'max:256',
            'phone' => 'max:256',
            'email' => 'email:rfc,dns|unique:users,email,' . $request->id . ',id',
        ]);



        $user = User::findOrFail($request->id)->update([
            'f_name' => $request->f_name,
            'l_name' => $request->l_name,
            'company_name' => $request->company_name,
            'country' => $request->country,
            'code' => $request->code,
            'street' => $request->street,
            'address' => $request->address,
            'town' => $request->town,
            'post_code' => $request->post_code,
            'phone' => $request->phone,
            'email' => $request->email,
        ]);

        if ($user == true) {
            $notification = [
                'success' => "Profile Updated Successfully.",
            ];
        } else {
            $notification = [
                'success' => "Opps! There Is A Problem!",
            ];
        }

        return response()->json($notification);
    }


    public function updateProfile2(Request $request)
    {

        $request->validate([
            'id' => 'required|numeric',
            'f_name' => 'max:256',
            'l_name' => 'max:256',
            'username' => 'required|unique:users,username,' . $request->id . ',id',
            'email' => 'email:rfc,dns|unique:users,email,' . $request->id . ',id',
        ]);

        if ($request->password) {


            $request->validate([

                'new_password' => [
                    'required',
                    'different:password',
                    Password::min(8)
                        ->letters()
                        ->mixedCase()
                        ->numbers()
                        ->symbols()
                        ->uncompromised()
                ],
                'confirm_password' => ['nullable', 'required_with:new_password', 'same:new_password'],
                'password' => ['required', function ($attribute, $value, $fail) {
                    if (!Hash::check($value, Auth::user()->password)) {
                        return $fail(__('The current password is incorrect.'));
                    }
                }]

            ]);

            $user = User::findOrFail($request->id);
            if (Hash::check($request->password, $user->password)) {
                $user->fill([
                    'password' => Hash::make($request->new_password)
                ])->save();
            }
        }


        $user = User::findOrFail($request->id)->update([
            'f_name' => $request->f_name,
            'l_name' => $request->l_name,
            'email' => $request->email,
            'username' => $request->username,
        ]);

        if ($user == true) {
            $notification = [
                'success' => "Profile Updated Successfully.",
            ];
        } else {
            $notification = [
                'success' => "Opps! There Is A Problem!",
            ];
        }

        return response()->json($notification);
    }


    public function checkPassword(Request $request)
    {


        if ($request->new_password) {
            $validator = Validator::make($request->all(), [
                'new_password' => [
                    'required',
                    Password::min(8)
                        ->letters()
                        ->mixedCase()
                        ->numbers()
                        ->symbols()
                        ->uncompromised()
                ],
            ])->validate();
        } elseif ($request->confirm_password) {

            $validator = Validator::make($request->all(), [
                'confirm_password' => [
                    'required',
                    Password::min(8)
                        ->letters()
                        ->mixedCase()
                        ->numbers()
                        ->symbols()
                        ->uncompromised()
                ],
            ])->validate();
        }

        return response()->json([
            'status' => 200
        ]);
    }
}
