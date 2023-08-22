<?php

use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\AppSettingController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CkEditorController;
use App\Http\Controllers\CustomerMessageController;
use App\Http\Controllers\HomePageController;
use App\Http\Controllers\OrderControllerBackend;
use App\Http\Controllers\PaymentApiController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PreviewImageController;
use App\Http\Controllers\SettingController;

Route::get('dashboard', function () {
    return view('backend.dashboard.index');
});

//preview image
Route::get('preview-image', [PreviewImageController::class, 'index'])->name('preview-image');

// CK editor 
Route::post('ckeditor-upload', [CkEditorController::class, 'uploadCKeditorFile'])->name('ckeditor.upload');


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
Route::get('/subcategory-description/{id}', [CategoryController::class, 'descriptionSubCategory']);
Route::post('store-subcategory-description', [CategoryController::class, 'storeSubCategoryDes'])->name('store-subcategory-description');
Route::post('edit-subcategory-description', [CategoryController::class, 'editSubCategoryDes'])->name('edit-subcategory-description');
Route::get('update-subcatdes-status/{id}/{status}', [CategoryController::class, 'updatSubCatDesStatus'])->name('update-subcatdes-status');
Route::get('/delete-subcategory/{category_id}', [CategoryController::class, 'deleteCategory']);
Route::get('/get-sub-category-ajax', [CategoryController::class, 'getSubCategoryAjax']);
//product
Route::get('products', [ProductController::class, 'index'])->name('products');
Route::post('store-product', [ProductController::class, 'storeProduct'])->name('store-product');
Route::post('update-product', [ProductController::class, 'updateProduct'])->name('update-product');
Route::get('delete-product/{product_id}', [ProductController::class, 'deleteProduct']);
Route::get('update-pin-status/{id}/{status}', [ProductController::class, 'updatePinStatus'])->name('update-pin-status');

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

// Stock management 
//  Stock
Route::get('stocks', [ProductController::class, 'indexStock'])->name('stocks');
Route::post('store-stock', [ProductController::class, 'storeStock'])->name('store-stock');
Route::post('update-stock-alert', [ProductController::class, 'updateStockAlert'])->name('update-stock-alert');
Route::get('delete-stock/{id}', [ProductController::class, 'deleteStock'])->name('delete-stock');

//seller
Route::get('sellers', [ProductController::class, 'indexSeller'])->name('sellers');
Route::post('store-seller', [ProductController::class, 'storeSeller'])->name('store-seller');
Route::post('update-seller', [ProductController::class, 'updateSeller'])->name('update-seller');
Route::get('update-seller-status/{id}/{status}', [ProductController::class, 'updatSellerStatus'])->name('update-seller-status');

//coupon
Route::get('coupons', [ProductController::class, 'indexCoupon'])->name('coupons');
Route::post('store-coupon', [ProductController::class, 'storeCoupon'])->name('store-coupon');
Route::post('update-coupon', [ProductController::class, 'updateCoupon'])->name('update-coupon');
Route::get('update-coupon-status/{id}/{status}', [ProductController::class, 'updatCouponStatus'])->name('update-coupon-status');
Route::get('delete-coupon/{id}', [ProductController::class, 'deleteCoupon'])->name('delete-coupon');

// app settings
Route::get('app-settings', [AppSettingController::class, 'index'])->name('app-settings');
Route::post('store-app-setting', [AppSettingController::class, 'storeSetting'])->name('store-setting');

//home page 
Route::get('home-details', [HomePageController::class, 'showDetails'])->name('home-details');
Route::post('store-home-details', [HomePageController::class, 'storeDetails'])->name('store-details');
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

// Business policy 
Route::get('add-business-policy', [HomePageController::class, 'addPolicy'])->name('add-business-policy');
Route::post('store-business-policy', [HomePageController::class, 'storePolicy'])->name('store-business-policy');
Route::get('show-business-policy', [HomePageController::class, 'indexPolicy'])->name('show-business-policy');
Route::get('edit-business-policy/{id}', [HomePageController::class, 'editPolicy'])->name('edit-business-policy');
Route::post('update-business-policy', [HomePageController::class, 'updatePolicy'])->name('update-business-policy');
Route::get('update-policy-status/{id}/{status}', [HomePageController::class, 'updatePolicyStatus'])->name('update-policy-status');
Route::get('delete-business-policy/{id}', [HomePageController::class, 'deletePolicy'])->name('delete-business-policy');

// FAQ Category
Route::get('faq-management', [HomePageController::class, 'addFaqCategory'])->name('faq-management');
Route::post('store-faq-category', [HomePageController::class, 'storeFaqCategory'])->name('store-faq-category');
Route::post('update-faq-category', [HomePageController::class, 'updateFaqCategory'])->name('update-faq-category');
Route::get('update-faq-status/{id}/{status}', [HomePageController::class, 'updatFaqStatus'])->name('update-faq-status');
Route::get('delete-faq-category/{id}', [HomePageController::class, 'deleteFaqCategory'])->name('delete-faq-category');

// FAQ Question
Route::get('add-faq-question/{cat_id}', [HomePageController::class, 'addFaqQuestion'])->name('add-faq-question');
Route::post('store-faq-question', [HomePageController::class, 'StoreFaqQuestion'])->name('store-faq-question');
Route::post('update-faq-question', [HomePageController::class, 'updateFaqQuestion'])->name('update-faq-question');
Route::get('update-question-status/{id}/{status}', [HomePageController::class, 'updatFaqQuesStatus'])->name('update-question-status');
Route::get('delete-faq-question/{id}', [HomePageController::class, 'deleteFaqQues'])->name('delete-faq-question');
Route::get('update-question-status/{id}/{status}', [HomePageController::class, 'updatFaqQuesStatus'])->name('update-question-status');

// About Us
Route::get('show-about-us', [HomePageController::class, 'aboutUs'])->name('show-about-us');
Route::post('store-about-us', [HomePageController::class, 'storeAboutUs'])->name('store-about-us');
Route::post('update-about-us', [HomePageController::class, 'updateAboutUs'])->name('update-about-us');
Route::get('update-about-staus/{id}/{status}', [HomePageController::class, 'updatAboutStatus'])->name('update-about-status');
Route::get('delete-about-us/{id}', [HomePageController::class, 'deleteAboutUs'])->name('delete-about-us');

//Payment Api
Route::get('pay-api-list', [PaymentApiController::class, 'payApiList'])->name('pay-api-list');
Route::post('store-pay-api', [PaymentApiController::class, 'storePayApi'])->name('store-pay-api');
Route::post('update-pay-api', [PaymentApiController::class, 'updatePayApi'])->name('update-pay-api');
Route::get('update-payapi-status/{id}/{status}', [PaymentApiController::class, 'updatApiStatus'])->name('update-payapi-status');
Route::get('delete-payapi/{id}', [PaymentApiController::class, 'deletePayapi'])->name('delete-payapi');

// Customer Contact 
Route::get('customer-contact', [CustomerMessageController::class, 'customerContact'])->name('customer-contact');
Route::get('show-individual-message/{id}', [CustomerMessageController::class, 'individualMessage'])->name('show-individual-message');
Route::get('show-individual-sent/{id}', [CustomerMessageController::class, 'individualSent'])->name('show-individual-sent');
Route::get('update-contact-status/{id}/{status}', [CustomerMessageController::class, 'updatContactStatus'])->name('update-contact-status');
Route::delete('delete-customer-message', [CustomerMessageController::class, 'deleteCustomerMessage'])->name('delete-customer-message');

Route::post('get-emails', [CustomerMessageController::class, 'getEmails'])->name('get-emails');
Route::post('send-msg-customer', [CustomerMessageController::class, 'sendMsgCustomer'])->name('send-msg-customer');

// send inbox 
Route::get('send-mail-index', [CustomerMessageController::class, 'sendMailIndex'])->name('send-mail-index');
Route::delete('delete-sent-message', [CustomerMessageController::class, 'deleteSentMessage'])->name('delete-sent-message');


// SMS Templete 
Route::get('sms-templete', [CustomerMessageController::class, 'smsTemplete'])->name('sms-templete');
Route::post('store-sms-templete', [CustomerMessageController::class, 'storeSmsTemplete'])->name('store-sms-templete');
Route::post('update-sms-templete', [CustomerMessageController::class, 'updateSmsTemplete'])->name('update-sms-templete');
Route::get('update-templete-status/{id}/{status}', [CustomerMessageController::class, 'updatTempleteStatus'])->name('update-templete-status');
Route::get('delete-templete/{id}', [CustomerMessageController::class, 'deleteTemplete'])->name('delete-templete');
Route::get('get-templete/{id}', [CustomerMessageController::class, 'getTemplete'])->name('get-templete');

//Set ENV
Route::get('set-email', [SettingController::class, 'setEmail'])->name('set-email');
Route::post('store-email-data', [SettingController::class, 'storeEmail'])->name('store-email-data');
Route::post('update-email-data', [SettingController::class, 'updateEmail'])->name('update-email-data');
Route::get('update-email-status/{id}/{status}', [SettingController::class, 'updatEmailStatus'])->name('update-email-status');
Route::get('delete-email/{id}', [SettingController::class, 'deleteEmail'])->name('delete-email');


//order 
Route::get('orders', [OrderControllerBackend::class, 'orderIndex'])->name('orders');



