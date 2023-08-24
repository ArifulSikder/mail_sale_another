<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Mail\OtpMail;
use App\Models\OtpVarification;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
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
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email_register' => 'required|email:rfc,dns|unique:users,email',
            'username' => 'required|unique:users,username',
            'password_register' => [
                'required',
                Password::min(8),
                // ->letters()
                // ->mixedCase()
                // ->numbers()
                // ->symbols()
                // ->uncompromised()
            ],
        ]);

        $validator
            ->setAttributeNames([
                'username' => 'username',
                'email_register' => 'email',
                'password_register' => 'password',
            ])
            ->validate();

        $now = Carbon::now();
        $data['opt'] = OtpVarification::where('email', $request->email_register)
            ->where('expire_at', '>', $now)
            ->first();

        if ($data['opt']) {
            $data['opt'] = $data['opt']->update([
                'type' => 'Customer',
                'username' => $request->username,
                'email' => $request->email_register,
                'password' => Hash::make($request->password_register),
                'otp' => rand(111111, 999999),
                'expire_at' => Carbon::now()->addMinutes(2),
            ]);
        } else {
            $data['opt'] = OtpVarification::create([
                'type' => 'Customer',
                'username' => $request->username,
                'email' => $request->email_register,
                'password' => Hash::make($request->password_register),
                'otp' => rand(111111, 999999),
                'expire_at' => Carbon::now()->addMinutes(2),
            ]);

            Mail::to($request->email_register)->send(new OtpMail($data['opt']));
        }

        session(['email' => $data['opt']->email]);
        return redirect('/otp-verification')->with('myOtpData');
    }

    public function reSendOtp(Request $request)
    {
        $data['opt'] = OtpVarification::where('email', $request->email);

        $data['opt']->first()->update([
            'otp' => rand(111111, 999999),
            'expire_at' => Carbon::now()->addMinutes(2),
        ]);

        $data['opt'] = $data['opt']->first();

        Mail::to($request->email)->send(new OtpMail($data['opt']));

        return redirect('/otp-verification');
    }

    public function otpVerification()
    {
        return view('auth.verify-email');
    }

    public function submitOtp(Request $request): RedirectResponse
    {
        $now = Carbon::now();
        $verificationCode = OtpVarification::where('email', $request->email)
            ->where('expire_at', '>', $now)
            ->where('otp', $request->otp)
            ->latest()
            ->first();

        if ($verificationCode !== null) {
            $user = User::create([
                'type' => 'Customer',
                'username' => $verificationCode->username,
                'email' => $verificationCode->email,
                'password' => $verificationCode->password,
            ]);

            event(new Registered($user));

            Auth::login($user);

            if (auth()->user()->type == 'Customer') {
                return redirect('/my-account/dashboard');
            } else {
                return redirect('/dashboard');
            }
        } else {
            return redirect('/otp-verification')->with(['message' => 'Your submitted opt is not current!']);
        }
    }
}
