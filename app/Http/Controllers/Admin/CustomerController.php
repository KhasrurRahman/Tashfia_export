<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\CustomerModel;
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

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('company', function ($data) {
                    return $data->company ? $data->company->company_name : '';
                })->addColumn('personal_phone', function ($data) {
                    return $data->personal_phone;
                })->addColumn('present_address', function ($data) {
                })->addColumn('email', function ($data) {
                    return $data->email;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
                })->addColumn('photo', function ($data) {
                    $img = '<img src="' . asset('upload/customer_image/' . $data->photo) . '" style="height:100px">';
                    return $img;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/customer/edit/' . $data->id) . '" class="edit btn btn-outline-success btn-sm" >Edit</a> <a href="' . url('admin/customer/view/' . $data->id) . '" class="edit btn btn-outline-info btn-sm" >View</a>';
                    return $actionBtn;
                })->rawColumns(['name', 'company', 'personal_phone', 'present_address', 'email', 'balance', 'photo', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
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
        CustomerModel::create($request->all());

        return redirect()->back();
    }

    public function delete($id)
    {
        CustomerModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }

    public function show($id)
    {
        $customer = CustomerModel::find($id);
        $output = '<div class="card" style="padding: 10px;background: #6b279b4d;">
                    <div class="crad-header" style="padding: 5px"><b>Customer Details: </b></div>
                    <div class="card_body">
                    <ul class="list-group">
                        <li class="list-group-item">Name: ' . $customer->name . '</li>
                        <li class="list-group-item">Email: ' . $customer->email . '</li>
                        <li class="list-group-item">Address: ' . $customer->present_address . '</li>
                        <li class="list-group-item">Phone: ' . $customer->personal_phone . '</li>
                      </ul>
                    </div>
                    </div>';
        return $output;
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

        return redirect()->back();
    }

    public function view($id)
    {
        $customer = CustomerModel::find($id);
        return view('layouts.backend.customer.customer_profile',compact('customer'));
    }
}
