<?php

namespace App\Http\Controllers\Api;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\ExpensesModel;
use App\Models\ModelProduct;
use App\Models\ProductCategoryModel;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\Models\supplierModel;
use App\SalesDetailsModel;
use App\SalesExecutiveModel;
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

        $data = salesDepartmentModel::select('customer_id', 'total_price', 'payment_amount', 'due', 'labour_bill', 'sales_code', 'profit_or_loss', 'status', 'created_at')->whereBetween('created_at', [$request->from_date, $request->to_date])->orderBy('created_at', 'DESC')->get();

        $profit_or_loss = $data->sum('profit_or_loss');
        return response()->json(['data' => $data, 'profit_or_loss' => $profit_or_loss]);
    }

    public function total_sales_purchase_due_report()
    {
        $current_date = date('Y-m-d');
        $fast_date_of_corrent_date = Carbon::now()->firstOfMonth()->toDateString();

        $today_sales = salesDepartmentModel::whereDate('created_at', $current_date)->sum('total_price');
        $today_sales_quantity = SalesDetailsModel::whereDate('created_at', $current_date)->sum('quantity');
        $current_month_sales = salesDepartmentModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('total_price');
        $current_month_sales_quantity = SalesDetailsModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('quantity');

        $todays_purchase_quantity = purchaseModel::whereDate('created_at', $current_date)->sum('quantity');
        $todays_purchase_price = purchaseModel::whereDate('created_at', $current_date)->sum('actual_purchas_price');
        $current_month_purchase_quantity = purchaseModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('quantity');
        $current_month_purchase_price = purchaseModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('actual_purchas_price');

        $todays_sales_due = salesDepartmentModel::whereDate('created_at', $current_date)->sum('total_price');
        $todays_sales_due_quantity = SalesDetailsModel::whereDate('created_at', $current_date)->sum('quantity');
        $current_month_sales_due = salesDepartmentModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('total_price');
        $current_month_sales_due_quantity = SalesDetailsModel::whereBetween('created_at', [$fast_date_of_corrent_date, $current_date])->sum('quantity');

        return response()->json(['today_total_sales_quantity' => $today_sales_quantity, 'today_sales_amount' => $today_sales,
            'current_month_total_sales_quantity' => $current_month_sales_quantity, 'current_month_sales_amount' => $current_month_sales,
            'today_purchase_quantity' => $todays_purchase_quantity, 'today_purchase_amount' => $todays_purchase_price,
            'current_month_purchase_quantity' => $current_month_purchase_quantity, 'current_month_purchase_amount' => $current_month_purchase_price,
            'today_due_amount' => $todays_sales_due, 'today_due_quantity' => $todays_sales_due_quantity,
            'current_month_due_amount' => $current_month_sales_due, 'current_month_due_quantity' => $todays_sales_due_quantity,]);
    }

    public function last_five_transaction()
    {
        $last_five_sales_tranjection = SalesPaymentModel::query()->orderBy('created_at', 'desc')->take(5)->get();
        return response()->json(['data' => $last_five_sales_tranjection]);
    }

    public function category_list()
    {
        $data = ProductCategoryModel::all();
        return response()->json(['data' => $data]);
    }

    public function company_list()
    {
        $data = CompanyModel::all();
        return response()->json(['data' => $data]);
    }

    public function search_customer(Request $request)
    {
        $query = CustomerModel::query();

        if ($request->phone !== null) {
            $query->where('personal_phone', 'like', '%' . $request->phone . '%');
        }

        if ($request->name !== null) {
            $query->where('name', 'like', '%' . $request->name . '%');
        }

        if ($request->customer_id !== null) {
            $query->where('id', 'like', '%' . $request->customer_id . '%');
        }

        if ($request->company_name !== null) {
            $query->whereHas('company', function ($query2) use ($request) {
                $query2->where('company_name', 'like', '%' . $request->company_name . '%');
            });
        }

        $data = $query->get();
        return response()->json(['data' => $data]);
    }

    public function search_supplier(Request $request)
    {
        $query = supplierModel::query();

        if ($request->phone !== null) {
            $query->where('personal_phone', 'like', '%' . $request->phone . '%');
        }

        if ($request->name !== null) {
            $query->where('name', 'like', '%' . $request->name . '%');
        }

        if ($request->customer_id !== null) {
            $query->where('id', 'like', '%' . $request->customer_id . '%');
        }

        if ($request->company_name !== null) {
            $query->whereHas('company', function ($query2) use ($request) {
                $query2->where('company_name', 'like', '%' . $request->company_name . '%');
            });
        }

        $data = $query->get();
        return response()->json(['data' => $data]);
    }

    public function search_product(Request $request)
    {
        $query = ModelProduct::orderBy('id', 'desc');

        if ($request->product_name !== null) {
            $query->where('chalan_no', 'like', '%' . $request->product_name . '%');
        }

        if ($request->bar_code !== null) {
            $query->where('card_no', 'like', '%' . $request->bar_code . '%');
        }

        if ($request->party_name !== null) {
            $query->where('party_name', 'like', '%' . $request->party_name . '%');
        }

        $data = $query->get();
        return response()->json(['data' => $data]);
    }

    public function search_purchase(Request $request)
    {
        $query = purchaseModel::query();

        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }

        if ($request->search_company_id !== null) {
            $query->whereHas('supplier', function ($query2) use ($request) {
                $query2->where('company_id', $request->search_company_id);
            });
        }

        if ($request->product_name !== null) {
            $query->whereHas('product', function ($query2) use ($request) {
                $query2->where('chalan_no', 'like', '%' . $request->product_name . '%');
            });
        }

        if ($request->search_supplier_id !== null) {
            $query->where('supplier_id', $request->search_supplier_id);
        }

        $data = $query->get();
        return response()->json(['data' => $data]);
    }

    public function employee_list()
    {
        $data = SalesExecutiveModel::all();
        return response()->json(['data' => $data]);
    }
}
