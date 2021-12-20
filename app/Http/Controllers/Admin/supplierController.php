<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\supplierModel;
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

            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('personal_phone', function ($data) {
                    return $data->personal_phone;
                })->addColumn('present_address', function ($data) {
                    return $data->present_address;
                })->addColumn('email', function ($data) {
                    return $data->email;
                })->addColumn('balance', function ($data) {
                    return $data->balance;
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
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/supplier/edit/' . $data->id) . '" class="edit btn btn-outline-success btn-sm" >Edit</a> ';
                    return $actionBtn;
                })->rawColumns(['name', 'personal_phone', 'present_address', 'email', 'balance', 'company_name', 'company_address', 'company_contact_no', 'photo', 'action'])
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
            Storage::disk('public')->put('supplier_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        supplierModel::create($request->all());
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
        $output = '<div class="card">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Name: ' . $supplier->name . '</li>
    <li class="list-group-item">Email: ' . $supplier->email . '</li>
    <li class="list-group-item">Address: ' . $supplier->address . '</li>
    <li class="list-group-item">Phone: ' . $supplier->phone . '</li>
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

            if (!Storage::disk('public')->exists('customer_image')) {
                Storage::disk('public')->makeDirectory('customer_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('supplier_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        supplierModel::find($id)->update($request->all());
        return redirect()->back();
    }
}
