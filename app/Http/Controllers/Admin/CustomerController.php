<?php

namespace App\Http\Controllers\Admin;

use App\ChequeDetailModel;
use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use App\Models\salesDepartmentModel;
use App\Models\SalesPaymentModel;
use Barryvdh\DomPDF\Facade as PDF;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Yajra\DataTables\Facades\DataTables;

class CustomerController extends Controller
{
    public function index()
    {
        $company = CompanyModel::all();
        return view('layouts.backend.customer.customer', compact('company'));
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = CustomerModel::query();

            if ($request->search_company_id !== null) {
                $query->where('company_id', $request->search_company_id);
            }

            if ($request->search_phone !== null) {
                $query->where('personal_phone', 'like', '%' . $request->search_phone . '%');
            }

            if ($request->search_name !== null) {
                $query->where('name', 'like', '%' . $request->search_name . '%');
            }

            if ($request->customer_id !== null) {
                $query->where('id', 'like', '%' . $request->customer_id . '%');
            }

            if ($request->company_type !== null) {
                $query->whereHas('company', function ($query2) use ($request) {
                    $query2->where('category', 'like', '%' . $request->company_type . '%');
                });
            }

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return '<a href="' . url('admin/customer/view/' . $data->id) . '" class="text-success font-weight-bold" >'.$data->name.'</a>';
                })->addColumn('company', function ($data) {
                    return $data->company ? $data->company->company_name : $data->company_name;
                })->addColumn('personal_phone', function ($data) {
                    return $data->personal_phone;
                })->addColumn('present_address', function ($data) {
                })->addColumn('email', function ($data) {
                    return $data->email;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
                })->addColumn('total_sales_due', function ($data) {
                    return $data->sales_history->sum('due');
                })->addColumn('total_paid', function ($data) {
                    return $data->sales_history->sum('payment_amount');
                })->addColumn('customer_type', function ($data) {
                    $status = '';
                    if ($data->type == 'general') {
                        $status = '<span class="right badge badge-success">Regular</span>';
                    } else {
                        $status = '<span class="right badge badge-info">Walk in</span>';
                    }
                    return $status;
                })->addColumn('photo', function ($data) {
                    $img = '<img src="' . asset('upload/customer_image/' . $data->photo) . '" style="height:100px">';
                    return $img;
                })->addColumn('action', function ($data) {
                    $buttons = '<a href="javascript:void(0)" class="dropdown-item" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/customer/edit/' . $data->id) . '" class="dropdown-item" >Edit</a> <a href="' . url('admin/customer/view/' . $data->id) . '" class="dropdown-item" >View</a><a href="' . url('admin/customer/sales_payment_history_pdf/' . $data->id) . '" class="dropdown-item" target="_blank">Payment History</a>';

                    $action_button = '<div class="btn-group"> <button type="button" class="btn btn-sm dropdown-item dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="background: #0d8d2d;color: white;text-align: center"> Action <i class="ik ik-chevron-down mr-0 align-middle"></i> </button> <div class="dropdown-menu dropdown-menu-right text-center">' . $buttons . ' </div> </div>';
                    return $action_button;
                })->rawColumns(['name', 'company', 'personal_phone', 'present_address', 'email', 'balance', 'total_sales_due', 'total_paid', 'photo',  'customer_type', 'action'])
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

            if (!Storage::disk('public')->exists('customer_image')) {
                Storage::disk('public')->makeDirectory('customer_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('customer_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        CustomerModel::create($request->all());

        return redirect()->route('admin.customer/all_customer');
    }

    public function delete($id)
    {
        CustomerModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }

    public function show($id)
    {
        $customer = CustomerModel::find($id);
        $total_due = $customer->sales_history->where('due', '>', 0)->sum('due');
        $link = '<a href="' . url('admin/customer/sales_payment_history_pdf/' . $customer->id) . '" class="edit btn btn-success btn-sm" target="_blank">Show all payment History</a>';
        $data = '<div class="card">
          <ul class="list-group list-group-flush">
            <li class="list-group-item">Name: ' . $customer->name . '</li>
            <li class="list-group-item">Company: ' . $customer->company->company_name . '</li>
            <li class="list-group-item">Address: ' . $customer->present_address . '</li>
            <li class="list-group-item">Phone: ' . $customer->personal_phone . '</li>
            <li class="list-group-item">Previous Due: ' . $customer->balance . '</li>
            <li class="list-group-item">Total Due: ' . $total_due . '</li>
            ' . $link . '
          </ul>
        </div>';
        return $data;
    }

    public function edit($id)
    {
        $company = CompanyModel::all();
        $customer = CustomerModel::find($id);

        return view('layouts.backend.customer.edit_customer', compact('customer', 'company'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $image = $request->file('customer_photo');

        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('customer_image')) {
                Storage::disk('public')->makeDirectory('customer_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('customer_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        CustomerModel::find($id)->update($request->all());

        Toastr::success('Updated Successfully', 'Updated');
        return redirect()->route('admin.customer/all_customer');
    }

    public function view($id)
    {
        $customer = CustomerModel::find($id);
        return view('layouts.backend.customer.customer_profile', compact('customer'));
    }

    public function manual_due_payment(Request $request)
    {
        $customer = CustomerModel::find($request->customer_id);
        if ($request->payment_amount > $customer->balance or $request->payment_amount == 0) {
            Toastr::error('Your Payment amount must be less than or equal to Due amount', '');
            return redirect()->back();
        }

        $sales_payemnt = new SalesPaymentModel();
        $sales_payemnt->customer_id = $request->customer_id;
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


    public function sales_payment_history_pdf($customer_id)
    {
        $sales_history = salesDepartmentModel::query()->join('sales_payments', 'sales_payments.sales_id', '=', 'sales.id')->where('sales.customer_id', $customer_id)->select(["sales.created_at", "sales.sales_code", "sales.due", "sales.payment_amount", "sales_payments.payment_mode", "sales.total_price"])->get();

        $customer = CustomerModel::find($customer_id);
        $total_due = $sales_history->sum('due');
        $total_payment = $sales_history->sum('payment_amount');
        $total_amount = $sales_history->sum('total_price');

//        $pdf = PDF::loadView('layouts.backend.customer.customer_payment_history_invoice_pdf', compact('sales_history', 'total_due', 'total_payment', 'total_amount'));
//        return $pdf->download('customer_payment_history_invoice.pdf');

        return view('layouts.backend.customer.customer_payment_history_invoice_pdf', compact('sales_history', 'total_due', 'total_payment', 'total_amount', 'customer'));
    }

}
