<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rules\Password;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $search = $request->search;
        $data['users'] = User::latest()
            ->when($search !== null, function ($query) use ($search) {
                return $query->where('username', 'LIKE', "%{$search}%")->orWhere('type', 'LIKE', "%{$search}%");
            })
            ->paginate(15);
        $data['search'] = $search;

        // $data['users'] = User::latest()->paginate(10);
        return view('backend.user.user-list', $data);
    }

    public function createUser(Request $request)
    {
        return view('backend.user.create_user');
    }

    public function storeUser(Request $request)
    {

        $request->validate([
            'username' => 'required|unique:users,username,' . $request->id . ',id',
            'type' => 'required|in:Customer,Author',
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

            'password' => [
                'required',
                'confirmed',
                Password::min(8)
                    ->letters()
                    ->mixedCase()
                    ->numbers()
                    ->symbols()
                    ->uncompromised()
            ],

        ], [
            'username.required' => 'Username is required',
            'f_name.required' => 'First name is required',
            'l_name.required' => 'Last name is required',
            'company_name.required' => 'Company name is required',
            'code.required' => 'Code is required',
            'country.required' => 'Country name is required',
            'street.required' => 'Street is required',
            'address.required' => 'Address is required',
            'town.required' => 'Town is required',
            'post_code.required' => 'Post code is required',
            'phone.required' => 'Phone is required',
            'email.required' => 'Email is required',
            'password.required' => 'Password is required',
            'confirm_password.required' => 'Confirm password is required',
        ]);


        $user = User::create([
            'type' => $request->type,
            'username' => $request->username,
            'f_name' => $request->f_name,
            'l_name' => $request->l_name,
            'company_name' => $request->company_name,
            'country' => $request->country,
            'code' => $request->code,
            'street' => $request->street,
            'address' => $request->address,
            'town' => $request->town,
            'post_code' => $request->code,
            'phone' => $request->phone,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);

        if ($user == true) {
            $notification = [
                'success' => "User Created Successfully.",
            ];
        } else {
            $notification = [
                'success' => "Opps! There Is A Problem!",
            ];
        }
        return redirect('/user-list')->with($notification);
    }

    public function deleteUser($user_id)
    {
        User::findOrFail($user_id)->delete();
        return redirect()->back();
    }

    public function userDetails($user_id)
    {
        $data['user'] = User::findOrFail($user_id);
        return view('backend.user.user_details', $data);
    }

    public function editUser($user_id)
    {
        $data['user'] = User::findOrFail($user_id);
        return view('backend.user.edit_user', $data);
    }

    public function updateUser(Request $request)
    {

        $request->validate([
            'username' => 'required|unique:users,username,' . $request->id . ',id',
            'type' => 'required|in:Customer,Author',
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


        ], [
            'username.required' => 'Username is required',
            'f_name.required' => 'First name is required',
            'l_name.required' => 'Last name is required',
            'company_name.required' => 'Company name is required',
            'code.required' => 'Code is required',
            'country.required' => 'Country name is required',
            'street.required' => 'Street is required',
            'address.required' => 'Address is required',
            'town.required' => 'Town is required',
            'post_code.required' => 'Post code is required',
            'phone.required' => 'Phone is required',
            'email.required' => 'Email is required',
        ]);

        if ($request->password) {
            $request->validate([
                'password' => [
                    'sometimes',
                    'confirmed',
                    Password::min(8)
                        ->letters()
                        ->mixedCase()
                        ->numbers()
                        ->symbols()
                        ->uncompromised()
                ],
            ], [
                'password.required' => 'Password is required',
                'confirm_password.required' => 'Confirm password is required',
            ]);
        }


        $user = User::findOrFail($request->id)->update([
            'type' => $request->type,
            'username' => $request->username,
            'f_name' => $request->f_name,
            'l_name' => $request->l_name,
            'company_name' => $request->company_name,
            'country' => $request->country,
            'code' => $request->code,
            'street' => $request->street,
            'address' => $request->address,
            'town' => $request->town,
            'post_code' => $request->code,
            'phone' => $request->phone,
            'email' => $request->email,
        ]);

        if ($request->password) {
            User::findOrFail($request->id)->update([
                'password' => Hash::make($request->password),
            ]);
        }

        if ($user == true) {
            $notification = [
                'success' => "User Updated Successfully.",
            ];
        } else {
            $notification = [
                'success' => "Opps! There Is A Problem!",
            ];
        }
        return redirect('/user-list')->with($notification);
    }

    public function changePassword(Request $request)
    {


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

        if ($user == true) {
            $notification = [
                'success' => "User Password Changed Successfully.",
            ];
        } else {
            $notification = [
                'error' => "Opps! There Is A Problem!",
            ];
        }
        return response()->json($notification);
    }
}
