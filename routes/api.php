<?php

use Illuminate\Support\Facades\Route;



Route::get('users', 'HomeController2@getusrs');
Route::POST('/add_user', 'HomeController2@add_user');


