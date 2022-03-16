<?php

use App\Http\Controllers\Api\ApiAuthController;
use Illuminate\Support\Facades\Route;

Route::post('login', 'Api\ApiAuthController@login');

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::get('customers', 'Api\BasicController@customers');
    Route::get('suppliers', 'Api\BasicController@suppliers');
    Route::post('account_summary', 'Api\BasicController@account_summary');
    Route::post('profit_loss', 'Api\BasicController@profit_loss');
    Route::get('today_total_sell', 'Api\BasicController@today_total_sell');

    Route::get('today_total_sell', 'Api\BasicController@today_total_sell');
    Route::get('current_month_total_sales', 'Api\BasicController@current_month_total_sales');

    Route::get('today_total_purchase', 'Api\BasicController@today_total_purchase');
    Route::get('current_month_total_purchase', 'Api\BasicController@current_month_total_purchase');

});
