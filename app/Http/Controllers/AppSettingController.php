<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AppSettingController extends Controller
{
    public function index()
    {
        return view('backend.appsetting.appSetting');
    }
}