<?php

namespace App\Http\Controllers\Admin;

use App\AssetModel;
use App\Http\Controllers\Controller;
use App\InitialCacheModel;
use App\Models\ExpensesModel;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\PurchasePaymentModel;
use App\SalesExecutiveModel;
use App\workworderModel;
use Brian2694\Toastr\Facades\Toastr;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ReportController extends Controller
{
    public function sales_commision_report_show()
    {
        $sales_executives = SalesExecutiveModel::all();
        return view('layouts.backend.report.sales_commision.sales_commision', compact('sales_executives'));
    }

    public function sales_commision_report(Request $request)
    {
        if ($request->ajax()) {
            $query = salesDepartmentModel::query();

            if ($request->from_date !== null and $request->to_date !== null) {
                $query->whereBetween('created_at', [$request->from_date, $request->to_date]);
            }

            if ($request->search_sales_executive !== null) {
                $query->where('sales_executive_id', $request->search_sales_executive);
            }

            $query->orderBy('created_at', 'DESC')->groupBy('sales_executive_id');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->sales_executive->name;
                })->addColumn('total_sale', function ($query) {

                    return $query->with('sales_executive')->sum('total_price');


                })->addColumn('total_sales_count', function ($data) {
                    return $data->sales_executive->sales->count();
                })
                ->rawColumns(['name', 'total_sale', 'total_sales_count'])
                ->make(true);
        }
    }

    public function account_summary()
    {
        $profit = salesDepartmentModel::sum('profit_or_loss');
        $expence = ExpensesModel::sum('Amount');
        return view('layouts.backend.report.account_summary.account_summary', compact('profit', 'expence'));
    }

    public function search_account_summary(Request $request)
    {
        $request->validate([
            'from_date' => 'required|date',
            'to_date' => 'required|date',
        ]);
        $profit = salesDepartmentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->sum('profit_or_loss');
        $expence = ExpensesModel::whereBetween('created_at', [$request->from_date, $request->to_date])->sum('Amount');

        return view('layouts.backend.report.account_summary.account_summary', compact('profit', 'expence'));
    }

    public function deposit_expense_report_index()
    {
        $date  = date('Y-m-d');
        $opening_balance = InitialCacheModel::whereDate('date', $date)->first();

        $sales = SalesPaymentModel::whereDate('created_at', $date)->get();
        $asset = AssetModel::whereDate('created_at', $date)->get();
        $advance_sell = workworderModel::whereDate('created_at', $date)->get();
        $total_asset = $opening_balance->opening_balance + $sales->sum('amount') + $asset->sum('Amount') + $advance_sell->sum('subtotal');

        $purchase = PurchasePaymentModel::whereDate('created_at', $date)->get();
        $expense = ExpensesModel::whereDate('created_at', $date)->get();
        $total_expense = $purchase->sum('amount') + $expense->sum('Amount');

        return view('layouts.backend.report.deposit_expense.deposit_expense',compact('sales','purchase','asset','expense','opening_balance','advance_sell','total_asset','total_expense'));
    }

    public function deposit_expense_report_search(Request $request)
    {
        $opening_balance = InitialCacheModel::whereDate('date', $request->from_date)->first();

        if (!InitialCacheModel::whereDate('date', $request->from_date)->first()) {
            Toastr::warning('Opening balance not set on that day', 'Opening balance not set');
            return redirect()->back();
        }

        $sales = SalesPaymentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $asset = AssetModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $advance_sell = workworderModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $total_asset = $opening_balance->opening_balance + $sales->sum('amount') + $asset->sum('Amount') + $advance_sell->sum('subtotal');


        $purchase = PurchasePaymentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $expense = ExpensesModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $total_expense = $purchase->sum('amount') + $expense->sum('Amount');

        return view('layouts.backend.report.deposit_expense.deposit_expense_invoice_pdf', compact('sales','purchase','asset','expense','opening_balance','advance_sell','total_asset','total_expense'));
    }
}
