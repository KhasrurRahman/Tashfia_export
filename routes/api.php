<?php

use App\Http\Controllers\Api\ApiAuthController;
use Illuminate\Support\Facades\Route;

// Route::group([
//     'middleware' => 'api',
//     'prefix' => 'auth'
// ], function ($router) {
//     Route::post('/login', [ApiAuthController::class, 'login']);
//    Route::post('/register', [ApiAuthController::class, 'register']);
//     Route::post('/logout', [ApiAuthController::class, 'logout']);
//     Route::post('/refresh', [ApiAuthController::class, 'refresh']);
//     Route::get('/user-profile', [ApiAuthController::class, 'userProfile']);
// });



Route::post('login', 'Api\ApiAuthController@login');

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::get('customers', 'Api\BasicController@customers');
    Route::get('suppliers', 'Api\BasicController@suppliers');
    Route::post('account_summary', 'Api\BasicController@account_summary');
});
