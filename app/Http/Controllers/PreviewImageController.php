<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PreviewImageController extends Controller
{
    public function index(Request $request)
    {
        $name = $request->name;

        $path = asset('preview_image/'.$name);
        
        return response()->json($path);
    }
}
