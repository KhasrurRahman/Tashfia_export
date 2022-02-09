<div class="col-12">
    <form id="search_form" name="search_form" action="{{route('admin.purchase/purchase_pdf_generate')}}" method="post" target="_blank">
        @csrf
        <div class="row">
            <div class="col-4">
                <div class="form-group">
                    <label>Company:</label>
                    <select class="form-control select2" id="search_company_id">
                        <option selected disabled>Please Select</option>
                        @foreach ($company as $data)
                            <option value="{{ $data->id }}">{{ $data->company_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>


            <div class="col-4">
                <div class="form-group">
                    <label>Supplier:</label>
                    <select class="form-control select2" id="search_supplier_id">
                        <option selected disabled>Please Select Company First</option>
                    </select>
                </div>
            </div>

            <div class="col-4">
                <label>Product Name</label>
                <div class="form-group">
                    <input type="text" class="form-control" id="product_name">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Date from:</label>
                    <input type="date" class="form-control" id="from_date">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Date to:</label>
                    <input type="date" class="form-control" id="to_date">
                </div>
            </div>


            <div class="col-2">
                <div class="form-group">
                    <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                        style="margin-top: 30px">search
                    </button>
                </div>
            </div>

            <div class="col-1">
                <div class="form-group">
                    <button type="button" class="btn btn-danger btn-info" onclick="form_reset()"
                        style="margin-top: 30px">
                        Clear
                    </button>
                </div>
            </div>

            <div class="col-1">
                <div class="form-group">
                    <button type="submit" class="btn btn-info btn-info" style="margin-top: 30px">
                        Print
                    </button>
                </div>
            </div>


        </div>

    </form>
</div>
