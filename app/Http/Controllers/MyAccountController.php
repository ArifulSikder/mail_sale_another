<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class MyAccountController extends Controller
{
    public function dashboard()
    {
        return view('frontend.my_account.dashboard');
    }

    public function orders()
    {
        return view('frontend.my_account.orders');
    }

    public function downlaods()
    {
        return view('frontend.my_account.downlaod');
    }

    public function addresses()
    {
        return view('frontend.my_account.address');
    }

    public function details()
    {
        return view('frontend.my_account.account');
    }

    public function logout()
    {
        return view('frontend.my_account.logout');
    }
}
