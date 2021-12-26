<?php

namespace App\Http\Controllers\Admin;


use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\salesDepartmentModel;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ProfitController extends Controller
{
    public function show()
    {
        return view('layouts.backend.report.profit.profit');
    }

    public function store(Request $request)
    {
        $request->validate([
            'company_name' => 'required',
        ]);

        CompanyModel::create($request->all());
        return redirect()->back();
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = salesDepartmentModel::query();
            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('date', function ($data) {
                    return date("d/m/y,g:i A", strtotime($data->created_at));
                })->addColumn('customer_name', function ($data) {
                    return $data->customer->name;
                })->addColumn('sales_details', function ($data) {
                    return '<a href="#" onclick="sales_details(' . $data->id . ')" class="edit btn btn-outline-dark btn-sm" >Invoice Details</a>'; 
                })->addColumn('sales_amount', function ($data) {
                    return $data->total_price;
                })->addColumn('profit_or_loss', function ($data) {
                    return $data->profit_or_loss;
                })->with('sum_balance', $query->sum('profit_or_loss'))
                ->rawColumns(['date', 'customer_name', 'sales_details', 'sales_amount','profit_or_loss'])
                ->make(true);
        }
    }
    
    public function delete($id)
    {
        CompanyModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }
    
    public function edit_company($id)
    {
        $company = CompanyModel::find($id);
        return view('layouts.backend.company.edit_company',compact('company'));
    }
    
    public function company_update(Request $request,$id)
    {
        $request->validate([
            'company_name' => 'required',
        ]);

        CompanyModel::find($id)->update($request->all());
        return redirect()->back();
    }
}
