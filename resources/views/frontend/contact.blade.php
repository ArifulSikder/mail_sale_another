@extends('frontend.layouts.master')

@section('title', "My Account")

@section('sideSection')

    <!-- contact section start -->
    <section class="sign-up-form">
      <div class="container">
          <div class="content wrapper">
              <div class="my_account_header">
                  <div class="header_title">
                      <h1 class="text-center">Contact Us</h1>
                  </div>
              </div>
              <div class="my_account_body">
                  <h3>Login</h3>
                  <form class="form-one">
                      <div class="mb-3 mt-3">
                          <label for="name">Your Name (required)</label>
                          <input type="name" class="form-control" id="name" name="name" required>
                      </div>
                      <div class="mb-3">
                          <label for="email">Your Email (required)</label>
                          <input type="email" class="form-control shadow-inset" id="email" name="email" required>
                      </div>
                      <label for="Order" class="form-label form-label">Your Message (required)</label>
                      <div class="mb-3">
                          <textarea rows="5"></textarea>
                      </div>
                      <button type="submit" class="btn log-in-button">Submit</button>
                  </form>
              </div>
          </div>
      </div>
  </section>
  <!-- contact section end -->
@endsection