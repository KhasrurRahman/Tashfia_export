<?php

namespace App\Http\Controllers\Admin;

use App\CompanyModel;
use App\Http\Controllers\Controller;
use App\Models\IngredientModel;
use App\Models\ModelProduct;
use App\Models\ProductCategoryModel;
use App\workworderIngredientModel;
use App\workworderModel;
use App\workworderpartyModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\Facades\Image;
use Yajra\DataTables\Facades\DataTables;

class WorkorderController extends Controller
{
    public function create_workorder_party()
    {
        $company = CompanyModel::all();
        return view('layouts.backend.work_order.work_order_party.work_order_party', compact('company'));
    }

    public function search_workorder_party(Request $request)
    {
        if ($request->ajax()) {
            $query = workworderpartyModel::query();

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
                    $img = '<img src="' . asset('upload/party_image/' . $data->photo) . '" style="height:100px">';
                    return $img;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> <a href="' . url('admin/workorder/edit_workorder_party/' . $data->id) . '" class="edit btn btn-outline-success btn-sm" >Edit</a>';
                    return $actionBtn;
                })->rawColumns(['name', 'personal_phone', 'present_address', 'email', 'balance', 'company_name', 'company_address', 'company_contact_no', 'photo', 'action'])
                ->make(true);
        }
    }

    public function store_workorder_party(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'company_id' => 'required',
        ]);

        $image = $request->file('customer_photo');

        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('party_image')) {
                Storage::disk('public')->makeDirectory('party_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('party_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        workworderpartyModel::create($request->all());
        Toastr::Success('created successfully', 'successful');
        return redirect()->back();
    }

    public function delete_workorder_party($id)
    {
        workworderpartyModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }

    public function show($id)
    {
        $supplier = workworderpartyModel::find($id);
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

    public function edit_workorder_party($id)
    {
        $company = CompanyModel::all();
        $party = workworderpartyModel::find($id);
        return view('layouts.backend.work_order.work_order_party.edit_work_order_party', compact('party', 'company'));
    }

    public function update_workorder_party(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'company_id' => 'required',
        ]);

        $image = $request->file('customer_photo');

        if (isset($image)) {
            $currentDate = Carbon::now()->toDateString();
            $imageName = $currentDate . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            if (!Storage::disk('public')->exists('party_image')) {
                Storage::disk('public')->makeDirectory('party_image');
            }

            $moveImage = Image::make($image)->resize(600, 600)->stream();
            Storage::disk('public')->put('party_image/' . $imageName, $moveImage);

        } else {
            $imageName = "";
        }

        $request->request->add(['created_by' => Auth::user()->id, 'photo' => $imageName]);
        workworderpartyModel::find($id)->update($request->all());

        Toastr::Success('Updated successfully', 'successful');
        return redirect()->back();
    }

    public function create_workorder()
    {
        $product = ModelProduct::all();
        $ingredient = IngredientModel::all();
        $party = workworderpartyModel::all();
        return view('layouts.backend.work_order.create_work_order', compact('ingredient', 'party','product'));
    }

    public function store_workorder(Request $request)
    {

        $request->validate([
            'product_id' => 'required',
        ]);

        $work_order = new workworderModel();
        $work_order->product_id = $request->product_id;
        $work_order->invoice_date = $request->invoice_date;
        $work_order->due_date = $request->due_date;
        $work_order->party_id = $request->party_id;
        $work_order->project_desc = $request->project_desc;
        $work_order->subtotal = $request->subtotal;
        $work_order->tax = $request->tax;
        $work_order->total_amount = $request->total_amount;
        $work_order->save();

        Toastr::success('Created Successfully', 'Created');
        return redirect()->back();
    }

    public function index_workorder()
    {
        return view('layouts.backend.work_order.work_order');
    }

    public function search_workorder(Request $request)
    {
        if ($request->ajax()) {
            $query = workworderModel::query()->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->party->name;
                })->addColumn('product_name', function ($data) {
                    return $data->product->chalan_no;
                })->addColumn('personal_phone', function ($data) {
                    return $data->party->personal_phone;
                })->addColumn('present_address', function ($data) {
                    return $data->party->present_address;
                })->addColumn('email', function ($data) {
                    return $data->party->email;
                })->addColumn('company_name', function ($data) {
                    return $data->party->company ? $data->party->company->company_name : '';
                })->addColumn('due_date', function ($data) {
                    return date("d-M-y", strtotime($data->due_date));
                })->addColumn('created_at', function ($data) {
                    return date("d-M-y", strtotime($data->created_at));
                })->addColumn('action', function ($data) {
                    $actionBtn = ' <a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> ';
                    return $actionBtn;
                })->rawColumns(['name', 'personal_phone', 'present_address', 'email', 'company_name', 'due_date', 'created_at', 'action','product_name'])
                ->make(true);
        }
    }

    public function delete_workorder($id)
    {
        workworderModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }
}
