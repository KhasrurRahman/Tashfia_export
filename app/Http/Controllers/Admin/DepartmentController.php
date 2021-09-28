<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\salesDepartmentModel;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class DepartmentController extends Controller
{
    public function show_sales_department()
    {
        return view('layouts.backend.sales_department.sales_department');
    }

    public function get_sales_department_data(Request $request)
    {
        if ($request->ajax()) {
            $query = salesDepartmentModel::query();
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('date', function ($data) {
                    return date("d-M-y h:i A", strtotime($data->date));
                })->addColumn('quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('roll', function ($data) {
                    return $data->roll;
                })->addColumn('lot', function ($data) {
                    return $data->lot;
                })->addColumn('buyer', function ($data) {
                    return $data->buyer;
                })->addColumn('sell', function ($data) {
                    return $data->sell;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="edit_info(' . $data->id . ')" class="edit btn btn-outline-success btn-sm" >Edit</a> <a href="javascript:void(0)" onclick="delete_data(' . $data->id . ')" class="edit btn btn-outline-danger btn-sm" >Delete</a>';
                    return $actionBtn;
                })->rawColumns(['date', 'quantity', 'roll', 'lot', 'buyer', 'sell', 'balance', 'action'])
                ->make(true);
        }
    }
    
    public function store_sales_department_data(Request $request)
    {
        $request->validate([
            'date' => 'required',
            'buyer' => 'required',
            'quantity' => 'required',
            'roll' => 'required',
            'lot' => 'required',
            'sell' => 'required',
        ]);
        $request->request->add(['created_by' => Auth::user()->id]);
        salesDepartmentModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }
    
    public function delete_sales_department_data($id)
    {
        salesDepartmentModel::find($id)->delete();
        return response()->json(['Done' => 'Done']);
    }
    
    public function edit_sales_department_data($id)
    {
        $data = salesDepartmentModel::find($id);
        $output = '';

        $output .= '<input type="hidden" value="' . $id . '" name="edit_id"><div class="form-group"> <label for="Route_name">Date</label> <input type="date" class="form-control" name="date" value="'.Carbon::parse($data->date)->format('Y-m-d').'"> <span id="edit_Error_status_date" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Buyer</label> <input type="text" class="form-control" name="buyer" value="'.$data->buyer.'"> <span id="edit_Error_status_buyer" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">quantity</label> <input type="number" class="form-control" name="quantity" value="'.$data->quantity.'"> <span id="edit_Error_status_quantity" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Roll</label> <input type="text" class="form-control" name="roll" value="'.$data->roll.'"> <span id="edit_Error_status_roll" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">lot</label> <input type="text" class="form-control" name="lot" value="'.$data->lot.'"> <span id="edit_Error_status_lot" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">sell</label> <input type="number" class="form-control" name="sell" value="'.$data->sell.'"> <span id="edit_Error_status_sell" class="text-red error_field"></span></div>';

        return $output;
    }
    
    public function update_sales_department_data(Request $request)
    {
        $request->validate([
            'date' => 'required',
            'buyer' => 'required',
            'quantity' => 'required',
            'roll' => 'required',
            'lot' => 'required',
            'sell' => 'required',
        ]);
        $request->request->add(['created_by' => Auth::user()->id]);
        salesDepartmentModel::find($request->edit_id)->update($request->all());
        return response()->json(['Done' => 'Done']);
    }
}
