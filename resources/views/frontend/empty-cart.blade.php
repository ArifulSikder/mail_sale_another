@extends('frontend.layouts.master')

@section('title', "My Account")

@section('sideSection')

    <!-- cart section start -->
    <section class="cart-area">
      <div class="container">
          <div class="wrapper">
              <nav class="bread_nav" style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);"
                  aria-label="breadcrumb">
                  <ol class="breadcrumb">
                      <li class="breadcrumb-item"><a href="#">SHOPPING CART</a></li>
                      <li class="breadcrumb-item active" aria-current="page">CHECKOUT DETAILS</li>
                      <li class="breadcrumb-item active" aria-current="page">ORDER COMPLETE</li>
                  </ol>
              </nav>
              <div class="empty-cart-content text-center mt-5">
                  <p>Your cart is currently empty.</p>
                  <a class="log-in-button" href="./pricing.html">RETURN TO SHOP</a>
              </div>
          </div>
      </div>
   </section>
  <!-- cart section end -->
@endsection