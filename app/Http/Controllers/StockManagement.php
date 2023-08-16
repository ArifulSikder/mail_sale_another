<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Purchase;
use App\Models\Seller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class StockManagement extends Controller
{
    public function indexPurchase()
    {
        $data['purchases'] = Purchase::latest()->paginate(10);
        $data['sellers'] = Seller::orderBy('seller_name', 'asc')->get();
        $data['products'] = Product::where('active_status', 1)
            ->orderBy('name', 'asc')
            ->get();

        return view('backend.stockManage.indexPurchase', $data);
    }

    public function storePurchase(Request $request)
    {
        $validated = $request->validate(
            [
                'date' => 'required|date',
                'product_id' => 'required|integer|min:1',
                'seller_id' => 'required|integer|min:1',
                'quantity' => 'required|integer|min:1',
                'per_price' => 'required|date|min:1',
            ],
            [
                'date.required' => 'Date is required',
                'product_id.required' => 'Product is required',
                'seller_id.required' => 'Seller is required',
                'quantity.required' => 'Quantity is required',
                'per_price.required' => 'Per price is required',
            ],
        );

        $validated['created_by'] = Auth::id();
        $purchase = Purchase::create($validated);

        
        if ($purchase) {
            return response()->json([
                'success' => "Product Purchased successfully.",
            ]);
        } else {
            return response()->json([
                'error' => "Opps! Something Went Wrong.",
            ]);
        }
    }
}
