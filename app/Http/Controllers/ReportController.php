<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ReportController extends Controller
{
    public function salesReport()
    {
        return view('backend.report.salesReport');
    }

    public function orderReport()
    {
        $now = new Carbon();
        $year = $now->format('Y');

        $monthlyOrderTk = [];
        for ($i = 1; $i <= 12; $i++) {
            $everyMonthOrderTk = Order::whereYear('created_at', $year)
                ->whereMonth('created_at', $i)
                ->sum('total_price');

            $monthlyOrderTk["$year-$i-1"] = $everyMonthOrderTk;
        }

        $yearlySales = Order::whereYear('created_at', $year)
        ->sum('total_price');
        
        
        $monthlyOrderPercentage = [];
        for ($i = 1; $i <= 12; $i++) {
            $everyMonthOrderPercentage = Order::whereYear('created_at', $year)
                ->whereMonth('created_at', $i)
                ->sum('total_price') * 100 / $yearlySales ;

            $monthlyOrderPercentage["$year-$i-1"] = round($everyMonthOrderPercentage);
        }

        return view('backend.report.orderReport', compact('monthlyOrderTk', 'monthlyOrderPercentage'));
    }

    public function revenueReport()
    {
        return view('backend.report.revenueReport');
    }
}
