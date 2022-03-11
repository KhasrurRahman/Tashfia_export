<script>
    $(document).ready(function () {
        $('.select2').select2();
    });

    $(function () {
        var table = $('.yajra-datatable').DataTable({
            "footerCallback": function (row, data, start, end, display) {
                var api = this.api(), data;
                var intVal = function (i) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '') * 1 :
                        typeof i === 'number' ?
                            i : 0;
                };
                total = this.api().ajax.json().sum_balance
                pageTotal = api
                    .column(4, {page: 'current'})
                    .data()
                    .sum()
                $(api.column(4).footer()).html(
                    ' ( Tk ' + total + ')'
                );
            },
            "order": [[1, 'desc']],
            "bFilter": false,
            "columnDefs": [{
                "className": "text-left", "targets": "_all", 'orderable': false, 'searchable': false,
            }],
            processing: true,
            serverSide: true,
            "language": {
                processing: '<i class="fa fa-spinner fa-spin fa-3x fa-fw"></i><span class="sr-only">Loading...</span>'
            },
            drawCallback: function (settings) {
                var api = this.api();
                $('#total_data').html(api.ajax.json().recordsTotal);
            },
            ajax: {
                url: "{{ url('admin/report/profit_search') }}",
                type: 'POSt',
                data: function (d) {
                    d.from_date = $('#from_date').val();
                    d.to_date = $('#to_date').val();
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'date', name: 'date'},
                {data: 'customer_name', name: 'customer_name'},
                {data: 'sales_amount', name: 'sales_amount'},
                {data: 'profit_or_loss', name: 'profit_or_loss'},
            ],
        });
        $('#btnFiterSubmitSearch').on('click', function (event) {
            event.preventDefault();
            table.draw(true);
        });
    });


    function form_reset() {
        document.getElementById("search_form").reset();
        $('.select2').val(null).trigger('change');
        $('.yajra-datatable').DataTable().ajax.reload(null, false);
    }

</script>
