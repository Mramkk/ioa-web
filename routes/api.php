<?php

use App\Http\Controllers\Api\Address\ApiAddressController;
use App\Http\Controllers\Api\Address_ApiController;
use App\Http\Controllers\Api\Auth_ApiController;
use App\Http\Controllers\Api\Cart\ApiCartController;
use App\Http\Controllers\Api\Category_ApiController;
use App\Http\Controllers\Api\Coupon\ApiCouponController;
use App\Http\Controllers\Api\Mix_ApiController;
use App\Http\Controllers\Api\Mplant\ApiMplantController;
use App\Http\Controllers\Api\Mplant\ApiSeasonWiseController;
use App\Http\Controllers\Api\Order\ApiOrderController;
use App\Http\Controllers\Api\Order_ApiController;
use App\Http\Controllers\Api\Plant\ApiPlantController;
use App\Http\Controllers\Api\Product\ApiProductController;
use App\Http\Controllers\Api\Product_ApiController;
use App\Http\Controllers\Api\Razorpay\ApiRazorpayController;
use App\Http\Controllers\Api\Referral\ApiReferralController;
use App\Http\Controllers\Api\ReferralCommission\ApiReferralCommissionController;
use App\Http\Controllers\Api\Slider\ApiMainSliderController;
use App\Http\Controllers\Api\Slider\ApiNurserySliderController;
use App\Http\Controllers\Api\Slider\ApiSliderController;
use App\Http\Controllers\Api\SubCategory\ApiSubCategoryController;
use App\Http\Controllers\Api\User\ApiUserController;
use App\Http\Controllers\Api\User_ApiController;
use App\Http\Controllers\Api\Video_ApiController;
use App\Http\Controllers\Api\Webinar_ApiController;
use App\Http\Controllers\Api\Wishlist\ApiWishlistController;
use Illuminate\Support\Facades\Route;

// Authenticated Routes
Route::middleware('auth:sanctum')->group(function () {

    // User details
    Route::apiResource('userdetails', User_ApiController::class);

    // Products
    Route::apiResource('product', Product_ApiController::class);

    // Orders
    Route::apiResource('order', Order_ApiController::class);

    // Category
    Route::apiResource('category', Category_ApiController::class);

    // Address
    Route::apiResource('address', Address_ApiController::class);

    // Video
    Route::apiResource('video', Video_ApiController::class);

    // Video
    Route::apiResource('webinar', Webinar_ApiController::class);


    // // Payment
    // Route::apiResource('payment', PaymentController::class);


    // Mix Controller
    Route::apiResource('getdata', Mix_ApiController::class);
    Route::apiResource('setdata', Mix_ApiController::class);

    // Plants as products
    Route::controller(ApiProductController::class)->group(function () {
        Route::get('/mproduct', 'data');
        Route::get('/mproduct/id', 'byId');
        Route::get('/mproduct/plant', 'plantData');
        Route::get('/mproduct/plant/subcategory', 'plantSubcategory');

        // Route::get('/mproduct/product', 'product');
        // Route::get('/mproduct/category', 'category');
        // Route::get('/mproduct/subcategory', 'subCategoryWizeProduct');
        // Route::get('/fertilizer/by/category', 'fertilizerCate');
    });
    // Route::controller(ApiPlantController::class)->group(function () {
    //     Route::get('/mproduct', 'data');
    //     Route::get('/mproduct/product', 'product');
    //     Route::get('/mproduct/category', 'category');
    //     Route::get('/mproduct/subcategory', 'subCategoryWizeProduct');
    //     Route::get('/fertilizer/by/category', 'fertilizerCate');
    // });

    // Coupon Code
    Route::controller(ApiCouponController::class)->group(function () {
        Route::get('/coupon', 'data');
        Route::post('/coupon/apply', 'apply');
    });
    // MPlants as Plants
    Route::controller(ApiMplantController::class)->group(function () {
        Route::get('/plant', 'data');
        Route::get('/plant/category', 'category');
        Route::get('/plant/sub-category', 'subcategory');
    });
    Route::controller(ApiSeasonWiseController::class)->group(function () {
        Route::get('/season-wise', 'data');
        Route::get('/season-wise/category', 'category');
        Route::get('/season-wise/sub-category', 'subCategory');
    });
    // Wishlist
    Route::controller(ApiWishlistController::class)->group(function () {
        Route::get('/wishlist', 'data');
        Route::post('/wishlist/crud', 'crud');
    });
    // Cart
    Route::controller(ApiCartController::class)->group(function () {
        Route::get('/cart', 'data');
        Route::get('/cart/count', 'count');
        Route::post('/cart/add', 'add');
        Route::post('/cart/add/all', 'addAll');
        Route::post('/cart/qty', 'qtyUpdate');
        Route::post('/cart/remove', 'remove');
        Route::post('/cart/delete', 'delete');
    });
    // Address
    Route::controller(ApiAddressController::class)->group(function () {
        Route::get('/maddress', 'data');
        Route::get('/maddress/active', 'getActive');
        Route::post('/maddress/active', 'setActive');
        Route::post('/maddress/save', 'save');
        Route::post('/maddress/update', 'update');
        Route::post('/maddress/delete', 'delete');
    });
    // Razorpay payment getway
    Route::controller(ApiRazorpayController::class)->group(function () {
        Route::get('/razorpay/orderid', 'genOrderId');
        Route::post('/razorpay/payment', 'payment');
    });
    // Order as morder
    Route::controller(ApiOrderController::class)->group(function () {
        Route::get('/morder', 'data');
        Route::get('/morder/orderid', 'byId');
    });
    // User
    Route::controller(ApiUserController::class)->group(function () {
        Route::get('/muser', 'data');
        Route::post('/send/email', 'sendEmail');
        Route::post('/muser/update', 'update');
        Route::post('/muser/image', 'image');
        Route::post('/muser/logout', 'logout');
    });
    // Slider
    Route::controller(ApiSliderController::class)->group(function () {
        Route::get('/slider/main', 'main');
        Route::get('/slider/nursery', 'nursery');
    });
    // Referral
    Route::controller(ApiReferralController::class)->group(function () {
        Route::get('/referral', 'data');
        Route::post('/referral/save', 'save');
    });

    // Referral Commission
    Route::controller(ApiReferralCommissionController::class)->group(function () {
        Route::get('/referral/commission', 'data');
        Route::post('/referral/commission/apply', 'apply');
    });
});

Route::controller(ApiUserController::class)->group(function () {
    Route::post('/msend/otp', 'sendOTP');
    Route::post('/mverify/otp', 'verfyOTP');
});
// Register & Login Api
Route::controller(Auth_ApiController::class)->group(function () {
    Route::post('/login', 'login');
    Route::middleware('auth:sanctum')->post('/verify/otp', 'verify_otp');
    Route::middleware('auth:sanctum')->post('/logout', 'logout');
});
Route::controller(ApiSubCategoryController::class)->group(function () {
    Route::get('/sub-category', 'data');
});
