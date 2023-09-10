<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Purchase;
use App\Models\Seller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\StockManagement as Stock;

class StockManagement extends Controller
{
    public function indexPurchase(Request $request)
    {
        $search = $request->search;
        $data['purchases'] = Purchase::latest()
            ->when($search !== null, function ($query) use($search) {
                 $query->whereHas('product', function($query) use($search){
                    $query->Where("name", "like","%$search%");
                 });
            })
            ->paginate(10);
        $data['search'] = $search;

        // $data['purchases'] = Purchase::latest()->paginate(10);
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
                'per_price' => 'required|min:1',
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

        $stock = Stock::where('product_id', $validated['product_id'])->first();
        if ($stock) {
            $purchased = Purchase::where('product_id', $validated['product_id']);
            $prices = $purchased->sum('per_price');
            $total = $purchased->count();
            $average = $prices / $total;

            $data = [
                'product_id' => $stock->product_id,
                'quantity' => $stock->quantity + $validated['quantity'],
                'average_per_price' => $average,
                'updated_by' => Auth::id(),
            ];

            $this->updateStock($stock, $data, $stock->id); //model, data, id
        } else {

            $stock = new Stock();

            $data = [
                'product_id' => $purchase->product_id,
                'quantity' => $purchase->quantity,
                'average_per_price' => $purchase->per_price,
                'created_by' => Auth::id(),
            ];

            $this->updateStock($stock, $data, null);//model, data, id
        }
        if ($purchase) {
            return response()->json([
                'success' => 'Product Purchased successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function deletePurchase(Purchase $purchase)
    {
        $purchase->delete();

        return redirect()->back();
    }

    public function updatePurchase(Request $request)
    {
        $validated = $request->validate(
            [
                'date' => 'required|date',
                'product_id' => 'required|integer|min:1',
                'seller_id' => 'required|integer|min:1',
                'quantity' => 'required|integer|min:1',
                'per_price' => 'required|min:1',
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
        $purchase = Purchase::findOrfail($request->id)->update($validated);

        $stock = Stock::where('product_id', $validated['product_id'])->first();
        if ($stock) {
            $purchased = Purchase::where('product_id', $validated['product_id']);
            $prices = $purchased->sum('per_price');
            $total = $purchased->count();
            $average = $prices / $total;

            $data = [
                'product_id' => $stock->product_id,
                'quantity' => $stock->quantity + $validated['quantity'],
                'average_per_price' => $average,
                'updated_by' => Auth::id(),
            ];

            $this->updateStock($stock, $data, $stock->id); //model, data, id
        } else {

            $stock = new Stock();

            $data = [
                'product_id' => $purchase->product_id,
                'quantity' => $purchase->quantity,
                'average_per_price' => $purchase->per_price,
                'created_by' => Auth::id(),
            ];

            $this->updateStock($stock, $data, null);//model, data, id
        }

        if ($purchase) {
            return response()->json([
                'success' => 'Purchased Product Updated successfully.',
            ]);
        } else {
            return response()->json([
                'error' => 'Opps! Something Went Wrong.',
            ]);
        }
    }

    public function updateStock($stock, $data, $id)
    {
        if ($id) {
            $stock->update($data);
        } else {
            $stock->create($data);
        }

        return;
    }



}
