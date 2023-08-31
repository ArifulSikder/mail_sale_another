<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function salesReport()
    {
        return view('backend.report.salesReport');
    }

    public function orderReport()
    {
        return view('backend.report.orderReport');
    }

    public function revenueReport()
    {
        return view('backend.report.revenueReport');
    }
}
