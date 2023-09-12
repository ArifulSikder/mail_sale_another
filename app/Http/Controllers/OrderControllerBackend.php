<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\PurchaseProduct;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Barryvdh\DomPDF\Facade\Pdf;

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


    public function invoiceIndex($id)
    {
        $data['order'] = Order::findOrFail($id);
        $data['products'] = PurchaseProduct::where('order_id', $id)->get();
        
        return view('backend.order.invoice', $data);
    }

    public function updatInvoice(Request $request)
    {
        Validator::make($request->all(), [
            'status' => 'required',
        ],[
            'status.required' => 'Please Update Your Status',
        ])->validate();

        $order_status = Order::findOrFail($request->id)->update([
            'status' => $request->status,
        ]);

        if ($order_status) {
            return response()->json([
                'success' => "Order Status Updated Successfully",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }

    public function downloadInvoice($id)
    {
        $data['order'] = Order::findOrFail($id);
        $data['products'] = PurchaseProduct::where('order_id', $id)->get();

        // return view('backend.order.download_invoice', $data);
        $pdf = Pdf::loadView('backend.order.download_invoice', $data);
        return $pdf->download('invoice.pdf');   
    }
}
