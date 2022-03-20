<?php

use App\Http\Controllers\Api\ApiAuthController;
use Illuminate\Support\Facades\Route;

Route::post('login', 'Api\ApiAuthController@login');

Route::group(['middleware' => ['jwt.verify']], function () {
    Route::get('customers', 'Api\BasicController@customers');
    Route::get('suppliers', 'Api\BasicController@suppliers');
    Route::post('account_summary', 'Api\BasicController@account_summary');
    Route::post('profit_loss', 'Api\BasicController@profit_loss');

    Route::get('total_sales_purchase_due_report', 'Api\BasicController@total_sales_purchase_due_report');
    Route::get('last_five_transaction', 'Api\BasicController@last_five_transaction');
    Route::get('category_list', 'Api\BasicController@category_list');
    Route::get('company_list', 'Api\BasicController@company_list');
    Route::post('search_customer', 'Api\BasicController@search_customer');
    Route::post('search_supplier', 'Api\BasicController@search_supplier');
    Route::post('search_product', 'Api\BasicController@search_product');
    Route::post('search_purchase', 'Api\BasicController@search_purchase');


    Route::get('employee_list', 'Api\BasicController@employee_list');
});
