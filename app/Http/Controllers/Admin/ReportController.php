<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ExpensesModel;
use App\Models\purchaseModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use App\SalesExecutiveModel;
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
        return view('layouts.backend.report.deposit_expense.deposit_expense');
    }

    public function deposit_expense_report_search(Request $request)
    {
        $sales_payments = SalesPaymentModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $purchase_history = purchaseModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        $expense_history = ExpensesModel::whereBetween('created_at', [$request->from_date, $request->to_date])->get();
        return view('layouts.backend.report.deposit_expense.deposit_expense_invoice_pdf', compact('sales_payments', 'purchase_history', 'expense_history'));
    }
}
