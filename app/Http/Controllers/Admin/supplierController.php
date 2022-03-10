<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\purchaseModel;
use App\Models\supplierModel;
use App\PurchasePaymentModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Yajra\DataTables\Facades\DataTables;

class supplierController extends Controller
{
    public function index()
    {
        $company = CompanyModel::all();
        return view('layouts.backend.supplier.supplier', compact('company'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = supplierModel::query();

            if ($request->search_company_id !== null) {
                $query->where('company_id', $request->search_company_id);
            }

            if ($request->search_name !== null) {
                $query->where('name', 'like', '%' . $request->search_name . '%');
            }

            if ($request->supplier_id !== null) {
                $query->where('id', 'like', '%' . $request->supplier_id . '%');
            }

            if ($request->search_phone !== null) {
                $query->where('personal_phone', 'like', '%' . $request->search_phone . '%');
            }

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return '<a href="' . url('admin/supplier/profile/' . $data->id) . '" class="text-success font-weight-bold" >'.$data->name.'</a>';
                })->addColumn('personal_phone', function ($data) {
                    return $data->personal_phone;
                })->addColumn('present_address', function ($data) {
                    return $data->present_address;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
                })->addColumn('purchase_due', function ($data) {
                    return $data->purchase->sum('due');
                })->addColumn('company_name', function ($data) {
                    return $data->company ? $data->company->company_name : '';
                })->addColumn('company_address', function ($data) {
                    return $data->company ? $data->company->company_address : '';
                })->addColumn('company_contact_no', function ($data) {
                    return $data->company ? $data->company->company_contact_no : '';
                })->addColumn('photo', function ($data) {
                    $img = '<img src="' . asset('upload/supplier_image/' . $data->photo) . '" style="height:100px">';
                    return $img;
                })->addColumn('action', function ($data) {
                    $buttons = '<a href="javascript:void(0)" class="dropdown-item" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/supplier/edit/' . $data->id) . '" class="dropdown-item" >Edit</a> <a href="' . url('admin/supplier/profile/' . $data->id) . '" class="dropdown-item" >View</a><a href="' . url('admin/supplier/supplier_purchase_history_generate/' . $data->id) . '" class="dropdown-item" target="_blank">Payment History</a>';

                    $action_button = '<div class="btn-group"> <button type="button" class="btn btn-sm dropdown-item dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #0d8d2d;color: white;text-align: center"> Action <i class="ik ik-chevron-down mr-0 align-middle"></i> </button> <div class="dropdown-menu dropdown-menu-right text-center">' . $buttons . ' </div> </div>';
                    return $action_button;
                })->rawColumns(['name', 'personal_phone', 'present_address', 'email', 'balance', 'purchase_due', 'company_name', 'company_address', 'company_contact_no', 'photo', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'company_id' => 'required',
        ]);

        $image = $request->file('customer_photo');

        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('supplier_image')) {
                Storage::disk('public')->makeDirectory('supplier_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('supplier_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        supplierModel::create($request->all());

        Toastr::Success('created successfully', 'successful');
        return redirect()->back();
    }

    public function delete($id)
    {
        supplierModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }

    public function show($id)
    {
        $supplier = supplierModel::find($id);
        $total_due = $supplier->purchase->where('due', '>', 0)->sum('due');
        $link = '<a href="' . url('admin/supplier/supplier_purchase_history_generate/' . $supplier->id) . '" class="edit btn btn-success btn-sm" target="_blank">Show all payment History</a>';
        $output = '<div class="card">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Name: ' . $supplier->name . '</li>
            <li class="list-group-item">Company: ' . $supplier->company->company_name . '</li>
            <li class="list-group-item">Address: ' . $supplier->present_address . '</li>
            <li class="list-group-item">Phone: ' . $supplier->personal_phone . '</li>
            <li class="list-group-item">Total Due: ' . $total_due . '</li>
            '.$link.'
          </ul>
        </div>';
        return $output;
    }

    public function edit($id)
    {
        $company = CompanyModel::all();
        $supplier = supplierModel::find($id);

        return view('layouts.backend.supplier.edit_supplier', compact('supplier', 'company'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'company_id' => 'required',
        ]);

        $image = $request->file('customer_photo');

        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('supplier_image')) {
                Storage::disk('public')->makeDirectory('supplier_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('supplier_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        supplierModel::find($id)->update($request->all());

        Toastr::Success('Updated  successfully', 'successful');
        return redirect()->route('admin.supplier/index');
    }

    public function profile($supplier_id)
    {
        $supplier = supplierModel::find($supplier_id);
        return view('layouts.backend.supplier.supplier_profile', compact('supplier'));
    }

    public function supplier_purchase_history_generate($supplier_id)
    {
        $history = purchaseModel::where('supplier_id', $supplier_id)->get();
        $supplier = supplierModel::find($supplier_id);
        $total_price = $history->sum('total_purchas_price');
        $total_actual_price = $history->sum('actual_purchas_price');
        $total_quantity = $history->sum('quantity');

        return view('layouts.backend.supplier.supplier_payment_history_invoice_pdf', compact('history', 'supplier', 'total_price', 'total_actual_price', 'total_quantity'));
    }


    public function previous_due_payment(Request $request)
    {
        $customer = supplierModel::find($request->supplier_id);
        if ($request->payment_amount > $customer->balance or $request->payment_amount == 0) {
            Toastr::error('Your Payment amount must be less than or equal to Due amount', '');
            return redirect()->back();
        }

        $sales_payemnt = new PurchasePaymentModel();
        $sales_payemnt->supplier_id = $request->supplier_id;
        $sales_payemnt->amount = $request->payment_amount;
        $sales_payemnt->payment_mode = $request->payment_type;
        $sales_payemnt->remark = $request->remark;
        if ($request->payment_type == "Cheque") {
            $sales_payemnt->cheque_number = $request->cheque_number;
            $sales_payemnt->cheque_due_date = $request->cheque_date;
        }
        if ($request->payment_type == "Bkash") {
            $sales_payemnt->bkash_number = $request->bkash_number;
            $sales_payemnt->bkash_trns_id = $request->bkash_trns_id;
        }
        if ($request->payment_type == "Bank") {
            $sales_payemnt->bank_name = $request->bank_name;
        }
        $sales_payemnt->save();

        $customer->balance -= $request->payment_amount;
        $customer->update();

        Toastr::success('Payment Updated', '');
        return redirect()->back();
    }
}
