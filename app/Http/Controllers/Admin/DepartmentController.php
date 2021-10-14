<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\purchaseModel;
use App\Models\lotDepartmentModel;
use App\Models\ModelProduct;
use App\Models\salesDepartmentModel;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;
use Barryvdh\DomPDF\Facade as PDF;

class DepartmentController extends Controller
{
    public function show_sales_department()
    {
        $customer = CustomerModel::all();
        $stock = lotDepartmentModel::where('quantity','>',0)->get();
        return view('layouts.backend.sales_department.sales_department',compact('stock','customer'));
    }

    public function get_sales_department_data(Request $request)
    {
        if ($request->ajax()) {
            $query = salesDepartmentModel::query();
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('stock', function ($data) {
                    return $data->stock->lot.','. 'QUN:'. $data->stock->quantity;
                })
                ->addColumn('product', function ($data) {
                    return '<a href="javascript:void(0)" onclick="view_modal(' . $data->stock->product_id . ')" class="edit btn btn-success btn-sm" >View Product</a>';
                })
                ->addColumn('date', function ($data) {
                    return date("d-M-y h:i A", strtotime($data->date));
                })->addColumn('unit_price', function ($data) {
                    return $data->unit_price;
                })->addColumn('quantity_of_sell', function ($data) {
                    return $data->quantity_of_sell;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="edit_info(' . $data->id . ')" class="edit btn btn-outline-success btn-sm" >Edit</a> <a href="javascript:void(0)" onclick="delete_data(' . $data->id . ')" class="edit btn btn-outline-danger btn-sm" >Delete</a>';
                    return $actionBtn;
                })->rawColumns(['date','product','unit_price', 'quantity_of_sell', 'balance', 'action'])
                ->make(true);
        }
    }
    
    public function store_sales_department_data(Request $request)
    {
        $request->validate([
            'stock_id' => 'required',
            'quantity_of_sell' => 'required',
            'unit_price' => 'required',
            'balance' => 'required',
        ]);
        
        $stock = lotDepartmentModel::find($request->stock_id);
        $stock->quantity -= $request->quantity_of_sell;
        $stock->update();
        
        $request->request->add(['created_by' => Auth::user()->id,'order_no' => mt_rand()]);
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
        
         $product = ModelProduct::query()->select('id','chalan_no')->get();
$product_loop = '';
        foreach ($product as $product_data) {
            $product_loop .= '<option value="' . $product_data->id . '" ' . (($product_data->id == $data->product_id) ? 'selected="selected"' : "") . '>' . $product_data->chalan_no . '</option>';
        }

        $output .= '<input type="hidden" value="' . $id . '" name="edit_id"><div class="form-group"> <div class="form-group"> <div class="form-group"> <label>Support Type:</label> <select class="form-control select2" name="product_id" > ' . $product_loop . ' </select> <span id="edit_Error_status_product_id" class="text-red error_field"></span></div><label for="Route_name">Date</label> <input type="date" class="form-control" name="date" value="'.Carbon::parse($data->date)->format('Y-m-d').'"> <span id="edit_Error_status_date" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Buyer</label> <input type="text" class="form-control" name="buyer" value="'.$data->buyer.'"> <span id="edit_Error_status_buyer" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">quantity</label> <input type="number" class="form-control" name="quantity" value="'.$data->quantity.'"> <span id="edit_Error_status_quantity" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Roll</label> <input type="text" class="form-control" name="roll" value="'.$data->roll.'"> <span id="edit_Error_status_roll" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">lot</label> <input type="text" class="form-control" name="lot" value="'.$data->lot.'"> <span id="edit_Error_status_lot" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">sell</label> <input type="number" class="form-control" name="sell" value="'.$data->sell.'"> <span id="edit_Error_status_sell" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Balance</label> <input type="number" class="form-control" name="balance" value="'.$data->balance.'"> <span id="edit_Error_status_balance" class="text-red error_field"></span></div>';

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
            'balance' => 'required',
            'product_id' => 'required',
        ]); 
        $request->request->add(['created_by' => Auth::user()->id]);
        salesDepartmentModel::find($request->edit_id)->update($request->all());
        return response()->json(['Done' => 'Done']);
    }
    
    
    
    public function show_lot_department()
    {
        $purchase_product= purchaseModel::all();
        return view('layouts.backend.stock_department.stock_department',compact('purchase_product'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = lotDepartmentModel::query();
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('product', function ($data) {
                    return '<a href="javascript:void(0)" onclick="view_modal(' . $data->purchase->product_id . ')" class="edit btn btn-success btn-sm" >View Product</a>';
                })->addColumn('date', function ($data) {
                    return date("d-M-y h:i A", strtotime($data->created_at));
                })->addColumn('quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('sales_rate', function ($data) {
                    return $data->sales_rate;
                })->addColumn('total_sales_price', function ($data) {
                    return $data->total_sales_price;
                })->addColumn('total_purchas_price', function ($data) {
                    return $data->total_purchas_price;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="edit_info(' . $data->id . ')" class="edit btn btn-outline-success btn-sm" >Edit</a> <a href="javascript:void(0)" onclick="delete_data(' . $data->id . ')" class="edit btn btn-outline-danger btn-sm" >Delete</a>';
                    return $actionBtn;
                })->rawColumns(['product','date', 'quantity', 'sales_rate', 'total_sales_price', 'total_purchas_price', 'action'])
                ->make(true);
        }
    }
    
    public function store_lot_department_data(Request $request)
    {
        $request->validate([
            'purchase_id' => 'required',
            'sales_rate' => 'required',
            'total_sales_price' => 'required',
            'total_purchas_price' => 'required',
            'quantity' => 'required',
        ]);
        
        $purchase = purchaseModel::find($request->purchase_id);
        $purchase->quantity -= $request->quantity;
        $purchase->update();
        
        $request->request->add(['created_by' => Auth::user()->id]);
        lotDepartmentModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }
    
    public function delete_lot_department_data($id)
    {
        $stock = lotDepartmentModel::find($id);
        salesDepartmentModel::where('stock_id',$stock->id)->delete();
        $stock->delete();
        return response()->json(['Done' => 'Done']);
    }
    
    public function edit_lot_department_data($id)
    {
        $data = lotDepartmentModel::find($id);
        $output = '';
        
        $product = ModelProduct::query()->select('id','chalan_no')->get();
$product_loop = '';
        foreach ($product as $product_data) {
            $product_loop .= '<option value="' . $product_data->id . '" ' . (($product_data->id == $data->product_id) ? 'selected="selected"' : "") . '>' . $product_data->chalan_no . '</option>';
        }

        $output .= '<input type="hidden" value="' . $id . '" name="edit_id"><div class="form-group"> <div class="form-group"> <label>Support Type:</label> <select class="form-control select2" name="product_id" > ' . $product_loop . ' </select> <span id="edit_Error_status_product_id" class="text-red error_field"></span></div><label for="Route_name">Date</label> <input type="date" class="form-control" name="date" value="'.Carbon::parse($data->date)->format('Y-m-d').'"> <span id="edit_Error_status_date" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Buyer</label> <input type="text" class="form-control" name="buyer" value="'.$data->buyer.'"> <span id="edit_Error_status_buyer" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">quantity</label> <input type="number" class="form-control" name="quantity" value="'.$data->quantity.'"> <span id="edit_Error_status_quantity" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Roll</label> <input type="text" class="form-control" name="roll" value="'.$data->roll.'"> <span id="edit_Error_status_roll" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">lot</label> <input type="text" class="form-control" name="lot" value="'.$data->lot.'"> <span id="edit_Error_status_lot" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">sell</label> <input type="number" class="form-control" name="sell" value="'.$data->sell.'"> <span id="edit_Error_status_sell" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Balance</label> <input type="number" class="form-control" name="balance" value="'.$data->balance.'"> <span id="edit_Error_status_balance" class="text-red error_field"></span></div>';
        
        return $output;
    }
    
    public function update_lot_department_data(Request $request)
    {
        $request->validate([
            'sales_rate' => 'required',
            'product_id' => 'required',
            'per_unit_price' => 'required',
            'quantity' => 'required',
        ]);
        $request->request->add(['created_by' => Auth::user()->id]);
        lotDepartmentModel::find($request->edit_id)->update($request->all());
        return response()->json(['Done' => 'Done']);
    }
    
    public function show_single_lot_department_data($id)
    {
        return lotDepartmentModel::find($id);
    }
    
    public function sales_department_invoice($id)
    {
        $product = salesDepartmentModel::find($id);
        $pdf = PDF::loadView('layouts.backend.sales_department.invoice', compact('product'));
        return $pdf->download('invoice.pdf');
    }
}
