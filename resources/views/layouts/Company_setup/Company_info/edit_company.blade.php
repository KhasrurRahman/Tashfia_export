@extends('layouts.partial..app')
@section('title','Edit Company')
@push('css')
@endpush
@section('main_menu','HOME')
@section('active_menu','Edit Company')
@section('link',route('admin.adminDashboard'))
@section('content')
    <form class="forms-sample" method="post" action="{{route('admin.company/update_company',$company->id)}}">
        @csrf
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Create Menu</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Company Name</label>
                            <input type="text" class="form-control" name="company_name" value="{{$company->company_name}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Company Bangla Name</label>
                            <input type="text" class="form-control" name="company_name_bn" value="{{$company->company_name_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Short Name</label>
                            <input type="text" class="form-control" name="company_short_name" value="{{$company->company_short_name}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Bangla Short Name</label>
                            <input type="text" class="form-control" name="company_short_name_bn" value="{{$company->company_short_name_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputUsername1">Company Registration person Name</label>
                            <input type="text" class="form-control" name="comapny_reg_person_name" value="{{$company->comapny_reg_person_name}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Company Registration person NID</label>
                            <input type="text" class="form-control" name="company_reg_person_nid" value="{{$company->company_reg_person_nid}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Logo</label>
                            <input type="file" class="form-control" name="company_logo" >
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Business Activity Code</label>
                            <input type="text" class="form-control" name="company_business_activity_code" value="{{$company->company_business_activity_code}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Bangla Business Activity Code</label>
                            <input type="text" class="form-control" name="company_business_acitvity_code_bn" value="{{$company->company_business_acitvity_code_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Company Phone Number</label>
                            <input type="text" class="form-control" name="company_phone_number" value="{{$company->company_business_acitvity_code_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Email</label>
                            <input type="text" class="form-control" name="company_email_address" value="{{$company->company_email_address}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company FAX</label>
                            <input type="text" class="form-control" name="company_fax_number" value="{{$company->company_fax_number}}">
                        </div>
                        <button type="submit" class="btn btn-block btn-primary mr-2">Save</button>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header"><h3>Create Menu</h3></div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputUsername1">Company Business Activity</label>
                            <input type="text" class="form-control" name="company_business_activity" value="{{$company->company_business_activity}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Company Bangla Business Activity</label>
                            <input type="text" class="form-control" name="company_business_activity_bn" value="{{$company->company_business_activity_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company BIN No</label>
                            <input type="text" class="form-control" name="company_bin_no" value="{{$company->company_bin_no}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company BIN No - Bangla</label>
                            <input type="text" class="form-control" name="company_bin_no_bn" value="{{$company->company_bin_no_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputUsername1">Company Address</label>
                            <textarea class="form-control" name="company_address" >{{$company->company_address}}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputUsername1">Company Address - Bangla</label>
                            <textarea class="form-control" name="company_adddress_bn" >{{$company->company_adddress_bn}}</textarea>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Company Area Code</label>
                            <input type="text" class="form-control" name="company_area_code" value="{{$company->company_area_code}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Area Code - Bangla</label>
                            <input type="text" class="form-control" name="company_area_code_bn" value="{{$company->company_area_code_bn}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Custom Office Area</label>
                            <input type="text" class="form-control" name="company_custom_office_area" value="{{$company->company_custom_office_area}}">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Company Custom Office Area - Bangla</label>
                            <input type="text" class="form-control" name="company_custom_office_area_bn" value="{{$company->company_custom_office_area_bn}}">
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </form>


@endsection
@push('js')
    <script src="{{ asset('js/form-components.js') }}"></script>
@endpush

