<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AppSetting;
use App\Models\HomePaveshop;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class AppSettingController extends Controller
{
    public function index()
    {
        $data['app_data'] = AppSetting::first();
        return view('backend.appsetting.appSetting', $data);
    }

    public function storeSetting(Request $request)
    {
        $check = AppSetting::first();
        if ($check != null) {
            $setting = AppSetting::findOrFail($check->id);
            $setting->updated_by = Auth::id();

        } else {
            $setting = new AppSetting();
            $setting->created_by = Auth::id();
        }
        
        $logo = '';
        if ($request->hasFile('logo')) {
                if ($check->logo != null) {
                    $photo = $check->logo;
                    File::delete($photo);
                }
            $logo = uploadPlease($request->file('logo'));
            $setting->logo = $logo;
        }
        $favicon = '';
        if ($request->hasFile('favicon')) {
                if ($check->favicon != null) {
                    $photo = $check->favicon;
                    File::delete($photo);
                }
            $favicon = uploadPlease($request->file('favicon'));
            $setting->favicon = $favicon;
        }

        $setting->logo_alt = $request->logo_alt;
        $setting->fb_link = $request->fb_link;
        $setting->instagram_link = $request->insta_link;
        $setting->twitter_link = $request->twitter_link;
        $setting->linkedin_link = $request->linkedin_link;
        $setting->pinterest_link = $request->pinterest_link;
        $setting->email = $request->email;
        $setting->skype = $request->skype;
        $setting->whatsapp = $request->whatsapp;
        $setting->telegram = $request->telegram;
        $setting->github = $request->github;
        $setting->youtube = $request->youtube_link;
        $setting->phone = $request->phone;
        $setting->address = $request->address;
        $setting->product_heading = $request->product_heading;
        $setting->team_heading = $request->team_heading;
        $setting->about_des = $request->about_des;
        $setting->faq_des = $request->faq_des;

        if ($setting->save()) {
            return response()->json([
                'success' => "App Setting Updated successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }
}