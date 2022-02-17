<?php

use App\Http\Controllers\Api\ApiAuthController;
use Illuminate\Support\Facades\Route;

Route::post('login', 'Api\ApiAuthController@login');

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::get('customers', 'Api\BasicController@customers');
    Route::get('suppliers', 'Api\BasicController@suppliers');
    Route::post('account_summary', 'Api\BasicController@account_summary');
});
