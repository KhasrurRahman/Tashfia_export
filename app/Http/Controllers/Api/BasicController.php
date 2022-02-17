<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\ExpensesModel;
use App\Models\salesDepartmentModel;
use App\Models\supplierModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class BasicController extends Controller
{

    public function customers()
    {
        $customer = CustomerModel::all();
        return response()->json(['customers' => $customer]);
    }

    public function suppliers()
    {
        $customer = supplierModel::all();
        return response()->json(['suppliers' => $customer]);
    }

    public function account_summary(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'from_date' => 'required|date',
            'to_date' => 'required|date',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }
        $profit = salesDepartmentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->sum('profit_or_loss');
        $expence = ExpensesModel::whereBetween('created_at', [$request->from_date, $request->to_date])->sum('Amount');

        return response()->json(['profit' => $profit, 'expense' => $expence]);
    }
}
