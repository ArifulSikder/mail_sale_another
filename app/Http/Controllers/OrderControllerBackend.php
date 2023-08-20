<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OrderControllerBackend extends Controller
{
    public function orderIndex(Request $request)
    {
        $name = $request->customer;

        $data['orders'] = Order::latest()
            ->when($request->status == 'Pending', function ($query) {
                return $query->where('status', 'Pending');
            })
            ->when($request->status == 'Processing', function ($query) {
                return $query->where('status', 'Processing');
            })
            ->when($request->status == 'Shipped', function ($query) {
                return $query->where('status', 'Shipped');
            })
            ->when($request->status == 'Canceled', function ($query) {
                return $query->where('status', 'Canceled');
            })
            ->when($request->status == 'Completed', function ($query) {
                return $query->where('status', 'Completed');
            })
            ->when($name !== null, function ($query) use($name) {
                return $query->where('f_name', 'like', "%{$name}%")
                        ->orWhere('l_name', 'like', "%{$name}%")
                        ->orWhere(DB::raw("CONCAT(f_name, ' ', l_name)"), 'like', "%{$name}%");
            })
            ->paginate(10);
        return view('backend.order.order_index', $data);
    }
}
