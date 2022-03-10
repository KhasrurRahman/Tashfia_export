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
                total = this.api().ajax.json().total_amount
                $(api.column(4).footer()).html(
                     total + ' Tk '
                );
            },
            "columnDefs": [
                {"className": "text-left", "targets": "_all",'orderable': false,'searchable':false}
            ],
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
                url: "{{ url('admin/asset/search') }}",
                type: 'POSt',
                data: function (d) {
                    d.search_category_id = $('#search_category_id').val();
                    d.from_date = $('#from_date').val();
                    d.to_date = $('#to_date').val();
                    d.search_name = $('#search_name').val();
                    d.search_amount = $('#search_amount').val();
                    d.user_id = $('#user_id').val();
                    d._token = '{{csrf_token()}}'
                }
            },
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex', searchable: false},
                {data: 'date', name: 'date'},
                {data: 'Category', name: 'Category'},
                {data: 'name', name: 'name'},
                {data: 'Amount', name: 'Amount'},
                {data: 'remarks', name: 'remarks'},
                {data: 'action', name: 'action', searchable: false},
            ],
        });
        $('#search_form').on('submit', function (event) {
            event.preventDefault();
            table.draw(true);
        });
    });


    function delete_data(id) {
        swal({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                $.ajax({
                    type: 'get',
                    url: '{{url('admin/expenses/expenses_delete')}}/' + id,
                    success: function (response) {
                        if (response) {
                            if (response.permission == false) {
                                toastr.error('you dont have that Permission', 'Permission Denied');
                            } else {
                                toastr.success('Deleted Successful', 'Deleted');
                                $('.yajra-datatable').DataTable().ajax.reload();
                            }
                        }
                    }
                });
            } else if (
                result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                    'Cancelled',
                    'Your data is safe :)',
                    'error'
                )
            }
        })
    }


    // save country information
    $('#add_button').on('submit', function (event) {
        event.preventDefault();
        $.ajax({
            url: "{{url('admin/asset/store_asset')}}",
            type: "POST",
            data: $("form").serializeArray(),
            success: function (response) {
                if (response) {
                    if (response.permission == false) {
                        toastr.error('you dont have that Permission', 'Permission Denied');
                    } else {
                        $('#add_button').modal('hide');
                        $("#save_info")[0].reset();
                        toastr.success('Country Information Saved', 'Saved');
                        $('.yajra-datatable').DataTable().ajax.reload();
                    }
                }
            },
            error: function (response) {
                $('#Error_status_category_id').text(response.responseJSON.errors.category_id);
                $('#Error_status_name').text(response.responseJSON.errors.name);
                $('#Error_status_balance').text(response.responseJSON.errors.balance);
                $('#Error_status_Amount').text(response.responseJSON.errors.Amount);
            }
        });
    })


    function form_reset() {
        document.getElementById("search_form").reset();
        $('.yajra-datatable').DataTable().ajax.reload(null, false);
    }
</script>
