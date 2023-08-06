<?php

use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\AppSettingController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\HomePageController;
use App\Http\Controllers\HomePaveshopController;
use App\Http\Controllers\MeetTeamController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SliderController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PreviewImageController;

Route::get('dashboard', function () {
    return view('backend.dashboard.index');
});

//preview image
Route::get('preview-image', [PreviewImageController::class, 'index'])->name('preview-image');
//user
Route::get('user-list', [UserController::class, 'index'])->name('user-list');
Route::get('create-user', [UserController::class, 'createUser'])->name('create-user');
Route::post('store-user', [UserController::class, 'storeUser'])->name('store-user');
Route::get('delete-user/{user_id}', [UserController::class, 'deleteUser'])->name('delete-user');
Route::get('user-details/{user_id}', [UserController::class, 'userDetails'])->name('user-details');
Route::get('edit-user/{user_id}', [UserController::class, 'editUser'])->name('edit-user');
Route::post('update-user', [UserController::class, 'updateUser'])->name('update-user');
Route::post('change-password', [UserController::class, 'changePassword'])->name('change-password');

//category
Route::get('category', [CategoryController::class, 'index'])->name('category');
Route::post('store-category', [CategoryController::class, 'storeCategory'])->name('store-category');
Route::post('update-category', [CategoryController::class, 'updateCategory'])->name('update-category');
Route::get('/delete-category/{category_id}', [CategoryController::class, 'deleteCategory'])->name('delete-category');
Route::get('sub-category', [CategoryController::class, 'indexSubCategory'])->name('sub-category');

//sub-category
Route::post('store-sub-category', [CategoryController::class, 'storeSubCategory'])->name('store-sub-category');
Route::post('update-sub-category', [CategoryController::class, 'updateSubCategory'])->name('update-sub-category');
Route::get('/delete-subcategory/{category_id}', [CategoryController::class, 'deleteCategory']);
Route::get('/get-sub-category-ajax', [CategoryController::class, 'getSubCategoryAjax']);
//product
Route::get('products', [ProductController::class, 'index'])->name('products');
Route::post('store-product', [ProductController::class, 'storeProduct'])->name('store-product');
Route::post('update-product', [ProductController::class, 'updateProduct'])->name('update-product');
Route::get('delete-product/{product_id}', [ProductController::class, 'deleteProduct']);

//product advantage
Route::get('product-advantages/{product_id}', [ProductController::class, 'productAdvantages']);
Route::post('store-product-advantage', [ProductController::class, 'storeProductAdvantage'])->name('store-product-advantage');
Route::post('update-product-advantage', [ProductController::class, 'updateProductAdvantage'])->name('update-product-advantage');
Route::get('delete-product-advantage/{id}', [ProductController::class, 'deleteProductAdvantage']);


//product details
Route::get('product-details/{product_id}', [ProductController::class, 'productDetailsIndex']);
Route::post('/add-product-details', [ProductController::class, 'storeProductDetails'])->name('add-product-details');
Route::post('/update-product-details', [ProductController::class, 'updateProductDetails'])->name('update-product-details');
Route::get('edit-details/{product_id}', [ProductController::class, 'productDetailEdit']);
Route::get('delete-details/{product_id}', [ProductController::class, 'productDetailDelete']);

// product description
Route::get('product-description/{product_id}', [ProductController::class, 'productDescription'])->name('product-description');
Route::post('add-product-description', [ProductController::class, 'storeProductDescription'])->name('add-product-description');
Route::post('update-product-description', [ProductController::class, 'updateProductDescription'])->name('update-product-description');
// app settings
Route::get('app-settings', [AppSettingController::class, 'index'])->name('app-settings');



//home page 
Route::get('add-details', [HomePageController::class, 'index'])->name('add-details');
Route::post('store-home-details', [HomePageController::class, 'storeDetails'])->name('store-details');
Route::get('show-home-details', [HomePageController::class, 'showDetails'])->name('show-details');
Route::get('edit-home-details/{id}', [HomePageController::class, 'editDetails'])->name('edit-details');
Route::post('update-home-details', [HomePageController::class, 'updateDetails'])->name('update-details');
Route::get('update-home-status/{id}/{status}', [HomePageController::class, 'updateHomeStatus'])->name('update-home-status');
Route::get('delete-home-details/{id}', [HomePageController::class, 'deleteDetails'])->name('delete-details');

//meet team
Route::get('meet-team', [HomePageController::class, 'meetTeam'])->name('meet-team');
Route::post('store-team', [HomePageController::class, 'storeTeam'])->name('store-team');
Route::get('edit-team/{id}', [HomePageController::class, 'editTeam'])->name('edit-team');
Route::post('update-team', [HomePageController::class, 'updateTeam'])->name('update-team');
Route::get('update-team-status/{id}/{status}', [HomePageController::class, 'updateTeamStatus'])->name('update-team-status');
Route::get('delete-team/{id}', [HomePageController::class, 'deleteTeam'])->name('delete-team');

//top slider
Route::get('slider', [HomePageController::class, 'sliderIndex'])->name('top-slider');
Route::post('store-slider', [HomePageController::class, 'storeSlider'])->name('store-slider');
Route::post('update-slider', [HomePageController::class, 'updateSlider'])->name('update-slider');
Route::get('update-slider-status/{id}/{status}', [HomePageController::class, 'updateSliderStatus'])->name('update-slider-status');
Route::get('delete-slider/{id}', [HomePageController::class, 'deleteSlider'])->name('delete-slider');

//product gurantee
Route::get('product-guarantee', [HomePageController::class, 'productIndex'])->name('product-guarantee');
Route::post('store-guarantee', [HomePageController::class, 'storeGuarantee'])->name('store-guarantee');
Route::post('update-guarantee', [HomePageController::class, 'updateGuarantee'])->name('update-guarantee');
Route::get('delete-guarantee/{id}', [HomePageController::class, 'deleteGuarantee'])->name('delete-guarantee');
Route::get('update-guarantee-status/{id}/{status}', [HomePageController::class, 'updateGuaranteeStatus'])->name('update-guarante-status');


