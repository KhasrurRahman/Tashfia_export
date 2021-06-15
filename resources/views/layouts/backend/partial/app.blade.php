<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}" >
<head>
	<title>@yield('title','') | Khajna - A Complete VAT Management Solution</title>
	<!-- initiate head with meta tags, css and script -->
	@include('layouts.backend.partial.include.head')

</head>
<body id="app" >
    <div class="wrapper">
    	<!-- initiate header-->
    	@include('layouts.backend.partial.include.header')
    	<div class="page-wrap">
	    	<!-- initiate sidebar-->
	    	@include('layouts.backend.partial.include.sidebar')

	    	<div class="main-content">
	    		<!-- yeild contents here -->
	    		@yield('content')
	    	</div>

	    	<!-- initiate chat section-->
	    	@include('layouts.backend.partial.include.chat')


	    	<!-- initiate footer section-->
	    	@include('layouts.backend.partial.include.footer')

    	</div>
    </div>

	<!-- initiate modal menu section-->
	@include('layouts.backend.partial.include.modalmenu')

	<!-- initiate scripts-->
	@include('layouts.backend.partial.include.script')
</body>
</html>
