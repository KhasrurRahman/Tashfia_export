<div class="col-12">
    <form id="search_form" name="search_form">
        <div class="row">
            
            <div class="col-4">
                <div class="form-group">
                    <label>Sales Executive:</label>
                    <select class="form-control select2" id="search_sales_executive">
                        <option selected disabled>Please Select</option>
                        @foreach($sales_executives as $data)
                            <option value="{{$data->id}}">{{$data->name}}</option>
                        @endforeach
                    </select>
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


