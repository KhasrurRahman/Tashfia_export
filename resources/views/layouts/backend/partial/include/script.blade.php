<script src="{{ asset('backend/js/all.js') }}"></script>
<script src="{{ asset('backend/dist/js/theme.js') }}"></script>
<script src="{{ asset('backend/js/chat.js') }}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script>
    toastr.options = {
        "newestOnTop": true,
        "progressBar": true,
        "showMethod": "slideDown",
        "hideMethod": "slideUp"
    }
</script>
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
