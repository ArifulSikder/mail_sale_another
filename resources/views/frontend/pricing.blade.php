@extends('frontend.layouts.master')

@section('title', 'Pricing')

@section('sideSection')


    <!-- Hero section start -->
    <section class="hero_area">
        <div class="container">
            @if ($slider)
                <div class="hero-bg" style="background-image: url({{ asset($slider->background_photo) }});">

                    <div class="text-inner text-center">
                        <h3><strong>
                                {{ $slider->title }}
                            </strong></h3>
                        <p class="text-uppercase">
                            {{ $slider->short_description }}
                        </p>
                    </div>
                </div>
            @endif
        </div>
    </section>
    <!-- Hero section end -->

    <!-- product section start -->
    <section class="pricing_table_area pricing-packaging">
        <div class="container">
            <div class="pricing_table_content">
                <div class="section-title">
                    <h2>Pricing And Packages</h2>
                </div>
                <div class="row">
                    @forelse ($products as $product)
                        @php
                            $category = \App\Models\Category::findOrFail($product->sub_category_id);
                        @endphp
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="pricing-table-item">
                                <div class="card text-center">
                                    <div class="pricing-table-header card-header">
                                        {{ $product->name }}
                                    </div>
                                    <div class="pricing-table-body card-body">
                                        <h5 class="card-title">{{ $product->selling_price }}$</h5>
                                        <ul>
                                            @forelse ($product->advantages->where('active_status', 1) as $advantage)
                                                <li>{{ $advantage->title }}</li>
                                            @empty
                                                <li class="text-danger">Data Not Found!</li>
                                            @endforelse
                                        </ul>
                                        <a href="{{ url('product/' . $category->slug . '/' . $product->slug) }}"
                                            class="btn custom_button">Order</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    @empty
                        <p class="text-danger text-danger" colspan="4">
                            No Product Found!
                        </p>
                    @endforelse

                </div>
            </div>
        </div>
    </section>
    <!-- product section end -->

    <!-- about-account section start -->
    <section class="about-account-area">
        <div class="container">
            <div class="wrapper content">
                @isset($descriptions)
                    @foreach ($descriptions as $description)
                        {!! $description->description !!}
                    @endforeach
                @endisset



            </div>
        </div>
    </section>
    <!-- about-account section end -->

@endsection
