<div class="col-12">
    <form id="search_form" name="search_form" action="{{route('admin.sales/sales_history_pdf_generate')}}" method="post" target="_blank">
        @csrf
        <div class="row">
            <div class="col-3">
                <div class="form-group">
                    <label>Company:</label>
                    <select class="form-control select2" id="search_company_id" name="search_company_id">
                        <option selected disabled>Please Select</option>
                        @foreach($company as $data)
                            <option value="{{$data->id}}">{{$data->company_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-3">
                <div class="form-group">
                    <label>Customer:</label>
                    <select class="form-control select2" id="search_customer_id" name="search_customer_id">
                        <option selected disabled>Please Select company first</option>
                        @foreach($customer as $data)
                            <option value="{{$data->id}}">{{$data->name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            
            <div class="col-3">
                <div class="form-group">
                    <label>Payment status:</label>
                    <select class="form-control select2" id="search_payment_status" name="search_payment_status">
                        <option selected disabled>Please Select Category</option>
                        <option value="paid">paid</option>
                        <option value="unpaid">unpaid</option>
                    </select>
                </div>
            </div>

            <div class="col-3">
                <div class="form-group">
                    <label>Invoice Number:</label>
                    <input type="text" class="form-control" id="invoice_number" name="invoice_number">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Date from:</label>
                    <input type="date" class="form-control" id="from_date" name="from_date">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Date to:</label>
                    <input type="date" class="form-control" id="to_date" name="to_date">
                </div>
            </div>

            
            <div class="col-2">
                <div class="form-group">
                    <button type="button" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                            style="margin-top: 30px">search
                    </button>
                </div>
            </div>

            <div class="col-1">
                <div class="form-group">
                    <button type="button" class="btn btn-danger btn-info btn-block" onclick="form_reset()" style="margin-top: 30px">
                        Clear
                    </button>
                </div>
            </div>
            
            <div class="col-1">
                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-info" style="margin-top: 30px">
                        Print Report
                    </button>
                </div>
            </div>
        </div>
    </form>
</div>
