<?php

use App\Http\Controllers\UserAccountController;
use App\Http\Controllers\AppearanceController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


Route::get('/', [AppearanceController::class, 'index']);


Route::get('product', [AppearanceController::class, 'allProduct'])->name('product');
Route::get('product/{category_slug}', [AppearanceController::class, 'categoryWiseProduct'])->name('product');
Route::get('product/{category_slug}/{product_slug}', [AppearanceController::class, 'productDetails'])->name('single');

Route::get('/contact', [AppearanceController::class, 'contact']);
Route::get('/my-account', [AppearanceController::class, 'myAccount'])->middleware('auth');
Route::get('/cart', [AppearanceController::class, 'cart']);
Route::post('/validate-userdata', [AppearanceController::class, 'validateUserdata']);
Route::post('/profile-photo-upload-ajax', [AppearanceController::class, 'profilePhotoUpload']);

Route::get('/pricing', [AppearanceController::class, 'pricing'])->name('/pricing');
Route::get('/about-us', [AppearanceController::class, 'aboutUs'])->name('/about-us');

//add to card
Route::post('/add-to-cart', [AppearanceController::class, 'addToCard'])->name('add-to-cart');
Route::get('/cart', [AppearanceController::class, 'myCard'])->name('cart');
Route::post('/update-cart', [AppearanceController::class, 'updateCart'])->name('update-cart');
Route::get('/remove-product-item', [AppearanceController::class, 'removeProductItem']);
Route::get('/card-subtotal', [AppearanceController::class, 'cartSubtotal']);

//checkout
Route::get('/checkout', [AppearanceController::class, 'checkout'])->name('checkout');
Route::post('/login-from-checkout-page', [AppearanceController::class, 'loginFromCheckoutPage'])->name('login-from-checkout-page');
Route::post('/order-information', [AppearanceController::class, 'orderInformation'])->name('order-information');
Route::post('/stripe', [AppearanceController::class, 'stripePayment'])->name('stripe.post');

//contact 
Route::post('store-customer-message', [AppearanceController::class, 'storeCustomerMessage'])->name('store-customer-message');




Route::get('/remove/{id}', function($id){
    if($id) {
        $cart = session()->get('cart');
        // if(isset($cart[$id])) {
        //     unset($cart[$id]);
        //     session()->put('cart', $cart);
        // }
        return response()->json($cart);
    }
});


//footer
Route::get('/refund-policy', [AppearanceController::class, 'refundPolicy'])->name('refund-policy');
Route::get('/privacy-policy', [AppearanceController::class, 'privacyPolicy'])->name('privacy-policy');
Route::get('/terms-service', [AppearanceController::class, 'termsService'])->name('terms-service');
Route::get('/disclaimer', [AppearanceController::class, 'disclaimer'])->name('disclaimer');
Route::get('/faq', [AppearanceController::class, 'faq'])->name('faq');








Route::middleware('auth')->group(function () {
    Route::post('/update-profile', [UserAccountController::class, 'updateProfile'])->name('update-profile');
    Route::post('/update-profile2', [UserAccountController::class, 'updateProfile2'])->name('update-profile2');
    Route::post('/check-password', [UserAccountController::class, 'checkPassword'])->name('check-password');
});


Route::get('logout', function () {
    Auth::logout();
    return redirect('/');
});

require __DIR__ . '/auth.php';