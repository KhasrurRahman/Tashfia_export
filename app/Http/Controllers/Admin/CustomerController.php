<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Yajra\DataTables\Facades\DataTables;

class CustomerController extends Controller
{
    public function index()
    {
        return view('layouts.backend.customer.customer');
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = CustomerModel::query();

            $query->orderBy('created_at', 'ASC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('phone', function ($data) {
                    return $data->phone;
                })->addColumn('address', function ($data) {
                    return $data->address;
                })->addColumn('email', function ($data) {
                    return $data->email;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
                })->addColumn('company_name', function ($data) {
                    return $data->company_name;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/customer/edit/' . $data->id) . '" class="edit btn btn-outline-success btn-sm" target="null">Edit</a>';
                    return $actionBtn;
                })->rawColumns(['name', 'phone', 'address', 'email', 'company_name', 'balance', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'address' => 'required',
            'email' => 'required',
        ]);

        $request->request->add(['created_by' => Auth::user()->id]);
        CustomerModel::create($request->all());
        return response()->json(['Done' => 'Done']);
    }

    public function delete($id)
    {
        CustomerModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }
    
    public function show($id)
    {
        $customer = CustomerModel::find($id);
        $output = '<div class="card">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Name: ' . $customer->name . '</li>
    <li class="list-group-item">Email: ' . $customer->email . '</li>
    <li class="list-group-item">Address: ' . $customer->address . '</li>
    <li class="list-group-item">Phone: ' . $customer->phone . '</li>
  </ul>
</div>';
        return $output;
    }
}
