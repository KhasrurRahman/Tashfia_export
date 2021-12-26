<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\SalesExecutiveModel;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class SalesExecutiveController extends Controller
{
    public function show()
    {
        return view('layouts.backend.sales_executive.sales_executive');
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = SalesExecutiveModel::query();
            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('name', function ($data) {
                    return $data->name;
                })->addColumn('email', function ($data) {
                    return $data->email;
                })->addColumn('phone', function ($data) {
                    return $data->phone;
                })->addColumn('address', function ($data) {
                    return $data->address;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="' . url('admin/sales_executive/edit/' . $data->id) . '" class="edit btn btn-outline-success btn-sm" target="null">Edit</a>';
                    return $actionBtn;
                })
                ->rawColumns(['name', 'email', 'phone', 'address', 'action'])
                ->make(true);
        }
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $menu = new SalesExecutiveModel();
        $menu->name = $request->name;
        $menu->email = $request->email;
        $menu->phone = $request->phone;
        $menu->address = $request->address;
        $menu->save();

        Toastr::success('Created Successfully', 'Created');
        return redirect()->back();
    }

    public function edit($id)
    {
        $sales = SalesExecutiveModel::find($id);
        return view('layouts.backend.sales_executive.edit_sales_executive', compact('sales'));
    }
    
    public function add()
    {
        return view('layouts.backend.sales_executive.create_sales_executive');
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
        ]);

        $menu = SalesExecutiveModel::find($id);
        $menu->name = $request->name;
        $menu->email = $request->email;
        $menu->phone = $request->phone;
        $menu->address = $request->address;
        $menu->update();

        Toastr::success('Update Successfully', 'Updated');
        return redirect()->back();
    }
}
