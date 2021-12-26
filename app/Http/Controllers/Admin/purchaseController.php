<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\ModelProduct;
use App\Models\purchaseModel;
use App\Models\supplierModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class purchaseController extends Controller
{
    public function index()
    {
        $products = ModelProduct::get();
        $supplier = supplierModel::all();
        $company = CompanyModel::all();
        return view('layouts.backend.purchase.purchase', compact('products', 'supplier', 'company'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
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
                    $query2->where('chalan_no','like', '%' . $request->product_name . '%');
                });
            }

            if ($request->search_supplier_id !== null) {
                $query->where('supplier_id', $request->search_supplier_id);
            }
            
            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('product', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="view_product(' . $data->product_id . ')">' . $data->product->chalan_no . '</a>';
                })->addColumn('supplier', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="supplier_details(' . $data->supplier_id . ')">' . $data->supplier->name . '</a>';
                })->addColumn('Quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('unit_price', function ($data) {
                    return $data->unit_price;
                })->addColumn('total_purchas_price', function ($data) {
                    return $data->total_purchas_price;
                })->addColumn('actual_purchas_price', function ($data) {
                    return $data->actual_purchas_price;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/purchase/edit/' . $data->id) . '" class="edit btn btn-outline-success btn-sm" >Edit</a>';
                    return $actionBtn;
                })->rawColumns(['product', 'supplier', 'Quantity', 'unit_price', 'total_purchas_price', 'actual_purchas_price', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'product_id' => 'required',
            'supplier_id' => 'required',
            'quantity' => 'required',
            'unit_price' => 'required',
            'total_purchas_price' => 'required',
            'actual_purchas_price' => 'required',
        ]);

        $product = ModelProduct::find($request->product_id);
        $product->quantity = $request->quantity;
        $product->update();
        
        $actual_unit_price = $request->actual_purchas_price / $request->quantity;

        $request->request->add(['created_by' => Auth::user()->id,'actual_unit_price'=>$actual_unit_price]);
        purchaseModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function delete($id)
    {
        purchaseModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }

    public function show($id)
    {
        $purchase = purchaseModel::find($id);
        return $data = [
            'purchase' => $purchase,
            'supplier' => $purchase->supplier->name,
            'product' => $purchase->product->chalan_no,
        ];
    }
    
    public function edit($id)
    {
        $purchase = purchaseModel::find($id);
        $products = ModelProduct::get();
        $supplier = supplierModel::all();
        $company = CompanyModel::all();
        
        return view('layouts.backend.purchase.purchase_edit',compact('purchase','products','supplier','company'));
        
    }
    
    public function update(Request $request,$id)
    {
        $request->validate([
            'product_id' => 'required',
            'supplier_id' => 'required',
            'quantity' => 'required',
            'unit_price' => 'required',
            'total_purchas_price' => 'required',
            'actual_purchas_price' => 'required',
        ]);

        
        purchaseModel::find($id)->update($request->all());

        
        Toastr::success('Update Successful', 'Updated');
        return redirect()->back();
        
    }
}
