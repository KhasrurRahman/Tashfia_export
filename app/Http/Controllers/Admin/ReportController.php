<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\SalesExecutiveModel;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ReportController extends Controller
{
    public function sales_commision_report_show()
    {
        return view('layouts.backend.report.sales_commision.sales_commision');
    }

    public function sales_commision_report(Request $request)
    {
        if ($request->ajax()) {
            $query = SalesExecutiveModel::query();
            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('total_sale', function ($data) {
                    return $data->sales->sum('total_price');
                })->addColumn('total_sales_count', function ($data) {
                    return $data->sales->count();
                })
                ->rawColumns(['name', 'total_sale', 'total_sales_count'])
                ->make(true);
        }
    }
}
