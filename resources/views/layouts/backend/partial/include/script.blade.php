<script src="{{ asset('all.js') }}"></script>
<!-- Stack array for including inline js or scripts -->
<script src="{{ asset('backend/dist/js/theme.js') }}"></script>
<script src="{{ asset('backend/js/chat.js') }}"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="{{asset('backend/plugins/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
{!! Toastr::message() !!}
<script>
    @if($errors->any())
    @foreach($errors->all() as $error)
    toastr.error('{{ $error }}', 'Error', {
        closeButton: true,
        progressBar: true,
    });
    @endforeach
    @endif
</script>
@stack('js')
