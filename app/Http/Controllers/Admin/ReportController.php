<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\salesDepartmentModel;
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
}
