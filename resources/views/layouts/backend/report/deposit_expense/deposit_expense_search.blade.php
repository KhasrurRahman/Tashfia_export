<div class="col-12">
    <form id="search_form" name="search_form" action="{{route('admin.report/deposit_expense_report_search')}}" method="post">
        @csrf
        <div class="row">
            <div class="col-5">
                <div class="form-group">
                    <label>From Date:</label>
                    <input type="date" class="form-control" id="from_date" name="from_date" value="{{date('Y-m-d')}}">
                </div>
            </div>

            <div class="col-5">
                <div class="form-group">
                    <label>To Date:</label>
                    <input type="date" class="form-control" id="to_date" name="to_date" value="{{\Carbon\Carbon::now()->addDay(1)->toDateString()}}">
                </div>
            </div>
            
            <div class="col-2">
                <div class="form-group">
                    <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                            style="margin-top: 30px">Search
                    </button>
                </div>
            </div>

        </div>

    </form>
</div>


