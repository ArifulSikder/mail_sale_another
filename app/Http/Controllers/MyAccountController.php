<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class MyAccountController extends Controller
{
    public function dashboard()
    {
        return view('frontend.my_account.dashboard');
    }

    public function orders()
    {
        $data['orders'] = Order::where('user_id', Auth::id())->get();
        return view('frontend.my_account.orders', $data);
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
