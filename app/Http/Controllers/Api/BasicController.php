<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use Illuminate\Http\Request;

class BasicController extends Controller
{
    public function __construct()
    {
        config(['auth.defaults.guard' => 'api', 'auth.defaults.passwords' => 'users']);
    }

    public function customers()
    {
        $customer  = CustomerModel::all();
        return response()->json(['customers' => $customer]);
    }
}
