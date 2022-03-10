<div class="col-12">
    <form id="search_form" name="search_form" action="{{route('admin.report/deposit_expense_report_search')}}" method="post" target="_blank">
        @csrf
        <div class="row justify-content-center">
            <div class="col-6">
                <div class="form-group">
                    <label>Pick  a Date:</label>
                    <input type="date" class="form-control" id="date" name="date">
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


