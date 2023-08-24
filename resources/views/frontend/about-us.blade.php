@extends('frontend.layouts.master')

@section('title', "My Account")

@section('sideSection')

    <!-- about section start -->
    <section class="about-area">
      <div class="container">
        <div class="about-content wrapper">
          <h2>
              <span>About US</span>
              <b></b>
          </h2>
          <br>
          <div class="about-details">
            @if ($about_us)
                {!! $about_us->description !!}
            @else
                <span class="text-danger">No About Data Added Yet!</span>
            @endif
          </div>
      </div>
      </div>
  </section>
  <!-- about section end -->

@endsection