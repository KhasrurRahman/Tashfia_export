<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\ModelProduct;
use App\Models\purchaseModel;
use App\Models\supplierModel;
use App\PurchasePaymentModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class purchaseController extends Controller
{
    public function index()
    {
        if (check_initial_balance_status() == 0) {
            Toastr::error('please Update Opening balance for purchase or sale,Contact With Accountant', 'Update Opening Balance');
            return redirect()->route('admin.initalBalance/create_initial_balance');
        }
        $products = ModelProduct::all();
        $supplier = supplierModel::all();
        $company = CompanyModel::all();
        return view('layouts.backend.purchase.purchase', compact('products', 'supplier', 'company'));
    }

    public function create()
    {
        $supplier = supplierModel::all();
        $products = ModelProduct::all();
        return view('layouts.backend.purchase.create_purchase.create_purchase', compact('supplier', 'products'));
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
                    $query2->where('chalan_no', 'like', '%' . $request->product_name . '%');
                });
            }

            if ($request->search_supplier_id !== null) {
                $query->where('supplier_id', $request->search_supplier_id);
            }

//          $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('product', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="view_product(' . $data->product_id . ')">' . $data->product->chalan_no . '</a>';
                })->addColumn('supplier', function ($data) {
                    return '<a href="javascript:void(0)" class="edit btn btn-outline-success btn-sm" onclick="supplier_details(' . $data->supplier_id . ')">' . $data->supplier->name . '</a>';
                })->addColumn('available_quantity', function ($data) {
                    return $data->quantity;
                })->addColumn('Quantity', function ($data) {
                    return $data->main_quantity;
                })->addColumn('unit_price', function ($data) {
                    return $data->unit_price;
                })->addColumn('total_purchas_price', function ($data) {
                    return $data->total_purchas_price;
                })->addColumn('actual_purchas_price', function ($data) {
                    return $data->actual_purchas_price;
                })->addColumn('payment_status', function ($data) {
                    $status = '';
                    if ($data->status == 1) {
                        $status = '<span class="right badge badge-info">Paid</span>';
                    } elseif ($data->status == 0) {
                        $status = '<span class="right badge badge-warning">Unpaid</span>';
                    }
                    return $status;
                })->addColumn('action', function ($data) {
                    if ($data->due > 0) {
                        $pay_button = ' <a href="javascript:void(0)" class="dropdown-item" onclick="pay_due_bill(' . $data->id . ')" >Pay bill</a>';
                    } else {
                        $pay_button = '';
                    }
                    $single_button = '<a href="javascript:void(0)" class="dropdown-item" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/purchase/edit/' . $data->id) . '" class="dropdown-item" >Edit</a>';
                    $payments = '<a href="#" onclick="invoice_payment_history(' . $data->id . ')" class="dropdown-item">Payments</a>';

                    $action_button = '<div class="btn-group"> <button type="button" class="btn btn-sm dropdown-item dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #0d8d2d;color: white;text-align: center"> Action <i class="ik ik-chevron-down mr-0 align-middle"></i> </button> <div class="dropdown-menu dropdown-menu-right text-center">' . $single_button . $pay_button .$payments. ' </div> </div>';

                    return $action_button;
                })
                ->with('total_quantity', $query->sum('main_quantity'))
                ->with('total_available_quantity_quantity', $query->sum('Quantity'))
                ->with('total_actual_purchas_price', $query->sum('actual_purchas_price'))
                ->with('total_paid', $query->sum('payment_amount'))
                ->with('total_due', $query->sum('due'))
                ->rawColumns(['product', 'supplier', 'Quantity', 'unit_price', 'total_purchas_price', 'actual_purchas_price', 'action', 'available_quantity', 'payment_status'])
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
            'payment_amount' => 'required',
            'payment_type' => 'required',
        ]);

        if ($request->total_purchas_price > $request->actual_purchas_price) {
            return response()->json(['custom_error' => 'Your Actual Purchase price must be less than or equal to Total purchase price']);
        }

        if ($request->payment_amount > $request->actual_purchas_price) {
            return response()->json(['custom_error' => 'Your Payment amount must be less than or equal to Total Amount']);
        }


//        $product = ModelProduct::find($request->product_id);
//        $product->quantity = $request->quantity;
//        $product->update();

        $actual_unit_price = $request->actual_purchas_price / $request->quantity;
        $due = $request->actual_purchas_price - $request->payment_amount;

        $request->request->add(['created_by' => Auth::user()->id, 'actual_unit_price' => $actual_unit_price, 'main_quantity' => $request->quantity, 'payment_amount' => $request->payment_amount, 'payment_mode' => $request->payment_type, 'due' => $due]);
        $purchase = purchaseModel::create($request->all());

        $purchase_payment = new PurchasePaymentModel();
        $purchase_payment->purchase_id = $purchase->id;
        $purchase_payment->supplier_id = $request->supplier_id;
        $purchase_payment->amount = $request->payment_amount;
        $purchase_payment->payment_mode = $request->payment_type;
        $purchase_payment->remark = $request->per_remarks;
        if ($request->actual_purchas_price == $request->payment_amount) {
            $purchase_payment->status = 1;
        }
        if ($request->payment_type == "Cheque") {
            $purchase_payment->cheque_number = $request->cheque_number;
            $purchase_payment->cheque_due_date = $request->cheque_date;
        }
        if ($request->payment_type == "Bkash") {
            $purchase_payment->bkash_number = $request->bkash_number;
            $purchase_payment->bkash_trns_id = $request->bkash_trns_id;
        }
        if ($request->payment_type == "Bank") {
            $purchase_payment->bank_name = $request->bank_name;
        }
        $purchase_payment->save();

        return response()->json(['success' => 'success']);
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

        return view('layouts.backend.purchase.purchase_edit', compact('purchase', 'products', 'supplier', 'company'));

    }

    public function update(Request $request, $id)
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

    public function purchase_pdf_generate(Request $request)
    {
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
                $query2->where('chalan_no', 'like', '%' . $request->product_name . '%');
            });
        }

        if ($request->search_supplier_id !== null) {
            $query->where('supplier_id', $request->search_supplier_id);
        }

        $purchase_history = $query->orderBy('id', 'desc')->get();

        return view('layouts.backend.purchase.purchase_pdf_invoice', compact('purchase_history'));
    }


    public function purchase_due_payment(Request $request)
    {

        $request->validate([
            'payment_amount' => 'required',
            'payment_type' => 'required',
        ]);

        $purchase = purchaseModel::find($request->sale_id);
        if ($request->payment_amount > $purchase->due or $request->payment_amount == 0) {
            return response()->json(['error' => 'Your Payment amount must be less than or equal to Due amount']);
        }
        $purchase->payment_amount += $request->payment_amount;
        $purchase->due -= $request->payment_amount;
        $purchase->update();
        if ($purchase->due == 0) {
            $purchase->status = 1;
            $purchase->update();
        }

        $purchase_payemnt = new PurchasePaymentModel();
        $purchase_payemnt->purchase_id = $request->sale_id;
        $purchase_payemnt->supplier_id = $purchase->supplier_id;
        $purchase_payemnt->amount = $request->payment_amount;
        $purchase_payemnt->payment_mode = $request->payment_type;
        $purchase_payemnt->save();

        if ($request->payment_type == "Cheque") {
            $purchase_payemnt->cheque_number = $request->cheque_number;
            $purchase_payemnt->cheque_due_date = $request->cheque_date;
        }
        if ($request->payment_type == "Bkash") {
            $purchase_payemnt->bkash_number = $request->bkash_number;
            $purchase_payemnt->bkash_trns_id = $request->bkash_trns_id;
        }
        if ($request->payment_type == "Bank") {
            $purchase_payemnt->bank_name = $request->bank_name;
        }
        $purchase_payemnt->save();

        return response()->json(['done' => 'success']);
    }

    public function purchase_invoice_payment_history($id)
    {
        $payments = purchaseModel::find($id)->purchase_paymets;

        $output = '<table border="1" width="100%">
                   <tr>
                    <th>Payment Date</th>
                    <th>Payment mode</th>
                    <th>Amount (Tk)</th>
                   </tr>';
        foreach ($payments as $data) {
            $output .= '<tr>
         <td>' . date("d-M-y", strtotime($data->created_at)) . '</td>
         <td>' . $data->payment_mode . '</td>
         <td>' . $data->amount . '</td>
    </tr>';
        }
        return $output;
    }

}
