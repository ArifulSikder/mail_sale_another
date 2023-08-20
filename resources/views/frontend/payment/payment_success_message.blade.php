@extends('frontend.layouts.master')

@section('title', 'Checkout')

@section('sideSection')
    <!-- checkout section start -->
    <section class="checkout-area">
        <div class="container">
            <div class="wrapper">
                <div class="text-center">
                    <img style="width: 20%" src="{{ asset('frontend/assets/images/payment-success.png') }}" alt="payment-success">
                    <h1>Your order is successfully done!</h1>     
                    <p class="text-secondary">Your order is confirmed you will receive an order confirmation email/SMS shortly with the expected delivery date your items</p>     
               
                </div>
            </div>
        </div>
    </section>
    <!-- checkout section end -->
@endsection
