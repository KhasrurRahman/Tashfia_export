<?php

namespace App\Http\Controllers\Api;

use App\AssetModel;
use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\InitialCacheModel;
use App\Models\CustomerModel;
use App\Models\ExpensesCategoryModel;
use App\Models\ExpensesModel;
use App\Models\LotDepartmentModel;
use App\Models\ModelProduct;
use App\Models\ProductCategoryModel;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\Models\supplierModel;
use App\PurchasePaymentModel;
use App\SalesDetailsModel;
use App\SalesExecutiveModel;
use App\User;
use App\workworderModel;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class BasicController extends Controller
{

    public function customers()
    {
        $customer = CustomerModel::query()
            ->selectRaw('customers.*,company_info.*, SUM(sales.payment_amount) as total_payment_amount, SUM(sales.due) as total_due, SUM(sales.total_price) as total_sales_amount')
            ->join('company_info', 'company_info.id', '=', 'customers.company_id')
            ->join('sales', 'sales.customer_id', '=', 'customers.id')
            ->with('payment_history')
            ->get();
        return response()->json(['customers' => $customer]);
    }

    public function suppliers()
    {
        $customer = supplierModel::query()
            ->selectRaw('suppliers.*, SUM(purchase.payment_amount) as total_payment_amount, SUM(purchase.due) as total_due, SUM(purchase.actual_purchas_price) as total_purchase_amount')
            ->join('purchase', 'purchase.supplier_id', '=', 'suppliers.id')
            ->with('company')
            ->with('previous_due_payment_history')
            ->with('purchase')
            ->with('product')
            ->get();
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

        $data = salesDepartmentModel::select('customer_id', 'total_price', 'payment_amount', 'due', 'labour_bill', 'sales_code', 'profit_or_loss', 'status', 'created_at')
            ->with('customer')->whereBetween('created_at', [$request->from_date, $request->to_date])->orderBy('created_at', 'DESC')->get();

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
        $last_five_sales_tranjection = SalesPaymentModel::with('customer')->orderBy('created_at', 'desc')->take(5)->get();
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
        $query->selectRaw('customers.*, SUM(sales.payment_amount) as total_payment_amount, SUM(sales.due) as total_due, SUM(sales.total_price) as total_sales_amount')
//            ->join('company_info', 'company_info.id', '=', 'customers.company_id')
            ->join('sales', 'sales.customer_id', '=', 'customers.id');

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

        $data = $query->with('sales_history')->with('payment_history')->with('company')->get();
        return response()->json(['data' => $data]);
    }

    public function search_supplier(Request $request)
    {
        $query = supplierModel::query()->selectRaw('suppliers.*, SUM(purchase.payment_amount) as total_payment_amount, SUM(purchase.due) as total_due, SUM(purchase.actual_purchas_price) as total_purchase_amount')
            ->join('purchase', 'purchase.supplier_id', '=', 'suppliers.id');

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

        $data = $query->with(['purchase'=>function($q)
        {
            $q->with('product');
        }])->with('previous_due_payment_history')->with('company')->get();
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
        $query = purchaseModel::with('product');

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

    public function search_stock(Request $request)
    {
        $query = LotDepartmentModel::query();
        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }
        if ($request->search_supplier_id !== null) {
            $query->whereHas('purchase', function ($query2) use ($request) {
                $query2->where('supplier_id', $request->search_supplier_id);
            });
        }

        if ($request->product_name !== null) {
            $query->whereHas('purchase', function ($query2) use ($request) {
                $query2->whereHas('product', function ($query3) use ($request) {
                    $query3->where('chalan_no', 'like', '%' . $request->product_name . '%');
                });
            });
        }

        $data = $query->with(['purchase' => function ($q) {
            $q->with(['product', 'supplier']);
        }])->get();
        return response()->json(['data' => $data]);
    }

    public function search_sales_history(Request $request)
    {
        $query = salesDepartmentModel::query()->join('customers', 'customers.id', 'sales.customer_id')->join('company_info', 'company_info.id', '=', 'customers.company_id');

        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }

        if ($request->search_payment_status !== null) {
            if ($request->search_payment_status == 'paid') {
                $query->where('status', '=', 1);
            } else {
                $query->where('status', '=', 0);
            }
        }

        if ($request->search_company_id !== null) {
            $query->whereHas('customer', function ($query2) use ($request) {
                $query2->where('company_id', $request->search_company_id);
            });
        }

        if ($request->search_customer_id !== null) {
            $query->where('customer_id', $request->search_customer_id);
        }

        if ($request->invoice_number !== null) {
            $query->where('sales_code', 'like', '%' . $request->invoice_number . '%');
        }

        $data = $query->get();
        return response()->json(['data' => $data]);
    }

    public function search_asset(Request $request)
    {
        $query = AssetModel::query();
        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }

        if ($request->search_amount !== null) {
            $query->where('Amount', 'like', '%' . $request->search_amount . '%');
        }

        if ($request->search_name !== null) {
            $query->where('name', 'like', '%' . $request->search_name . '%');
        }

        $query->whereHas('category', function ($query2) use ($request) {
            if ($request->search_category_id !== null) {
                $query2->where('id', $request->search_category_id);
            }
        });

        $data = $query->with('category')->get();
        return response()->json(['data' => $data]);
    }

    public function search_expense(Request $request)
    {
        $query = ExpensesModel::query();
        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }

        if ($request->search_amount !== null) {
            $query->where('Amount', 'like', '%' . $request->search_amount . '%');
        }

        if ($request->search_name !== null) {
            $query->where('name', 'like', '%' . $request->search_name . '%');
        }

        $query->whereHas('expenses_category', function ($query2) use ($request) {
            if ($request->search_category_id !== null) {
                $query2->where('id', $request->search_category_id);
            }
        });

        $data = $query->with('expenses_category')->get();
        return response()->json(['data' => $data]);
    }

    public function search_advance_sells(Request $request)
    {
        $query = workworderModel::query();
        if ($request->from_date !== null and $request->to_date !== null) {
            $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
        }

        $data = $query->with(['party' => function ($q) {
            $q->with('company');
        }])->with('product')->get();
        return response()->json(['data' => $data]);
    }

    public function expense_asset_report(Request $request)
    {
        $opening_balance = InitialCacheModel::whereDate('date', $request->from_date)->first();

        if (!$opening_balance) {
            return response()->json(['message' => 'Opening balance not set on that day'], 404);
        }

        $sales = SalesPaymentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->with(['customer','reference_sale'])->get();
        $asset = AssetModel::whereBetween('created_at', [$request->from_date, $request->to_date])->with('category')->get();
        $advance_sell = workworderModel::whereBetween('created_at', [$request->from_date, $request->to_date])->with(['party','product'])->get();
        $total_asset = $opening_balance->opening_balance + $sales->sum('amount') + $asset->sum('Amount') + $advance_sell->sum('subtotal');


        $purchase = PurchasePaymentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->with(['supplier','reference_purchase'])->get();
        $expense = ExpensesModel::whereBetween('created_at', [$request->from_date, $request->to_date])->with('expenses_category')->get();
        $total_expense = $purchase->sum('amount') + $expense->sum('Amount');

        return response()->json(['opening_balance' => $opening_balance, 'total_asset' => $total_asset, 'total_expense' => $total_expense, 'sales' => $sales, 'purchase' => $purchase, 'asset' => $asset, 'expense' => $expense, 'advance_sell' => $advance_sell]);
    }

    public function employee_list()
    {
        $data = SalesExecutiveModel::all();
        return response()->json(['data' => $data]);
    }

    public function daily_opening_closing_balance()
    {
        $data = InitialCacheModel::all();
        return response()->json(['data' => $data]);
    }

    public function change_password(Request $request)
    {
        $validatedData = Validator::make($request->all(), [
            'current_password' => 'required|min:6',
            'password' => 'required|string|min:6',
            'password_confirmation' => 'required|same:password',
        ], [
            'current_password.required' => 'Old password is required',
            'current_password.min' => 'Old password needs to have at least 6 characters',
            'password.required' => 'Password is required',
            'password.min' => 'Password needs to have at least 6 characters',
            'password_confirmation.required' => 'Passwords do not match'
        ]);


        if ($validatedData->fails()) {
            return response()->json($validatedData->errors(), 422);
        }

        $current_password = Auth::User()->password;
        if (Hash::check($request->input('current_password'), $current_password)) {
            $user_id = Auth::User()->id;
            $obj_user = User::find($user_id);
            $obj_user->password = Hash::make($request->input('password'));
            $obj_user->update();
            return response()->json(['message' => 'Password Save Successfully'], 201);
        } else {
            return response()->json(['message' => 'Please enter correct current password'], 404);
        }
    }

    public function assetExpenseCategory()
    {
        $data = ExpensesCategoryModel::all();
        return response()->json(['data' => $data]);
    }
}
