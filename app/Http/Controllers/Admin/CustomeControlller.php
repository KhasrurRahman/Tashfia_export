<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class CustomeControlller extends Controller
{
    public function transaction_1()
    {
        $data = ['logo'=>'img/logo_2.png','banner'=>'img/dash_background_2.png','title'=>'Purchase Order: DC000000'];
        return view('layouts.transaction.transaction_1',compact('data'));
    }

    public function gnr_info()
    {
        $data = ['logo'=>'img/uniliver_logo.png','banner'=>'img/dashboard_image_3.png'];
        return view('layouts.transaction.gnr_info',compact('data'));
    }
}
