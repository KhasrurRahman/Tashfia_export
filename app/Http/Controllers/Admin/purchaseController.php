<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ModelProduct;
use App\Models\purchaseModel;
use App\Models\supplierModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class purchaseController extends Controller
{
    public function index()
    {
        $products = ModelProduct::get();
        $supplier = supplierModel::all();
        return view('layouts.backend.purchase.purchase',compact('products','supplier'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = purchaseModel::query();

            $query->orderBy('created_at', 'ASC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('product', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="view_product(' . $data->product_id . ')">'.$data->product->chalan_no.'</a>';
                })->addColumn('supplier', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="supplier_details(' . $data->supplier_id . ')">'.$data->supplier->name.'</a>';
                })->addColumn('Quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('unit_price', function ($data) {
                    return $data->unit_price;
                })->addColumn('total_purchas_price', function ($data) {
                    return $data->total_purchas_price;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a>';
                    return $actionBtn;
                })->rawColumns(['product','supplier','Quantity','unit_price','total_purchas_price','action'])
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
        ]);
        
        $product = ModelProduct::find($request->product_id);
        $product->quantity = $request->quantity;
        $product->update();

        $request->request->add(['created_by' => Auth::user()->id]);
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
          'supplier' =>  $purchase->supplier->name,
          'product' =>  $purchase->product->chalan_no,
        ];
    }
}
