<?php

namespace App\Http\Controllers;



use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class HomeController2 extends Controller
{
    public function transaction_1()
    {
        return view('layouts.transaction.transaction_1');
    }
}
