<div class="col-12">
    <form id="search_form" name="search_form">
        <div class="row">

            <div class="col-4">
                <div class="form-group">
                    <label>Company:</label>
                    <select class="form-control select2" id="search_company_id">
                        <option selected disabled>Please Select</option>
                        @foreach($company as $data)
                            <option value="{{$data->id}}">{{$data->company_name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Name:</label>
                    <input type="text" class="form-control" id="search_name">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Customer ID:</label>
                    <input type="text" class="form-control" id="customer_id">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Phone Number:</label>
                    <input type="text" class="form-control" id="search_phone">
                </div>
            </div>


            <div class="col-3">
                <div class="form-group">
                    <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                            style="margin-top: 30px">search
                    </button>
                </div>
            </div>

            <div class="col-1">
                <div class="form-group">
                    <button type="button" class="btn btn-danger btn-info" onclick="form_reset()" style="margin-top: 30px">
                        Clear
                    </button>
                </div>
            </div>


        </div>

    </form>
</div>
