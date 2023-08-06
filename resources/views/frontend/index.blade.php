@extends('frontend.layouts.master')

@section('title', "Home")

@section('sideSection')


<!-- Hero section start -->
<section class="hero_area">
    <div class="container"> 
        
        <div class="hero-bg"
            @if ( $slider == null )
                style=" background-image: url({{ asset('frontend/assets/images/home-page/Minimalist-Youtube-Channel-Art-13.webp') }});"
            @else
                style="background-image: url({{ $slider->background_photo }});"
            @endif >
            <!-- <div class="row">
              <div class="col-6 d-flex align-self-center"> -->

            <div class="text-inner text-center">
                <h3><strong>
                    @if($slider !== null)
                        {{ $slider->title }}
                    @endif
                </strong></h3>
                {{-- <h3>ACCOUNTS</h3> --}}
                <p class="text-uppercase">
                    @if($slider !== null)
                        {{ $slider->short_description }}
                    @endif
                </p>
                <p>
                    <a href="./pricing.html" class="button">PRICING &amp; PACKAGE</a>
            </div>
            <!-- </div>
            </div> -->

        </div>
    </div>
</section>
<!-- Hero section end -->

<!-- product section start -->
<section class="pricing_table_area">
    <div class="container">
        <div class="pricing_table_content">
            <div class="section-title">
                <h2>Best Affordable Packages</h2>
            </div>
            <div class="row">
                @forelse ($products as $product)
                @php
                    $category = App\Models\Category::findOrFail($product->sub_category_id);
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
                                    <a href="{{ url('product/'.$category->slug."/".$product->slug) }}"
                                        class="btn custom_button">Order</a>
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    
                @endforelse
                
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="pricing-table-item">
                        <div class="card text-center">
                            <div class="pricing-table-header card-header">
                                NORMAL GMAIL
                            </div>
                            <div class="pricing-table-body card-body">
                                <h5 class="card-title">45$</h5>
                                <ul>
                                    <li>100 GMAIL Accounts</li>
                                    <li>100% Real</li>
                                    <li>Fast Delivery with 48 hours</li>
                                    <li>Replacement policy</li>
                                    <li>Satisfaction Guaranteed</li>
                                </ul>
                                <a href="./product-details.html" class="btn custom_button">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="pricing-table-item">
                        <div class="card text-center">
                            <div class="pricing-table-header card-header">
                                NORMAL GMAIL
                            </div>
                            <div class="pricing-table-body card-body">
                                <h5 class="card-title">45$</h5>
                                <ul>
                                    <li>100 GMAIL Accounts</li>
                                    <li>100% Real</li>
                                    <li>Fast Delivery with 48 hours</li>
                                    <li>Replacement policy</li>
                                    <li>Satisfaction Guaranteed</li>
                                </ul>
                                <a href="./product-details.html" class="btn custom_button">Order</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- product section end -->

<!-- about-shop section start -->
<section class="about_shop">
    <div class="container">
        <div class="about-shop-content">
            <div class="section-title text-center">
                <h2>
                    @if ($home_pave !== null)
                        {{ $home_pave->title }}
                    @endif
                </h2>
            </div>
            <div class="content text-center">
                @if ($home_pave !== null)
                    {!! $home_pave->description !!}
                @endif
            </div>
            <div class="box">
                <div class="row">
                    <div class="col-md-4">
                        <div class="box-item text-center">
                            <div class="box-image mb-3">
                                <img src="{{ asset('frontend') }}/assets/images/home-page/s1.png" alt="">
                            </div>
                            <div class="box-text">
                                <h5>SAFETY</h5>
                                <p>We are one of the biggest Pva Provider . it’s safe&Secure.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box-item text-center">
                            <div class="box-image mb-3">
                                <img src="{{ asset('frontend') }}/assets/images/home-page/s2.png" alt="">
                            </div>
                            <div class="box-text">
                                <h5>LONGEVITY</h5>
                                <p>With Pva Hub you Can Use PVA Accounts for Long-Time.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="box-item text-center">
                            <div class="box-image mb-3">
                                <img src="{{ asset('frontend') }}/assets/images/home-page/s1.png" alt="">
                            </div>
                            <div class="box-text">
                                <h5>DELIVERY</h5>
                                <p>Delivery within 24 hours Fast & Secure</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- about-shop section end -->

<!-- counter section start -->
<section class="counter_area">
    <div class="container">
        <div class="counter-content">
            <div class="row d-flex justify-content-center">
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="counter-item text-center">
                        <div class="icon">
                            <a href=""><i class="fa-regular fa-pen-to-square"></i></a>
                        </div>
                        <h4 class="counter">154706+</h4>
                        <h5>Accounts Created</h5>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="counter-item text-center">
                        <div class="icon">
                            <a href=""><i class="fa-solid fa-umbrella"></i></a>
                        </div>
                        <h4 class="counter">18975+</h4>
                        <h5>Orders</h5>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="counter-item text-center">
                        <div class="icon">
                            <a href=""><i class="fa-regular fa-square-check"></i></a>
                        </div>
                        <h4 class="counter">18975+</h4>
                        <h5>Delivered</h5>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="counter-item text-center">
                        <div class="icon">
                            <a href=""><i class="fa-solid fa-martini-glass"></i></a>
                        </div>
                        <h4 class="counter">1</h4>
                        <h5>Pending</h5>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-6">
                    <div class="counter-item text-center">
                        <div class="icon">
                            <a href=""><i class="fa-solid fa-chalkboard-user"></i></a>
                        </div>
                        <h4 class="counter">10+</h4>
                        <h5>Order In hand</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- counter section end -->

<!-- team section start -->
<section class="team_area">
    <div class="container">
        <div class="team-wrapper">
            <div class="section-title">
                <h2>MEET OUR AMAZING TEAM</h2>
            </div>
            <div class="row">
                @forelse($meet_teams as $team)
                    <div class="col-lg-4 col-md-6 col-sm-12">
                        <div class="team-item text-center">
                            <div class="member-image">
                                <img src="{{ $team->photo }}" alt="">
                                <div class="text-inner">
                                    <div class="member-info">
                                        <h5>{{ $team->name }}</h5>
                                        <span>{{ $team->designation }}</span>
                                    </div>
                                    <div class="divider"></div>
                                    <div class="description">
                                        <p>{{ $team->description }}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                @empty
                    
                @endforelse
                

            </div>
        </div>
    </div>
</section>
<!-- team section end -->

@endsection
