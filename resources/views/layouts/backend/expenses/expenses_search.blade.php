<div class="col-12">
    <form id="search_form" name="search_form">
        <div class="row">
            <div class="col-3">
                <div class="form-group">
                    <label>Category:</label>
                    <select class="form-control search_box_select2" name="search_category_id" id="search_category_id">
                        <option selected disabled>Please Select Category</option>
                        @foreach($category as $data)
                            <option value="{{$data->id}}">{{$data->name}}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Date from:</label>
                    <input type="date" class="form-control" name="from_date" id="from_date">
                </div>
            </div>

            <div class="col-4">
                <div class="form-group">
                    <label>Date to:</label>
                    <input type="date" class="form-control" name="to_date" id="to_date"
                           value="{{\Carbon\Carbon::now()->addDay(1)->toDateString()}}">
                </div>
            </div>

            <div class="col-2">
                <label>Name</label>
                <div class="form-group">
                    <input type="text" class="form-control" name="search_name" id="search_name">
                </div>
            </div>

            <div class="col-2">
                <label>Amount</label>
                <div class="form-group">
                    <input type="text" class="form-control" name="search_amount" id="search_amount">
                </div>
            </div>


            <div class="col-2">
                <div class="form-group">
                    <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                            style="margin-top: 30px">search
                    </button>
                </div>
            </div>

            <div class="col-3">
                <div class="form-group">
                    <button type="button" class="btn btn-danger btn-info" onclick="form_reset()" style="margin-top: 30px">
                        Clear
                    </button>
                </div>
            </div>


        </div>

    </form>
</div>


