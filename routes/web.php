<?php

use App\dynamic_route;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/clear_cache', function () {
    Artisan::call('route:clear');
    Artisan::call('cache:clear');
    Artisan::call('config:clear');
    Artisan::call('config:cache');
    Artisan::call('view:clear');
    return 'Clear Cache';
});

Route::get('php_v', function () {print_r(PDO::getAvailableDrivers());});
Route::get('paf_generate/{id}', 'HomeController2@paf_generate')->name('paf_generate');
Route::get('invoice/{id}', 'HomeController2@invoice')->name('invoice');
Route::get('bar_code', 'HomeController2@bar_code')->name('bar_code');
Route::get('test', 'HomeController2@test')->name('test');

//ajax route
Route::post('sales_item_auto_complete', 'Admin\SalesController@sales_item_auto_complete')->name('sales_item_auto_complete');
Route::get('autocomplete-search', 'Admin\SalesController@autocompleteSearch')->name('autocompleteSearch');
Route::get('get_product_single_data/{id}', 'Admin\SalesController@get_product_single_data')->name('get_product_single_data');

Route::get('company_supplier_search/{id}', 'AjaxController@company_supplier_search')->name('company_supplier_search');

Route::get('company_customer_search/{id}', 'AjaxController@company_customer_search')->name('company_customer_search');


Auth::routes();

//public route
Route::get('/', function () {
    return redirect()->route('login');
})->middleware('auth');

Route::middleware(['auth', 'routeprifix'])->prefix('{roleBased}')->group(function () {
   Route::group(['as' => 'admin.', 'middleware' => ['auth', 'admin', 'lock'], 'namespace' => 'Admin'], function () {
       foreach (dynamic_route::where('route_status', 1)->get() as $value) {
           if ($value->method == 'get') {
               Route::get($value->url . '/' . $value->parameter, $value->controller_action)->name($value->url);
           } else {
               Route::post($value->url . '/' . $value->parameter, $value->controller_action)->name($value->url);
           }
       }
   });
});
