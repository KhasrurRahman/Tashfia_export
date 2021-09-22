<?php

namespace App\Http\Controllers\Admin\Company;

use App\Http\Controllers\Controller;
use App\Models\Company\ModelCompany;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class ControllerCompany extends Controller
{
    public function show_company()
    {
        return view('layouts.Company_setup.Company_info.company_info');
    }

    public function search_company(Request $request)
    {
        if ($request->ajax()) {
            $query = ModelCompany::query();
            $query->orderBy('id', 'desc');
            return Datatables::of($query)
                ->setTotalRecords($query->count())
                ->addIndexColumn()
                ->addColumn('company_name', function ($data) {
                    return $data->company_name;
                })->addColumn('company_name_bn', function ($data) {
                    return $data->company_name_bn;
                })->addColumn('comapny_reg_person_name', function ($data) {
                    return $data->comapny_reg_person_name;
                })->addColumn('company_bin_no', function ($data) {
                    return $data->company_bin_no;
                })->addColumn('company_address', function ($data) {
                    return $data->company_address;
                })->addColumn('company_phone_number', function ($data) {
                    return $data->company_phone_number;
                })->addColumn('company_email_address', function ($data) {
                    return $data->company_email_address;
                })->addColumn('company_fax_number', function ($data) {
                    return $data->company_fax_number;
                })->addColumn('action', function ($data) {
                    $actionBtn = '<a href="javascript:void(0)" onclick="delete_data(' . $data->id . ')" class="edit btn btn-outline-danger btn-sm" >Delete</a> <a href="' . url('admin/company/edit_company/' . $data->id) . '"  class="edit btn btn-outline-success btn-sm" >Edit</a>';
                    return $actionBtn;
                })->rawColumns(['company_name', 'company_name_bn', 'comapny_reg_person_name', 'company_bin_no', 'company_address','company_phone_number', 'company_email_address', 'company_fax_number', 'action'])
                ->make(true);
        }
    }

    public function create_company()
    {
        return view('layouts.Company_setup.Company_info.add_company');
    }

    public function save_company(Request $request)
    {
        $request->validate([
            'company_name' => 'required',
            'company_name_bn' => 'required',
            'company_short_name' => 'required',
            'company_short_name_bn' => 'required',
            'comapny_reg_person_name' => 'required',
            'company_reg_person_nid' => 'required',
            'company_business_activity_code' => 'required',
            'company_business_acitvity_code_bn' => 'required',
            'company_phone_number' => 'required',
            'company_email_address' => 'required',
            'company_fax_number' => 'required',
            'company_business_activity' => 'required',
            'company_business_activity_bn' => 'required',
            'company_bin_no' => 'required',
            'company_bin_no_bn' => 'required',
            'company_address' => 'required',
            'company_adddress_bn' => 'required',
            'company_area_code' => 'required',
            'company_area_code_bn' => 'required',
            'company_custom_office_area' => 'required',
            'company_custom_office_area_bn' => 'required',
        ]);
        ModelCompany::create($request->all());
        Toastr::success('Company Created Successfully', 'Created');
        return redirect()->route('admin.company/show_company');
    }

    public function delete_company($id)
    {
        ModelCompany::find($id)->delete();
        return response()->json(['Done' => 'Done']);
    }

    public function edit_company($id)
    {
        $company = ModelCompany::find($id);
        return view('layouts.Company_setup.Company_info.edit_company',compact('company'));
    }

    public function update_company(Request $request,$id)
    {
        $request->validate([
            'company_name' => 'required',
            'company_name_bn' => 'required',
            'company_short_name' => 'required',
            'company_short_name_bn' => 'required',
            'comapny_reg_person_name' => 'required',
            'company_reg_person_nid' => 'required',
            'company_business_activity_code' => 'required',
            'company_business_acitvity_code_bn' => 'required',
            'company_phone_number' => 'required',
            'company_email_address' => 'required',
            'company_fax_number' => 'required',
            'company_business_activity' => 'required',
            'company_business_activity_bn' => 'required',
            'company_bin_no' => 'required',
            'company_bin_no_bn' => 'required',
            'company_address' => 'required',
            'company_adddress_bn' => 'required',
            'company_area_code' => 'required',
            'company_area_code_bn' => 'required',
            'company_custom_office_area' => 'required',
            'company_custom_office_area_bn' => 'required',
        ]);
        ModelCompany::find($id)->update($request->all());
        Toastr::success('Company Updated Successfully', 'Updated');
        return redirect()->route('admin.company/show_company');
    }

}
