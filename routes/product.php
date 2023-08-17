<?php

use App\Http\Controllers\StockManagement;
use Illuminate\Support\Facades\Route;

Route::get('purchase', [StockManagement::class, 'indexPurchase'])->name('purchase');
Route::post('store-purchase', [StockManagement::class, 'storePurchase'])->name('store-purchase');