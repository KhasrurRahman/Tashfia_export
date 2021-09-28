<?php

use App\dynamic_route;
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
Route::get('bar_code', 'HomeController2@bar_code')->name('bar_code');

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



