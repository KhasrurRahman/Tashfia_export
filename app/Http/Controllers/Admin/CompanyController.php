<?php

namespace App\Http\Controllers\Admin;


use App\CompanyModel;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class CompanyController extends Controller
{
    public function index()
    {
        return view('layouts.backend.company.company');
    }

    public function store(Request $request)
    {
        $request->validate([
            'company_name' => 'required',
        ]);

        CompanyModel::create($request->all());
        return redirect()->back();
    }

    public function search(Request $request)
    {
        if ($request->ajax()) {
            $query = CompanyModel::query();
            $query->orderBy('created_at', 'DESC');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('company_name', function ($data) {
                    return $data->company_name;
                })->addColumn('company_address', function ($data) {
                    return $data->company_address;
                })->addColumn('company_contact_no', function ($data) {
                    return $data->company_contact_no;
                })->addColumn('country', function ($data) {
                    return $data->country;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" class="edit btn btn-outline-danger btn-sm" onclick="delete_data(' . $data->id . ')">Delete</a> ';
                    return $actionBtn;
                })->rawColumns(['company_name', 'company_address', 'company_contact_no', 'country', 'action'])
                ->make(true);
        }
    }
    
    public function delete($id)
    {
        CompanyModel::find($id)->delete();
        return response()->json(['success' => 'Done']);
    }
}
