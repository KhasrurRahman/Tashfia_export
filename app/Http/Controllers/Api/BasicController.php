<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\ExpensesModel;
use App\Models\salesDepartmentModel;
use App\Models\supplierModel;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
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

    public function profit_loss(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'from_date' => 'required|date',
            'to_date' => 'required|date',
        ]);
        if ($validator->fails()) {
            return response()->json($validator->errors(), 422);
        }

        $data = salesDepartmentModel::select('customer_id','total_price','payment_amount','due','labour_bill','sales_code','profit_or_loss','status','created_at')->whereBetween('created_at', [$request->from_date, $request->to_date])->orderBy('created_at', 'DESC')->get();

        $profit_or_loss = $data->sum('profit_or_loss');
        return response()->json(['data' => $data,'profit_or_loss'=>$profit_or_loss]);
    }

    public function today_total_sell()
    {
        $today_sales = salesDepartmentModel::whereDate('created_at', date('Y-m-d'))->sum('total_price');
        return response()->json(['date' => date('Y-m-d'),'total_sales'=>$today_sales]);
    }

    public function current_month_total_sales()
    {
        $current_date = date('Y-m-d');
        $fast_date_of_corrent_date = Carbon::now()->firstOfMonth()->toDateString();
        $total_sales = salesDepartmentModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('total_price');
        return response()->json(['total_sales'=>$total_sales]);
    }
}
