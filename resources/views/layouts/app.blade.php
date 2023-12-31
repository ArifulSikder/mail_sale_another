<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <!--====== Required meta tags ======-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!--====== Title ======-->
    <title>@yield('title')</title>
    <!--====== Favicon Icon ======-->
    <link rel="icon" href="{{ asset('frontend/assets/images/favicon.png') }}">

    <!--====== Font Awesome ======-->
    <link rel="stylesheet" href="{{ asset('frontend/assets/fonts/font-awesome/css/all.css') }}">
    <!--====== Flat-Icon ======-->
    <link rel="stylesheet" href="{{ asset('frontend/assets/fonts/flaticon/flaticon.css') }}">
    <!--====== Bootstrap ======-->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/bootstrap.min.css') }}">
    <!--====== Main Style ======-->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/style.css') }}">
    <!--====== responsive Style ======-->
    <link rel="stylesheet" href="{{ asset('frontend/assets/css/responsive.css') }}">

</head>
<body>
    <!-- header section start -->
    @include('frontend.include.header')
    <!-- header section end -->
    {{ $slot }}
    <!-- footer Section start -->
   @include('frontend.include.footer')
    <!-- footer Section end -->

     <!-- ====== Alert start ====== -->
     <div class="alert-area">
      <div class="alert alert-dismissible fade show fixed-bottom" role="alert">
        <div class="text-center">
          <strong>Best Offer – 10% instant discount if you pay with Bitcoin</strong>
          <button class="btn">Buy Now</button>
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    </div>
    <!-- ====== Alert end ====== -->

    <!-- ====== scroll top start ====== -->
    <button id="scroll-top-btn">
  <i class="fa fa-arrow-up"></i>
</button>
    <!-- ====== scroll top end ====== -->

    <!--====== Jquery ======-->
    <script src="{{ asset('frontend/assets/js/jquery.min.js') }}"></script>
    <!--====== Bootstrap ======-->
    <script src="{{ asset('frontend/assets/js/bootstrap.bundle.min.js') }}"></script>
    <!-- Custom script -->
    <script src="{{ asset('frontend/assets/js/app.js') }}"></script>

    @stack('js')
</body>
</html>
