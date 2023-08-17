<?php

use App\Http\Controllers\StockManagement;
use Illuminate\Support\Facades\Route;

Route::get('purchase', [StockManagement::class, 'indexPurchase'])->name('purchase');
Route::post('store-purchase', [StockManagement::class, 'storePurchase'])->name('store-purchase');
Route::get('delete-purchase/{purchase}', [StockManagement::class, 'deletePurchase'])->name('delete-purchase');
Route::post('update-purchase', [StockManagement::class, 'updatePurchase'])->name('update-purchase');