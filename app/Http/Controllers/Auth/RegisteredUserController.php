<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rules\Password;
use Illuminate\View\View;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     */
    public function create(): View
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request): RedirectResponse
    {

        $validator = Validator::make($request->all(), [
            'email_register' => 'required|email:rfc,dns|unique:users,email',
            'username' => 'required|unique:users,username',
            'password_register' => [
                'required',
                Password::min(8)
                    ->letters()
                    ->mixedCase()
                    ->numbers()
                    ->symbols()
                    ->uncompromised()
            ],
        ]);

        $validator->setAttributeNames([
            'username' => 'username',
            'email_register' => 'email',
            'password_register' => 'password',
        ])->validate();


        $user = User::create([
            'type' => 'Customer',
            'username' => $request->username,
            'email' => $request->email_register,
            'password' => Hash::make($request->password_register),
        ]);

        event(new Registered($user));

        Auth::login($user);

        if (auth()->user()->type == "Customer") {
            return redirect('/my-account');
        } else {
            return redirect("/dashboard");
        }

    }
}
