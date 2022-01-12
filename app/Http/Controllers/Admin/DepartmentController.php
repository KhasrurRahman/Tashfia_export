<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\purchaseModel;
use App\Models\LotDepartmentModel;
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
        $stock = LotDepartmentModel::where('quantity', '>', 0)->get();
        $company = CompanyModel::all();
        return view('layouts.backend.sales_department.sales_department', compact('stock', 'customer', 'company'));
    }

    public function get_sales_department_data(Request $request)
    {
        if ($request->ajax()) {
            $query = salesDepartmentModel::query();

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


            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('customer', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="customer_details(' . $data->customer_id . ')">' . $data->customer->name . '</a>';
                })->addColumn('sales_code', function ($data) {
                    return $data->sales_code;
                })->addColumn('total', function ($data) {
                    return $data->total_price;
                })->addColumn('paid_amount', function ($data) {
                    return $data->payment_amount;
                })->addColumn('due', function ($data) {
                    return $data->due;
                })->addColumn('payment_status', function ($data) {
                    $status = '';
                    if ($data->status == 1) {
                        $status = '<span class="right badge badge-info">Paid</span>';
                    } elseif ($data->status == 0) {
                        $status = '<span class="right badge badge-warning">Unpaid</span>';
                    }
                    return $status;
                })->addColumn('customer_type', function ($data) {
                    $status = '';
                    if ($data->customer->type == 'general') {
                        $status = '<span class="right badge badge-success">Regular</span>';
                    } else {
                        $status = '<span class="right badge badge-info">Walk in</span>';
                    }
                    return $status;
                })->addColumn('date', function ($data) {
                    return date("d-M-y h:i A", strtotime($data->created_at));
                })->addColumn('action', function ($data) {
                    if ($data->due > 0) {
                        $pay_button = ' <a href="javascript:void(0)" onclick="pay_due_bill(' . $data->id . ')" class="edit btn btn-outline-success btn-sm" >Pay bill</a>';
                    } else {
                        $pay_button = '';
                    }
                    $actionBtn = '<a href="' . url('admin/sales/sales_department_invoice/' .
                            $data->id) . '" class="edit btn btn-outline-warning btn-sm" target="_blank">Invoice</a> <a href="#" onclick="sales_details(' . $data->id . ')" class="edit btn btn-outline-dark btn-sm" >Invoice Details</a> <a href="#" onclick="invoice_payment_history(' . $data->id . ')" class="edit btn btn-outline-info btn-sm" >Payments</a>' . $pay_button;
                    return $actionBtn;
                })->rawColumns(['customer', 'customer_type', 'sales_code', 'total', 'paid_amount', 'due', 'payment_status', 'date', 'action'])
                ->make(true);
        }
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

        $product = ModelProduct::query()->select('id', 'chalan_no')->get();
        $product_loop = '';
        foreach ($product as $product_data) {
            $product_loop .= '<option value="' . $product_data->id . '" ' . (($product_data->id == $data->product_id) ? 'selected="selected"' : "") . '>' . $product_data->chalan_no . '</option>';
        }

        $output .= '<input type="hidden" value="' . $id . '" name="edit_id"><div class="form-group"> <div class="form-group"> <div class="form-group"> <label>Support Type:</label> <select class="form-control select2" name="product_id" > ' . $product_loop . ' </select> <span id="edit_Error_status_product_id" class="text-red error_field"></span></div><label for="Route_name">Date</label> <input type="date" class="form-control" name="date" value="' . Carbon::parse($data->date)->format('Y-m-d') . '"> <span id="edit_Error_status_date" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Buyer</label> <input type="text" class="form-control" name="buyer" value="' . $data->buyer . '"> <span id="edit_Error_status_buyer" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">quantity</label> <input type="number" class="form-control" name="quantity" value="' . $data->quantity . '"> <span id="edit_Error_status_quantity" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Roll</label> <input type="text" class="form-control" name="roll" value="' . $data->roll . '"> <span id="edit_Error_status_roll" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">lot</label> <input type="text" class="form-control" name="lot" value="' . $data->lot . '"> <span id="edit_Error_status_lot" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">sell</label> <input type="number" class="form-control" name="sell" value="' . $data->sell . '"> <span id="edit_Error_status_sell" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Balance</label> <input type="number" class="form-control" name="balance" value="' . $data->balance . '"> <span id="edit_Error_status_balance" class="text-red error_field"></span></div>';

        return $output;
    }


    public function show_lot_department()
    {
        $purchase_product = purchaseModel::all();
        return view('layouts.backend.stock_department.stock_department', compact('purchase_product'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = LotDepartmentModel::query();
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('product', function ($data) {
                    return '<a href="javascript:void(0)" onclick="view_modal(' . $data->purchase->product_id . ')" class="edit btn btn-success btn-sm" >' . $data->purchase->product->chalan_no . '</a>';
                })->addColumn('date', function ($data) {
                    return date("d-M-y h:i A", strtotime($data->created_at));
                })->addColumn('quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="delete_data(' . $data->id . ')" class="edit btn btn-outline-danger btn-sm" >Delete</a>';
                    return $actionBtn;
                })->rawColumns(['product', 'date', 'quantity', 'action'])
                ->make(true);
        }
    }

    public function store_lot_department_data(Request $request)
    {
        $request->validate([
            'purchase_id' => 'required',
            'quantity' => 'required',
        ]);

        $purchase = purchaseModel::find($request->purchase_id);
        $purchase->quantity -= $request->quantity;
        $purchase->update();

        $request->request->add(['created_by' => Auth::user()->id]);
        LotDepartmentModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function delete_lot_department_data($id)
    {
        $stock = LotDepartmentModel::find($id);
        salesDepartmentModel::where('stock_id', $stock->id)->delete();
        $stock->delete();
        return response()->json(['Done' => 'Done']);
    }

    public function edit_lot_department_data($id)
    {
        $data = LotDepartmentModel::find($id);
        $output = '';

        $product = ModelProduct::query()->select('id', 'chalan_no')->get();
        $product_loop = '';
        foreach ($product as $product_data) {
            $product_loop .= '<option value="' . $product_data->id . '" ' . (($product_data->id == $data->product_id) ? 'selected="selected"' : "") . '>' . $product_data->chalan_no . '</option>';
        }

        $output .= '<input type="hidden" value="' . $id . '" name="edit_id"><div class="form-group"> <div class="form-group"> <label>Support Type:</label> <select class="form-control select2" name="product_id" > ' . $product_loop . ' </select> <span id="edit_Error_status_product_id" class="text-red error_field"></span></div><label for="Route_name">Date</label> <input type="date" class="form-control" name="date" value="' . Carbon::parse($data->date)->format('Y-m-d') . '"> <span id="edit_Error_status_date" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Buyer</label> <input type="text" class="form-control" name="buyer" value="' . $data->buyer . '"> <span id="edit_Error_status_buyer" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">quantity</label> <input type="number" class="form-control" name="quantity" value="' . $data->quantity . '"> <span id="edit_Error_status_quantity" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Roll</label> <input type="text" class="form-control" name="roll" value="' . $data->roll . '"> <span id="edit_Error_status_roll" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">lot</label> <input type="text" class="form-control" name="lot" value="' . $data->lot . '"> <span id="edit_Error_status_lot" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">sell</label> <input type="number" class="form-control" name="sell" value="' . $data->sell . '"> <span id="edit_Error_status_sell" class="text-red error_field"></span></div><div class="form-group"> <label for="Route_name">Balance</label> <input type="number" class="form-control" name="balance" value="' . $data->balance . '"> <span id="edit_Error_status_balance" class="text-red error_field"></span></div>';

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
        LotDepartmentModel::find($request->edit_id)->update($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function show_single_lot_department_data($id)
    {
        return LotDepartmentModel::find($id);
    }

    public function sales_department_invoice($id)
    {
        
        $sales = salesDepartmentModel::find($id);
        return view('layouts.backend.sales_department.invoice', compact('sales'));
    }
}
