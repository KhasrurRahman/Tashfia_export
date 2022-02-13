<div class="col-12">
    <form id="search_form" name="search_form" action="{{route('admin.report/deposit_expense_report_search')}}" method="post" target="_blank">
        @csrf
        <div class="row">
            <div class="col-5">
                <div class="form-group">
                    <label>Date from:</label>
                    <input type="date" class="form-control" id="from_date" name="from_date">
                </div>
            </div>

            <div class="col-5">
                <div class="form-group">
                    <label>Date to:</label>
                    <input type="date" class="form-control" id="to_date" name="to_date">
                </div>
            </div>

            
            <div class="col-2">
                <div class="form-group">
                    <button type="submit" class="btn btn-success ml-2 btn-block" id="btnFiterSubmitSearch"
                            style="margin-top: 30px">Print
                    </button>
                </div>
            </div>

        </div>

    </form>
</div>


