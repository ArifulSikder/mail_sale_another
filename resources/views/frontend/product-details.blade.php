@extends('frontend.layouts.master')

@section('title', "Home")

@section('sideSection')
<style>
  *{
    margin: 0;
    padding: 0;
  }
  .rate {
      float: left;
      height: 46px;
      padding: 0px;
  }
  .rate:not(:checked) > input {
      position:absolute;
      top:-9999px;
  }
  .rate:not(:checked) > label {
      float:right;
      width:1em;
      overflow:hidden;
      white-space:nowrap;
      cursor:pointer;
      font-size:30px;
      color:#ccc;
  }
  .rate:not(:checked) > label:before {
      content: '★ ';
  }
  .rate > input:checked ~ label {
      color: #db5932;    
  }
  .rate:not(:checked) > label:hover,
  .rate:not(:checked) > label:hover ~ label {
      color: #db5932;  
  }
  .rate > input:checked + label:hover,
  .rate > input:checked + label:hover ~ label,
  .rate > input:checked ~ label:hover,
  .rate > input:checked ~ label:hover ~ label,
  .rate > label:hover ~ input:checked ~ label {
      color: #db5932;
  }

</style>
  <!-- product details section start -->
  <section class="product_details">
    <div class="container">
      <div class="product-details-content wrapper">
        <div class="row">
          <div class="col-lg-5">
            <div class="insta">
              <img class="img-fluid" src="{{ asset($product->thumbnail) }}" alt="logo">
            </div>
          </div>
          <div class="col-lg-7">
            <div class="details">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="{{ url('/') }}">HOME</a></li>
                  <li class="breadcrumb-item active" aria-current="page">{{ $product->subcategory->name }}</li>
                </ol>
              </nav>
              <div class="title">
                <h1 class="text fw- my-3">{{ $product->name }}</h1>
              </div>
              <div class="star mb-2">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <h2 class="dollar">{{ $product->selling_price }}$</h2>
              <div class="service">
                @if ($product && count($product->details) > 0)
                    {!! $product->details->where('active_status', 1)->first()->content !!}
                @endif
              </div>
      
              <div class="items d-flex text-center">
                <img src="{{ asset('frontend') }}/assets/images/all-images/25b6.png" width="15" height="15" alt="Email">
                <h6 class="fw-bold ms-2 me-1">Email:</h6>&nbsp;
                <p>pvaeshop@gmail.com</p>
              </div>
              <div class="items d-flex text-center">
                <img src="{{ asset('frontend') }}/assets/images/all-images/25b6.png" width="15" height="15" alt="Skype">
                <h6 class="fw-bold ms-2 me-1">Skype:</h6>&nbsp;
                <p>live:.cid.3e346e647754bcb7</p>
              </div>
              <div class="items d-flex text-center">
                <img src="{{ asset('frontend') }}/assets/images/all-images/25b6.png" width="15" height="15" alt="TELEGRAM">
                <h6 class="fw-bold ms-2 me-1">TELEGRAM:</h6>&nbsp;
                <p>Pvaeshop</p>
              </div>
              <div class="items d-flex text-center">
                <img src="{{ asset('frontend') }}/assets/images/all-images/25b6.png" width="15" height="15" alt="WhatsApp">
                <h6 class="fw-bold ms-2 me-1">WhatsApp: </h6>&nbsp;
                <p>+12135109004</p>
              </div>
              <div class="quantity">
                <form action="{{ route('add-to-cart') }}" method="POST">
                  @csrf
                  <input type="hidden" name="product_id" value="{{ $product->id }}">
                  <div class="row">
                    <div class="col-md-3">
                      <input id="product_quantity" name="quantity" type="number" value="1" min="1"/>
                    </div>
                  </div>
                <br>
                <button type="submit" class="submit-button">ADD TO CART</button>
              
                </form>
              </div>
              <div class="social-icon">
                <div class="icon facebook">
                  <div class="tooltip">Facebook</div>
                  <span><i class="fab fa-facebook-f"></i></span>
                </div>
                <div class="icon twitter">
                  <div class="tooltip">Twitter</div>
                  <span><i class="fab fa-twitter"></i></span>
                </div>
                <div class="icon instagram">
                  <div class="tooltip">Instagram</div>
                  <span><i class="fab fa-instagram"></i></span>
                </div>
                <div class="icon github">
                  <div class="tooltip">Github</div>
                  <span><i class="fab fa-github"></i></span>
                </div>
                <div class="icon youtube">
                  <div class="tooltip">Youtube</div>
                  <span><i class="fab fa-youtube"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="description-reviews">
          <ul class="nav nav-tabs mb-5" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
              <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane"
                type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">DESCRIPTION</button>
            </li>
            <li class="nav-item" role="presentation">
              <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane"
                type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">REVIEWS (6)</button>
            </li>
          </ul>
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
                @if (count($product->descriptions) > 0)
                    {!! $product->descriptions->where('active_status', 1)->first()->content !!}
                @endif
            </div>
            <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab"
              tabindex="0">
              <div class="review-list">
                <div class="row">
                  <div class="col-lg-7">
                    <h2 class="title">6 reviews for 100 IG USA PVA Accounts Fresh</h2>
                    {{-- <div class="card">
                      <div class="comment">
                        <div class="row">
                          <div class="col-md-2">
                            <img src="{{ asset('frontend') }}/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
                              alt="...">
                          </div>
                          <div class="col-md-10">
                            <div class="card-body">
                              <div class="review-star mb-2">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                              </div>
                              <h5 class="card-title">MicahPage4 – May 4, 2021</h5>
                              <p class="card-text">This seller is amazing Super responsive and knows the ins and outs of
                                creating a Youtube Channel. This made my life so
                                much easier. Great communication and fast delivered. Aashirdaud thanks for your time and
                                your Great Job</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="comment">
                        <div class="row">
                          <div class="col-md-2">
                            <img src="{{ asset('frontend') }}/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
                              alt="...">
                          </div>
                          <div class="col-md-10">
                            <div class="card-body">
                              <div class="review-star mb-2">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                              </div>
                              <h5 class="card-title">MicahPage4 – May 4, 2021</h5>
                              <p class="card-text">This seller is amazing Super responsive and knows the ins and outs of
                                creating a Youtube Channel. This made my life so
                                much easier. Great communication and fast delivered. Aashirdaud thanks for your time and
                                your Great Job</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div> --}}
                    @foreach($reviews as $review)
                        <div class="card">
                            <div class="comment">
                              <div class="row">
                                <div class="col-md-2">
                                  <img src="{{ asset('frontend') }}/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
                                    alt="...">
                                </div>
                                <div class="col-md-10">
                                  <div class="card-body">
                                    <div class="review-star mb-2">
                                      <i class="fa-solid fa-star"></i>
                                      <i class="fa-solid fa-star"></i>
                                      <i class="fa-solid fa-star"></i>
                                      <i class="fa-solid fa-star"></i>
                                      <i class="fa-solid fa-star"></i>
                                    </div>
                                    <h5 class="card-title">{{ $review->name }} – {{ $review->date }}</h5>
                                    <p class="card-text">{{ $review->customer_review }}</p>
                                  </div>
                                  {{-- <div class="row">
                                    <div class="col-md-2">
                                      <img src="{{ asset('frontend') }}/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
                                        alt="">
                                    </div>
                                    <div class="col-md-10">
                                      <div class="card-body">
                                          <div class="review-star mb-2">
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                            <i class="fa-solid fa-star"></i>
                                          </div>
                                          <h5 class="card-title">MicahPage4 – May 4, 2021</h5>
                                          <p class="card-text">This seller is amazing Super responsive and knows the ins and outs of
                                            creating a
                                            Youtube Channel. This made my life so
                                            much easier. Great communication and fast delivered. Aashirdaud thanks for your time and
                                            your Great
                                            Job</p>
                                        </div>
                                      </div>
                                    </div> --}}
                                </div>
                              </div>
                            </div>
                        </div>
                    @endforeach
                    
                </div> <!-- end col-7 here-->
                <div class="col-lg-5">
                  <div class="box-review">
                    <h4 class="title">Add a review</h4>
                    <p class="text mb-1">Your rating
                      <span class="required">*</span>
                    </p>
                      {{-- <i class="fa-solid fa-star"></i>
                      <i class="fa-solid fa-star"></i>
                      <i class="fa-solid fa-star"></i>
                      <i class="fa-solid fa-star"></i>
                      <i class="fa-solid fa-star"></i> --}}
                    <form id="formData">
                          <input type="hidden" name="product_slug" value="{{ $product->slug }}">
                          <div class="rate">
                            <input type="radio" id="star5" name="rate" value="5" />
                            <label for="star5" title="text">5 stars</label>
                            <input type="radio" id="star4" name="rate" value="4" />
                            <label for="star4" title="text">4 stars</label>
                            <input type="radio" id="star3" name="rate" value="3" />
                            <label for="star3" title="text">3 stars</label>
                            <input type="radio" id="star2" name="rate" value="2" />
                            <label for="star2" title="text">2 stars</label>
                            <input type="radio" id="star1" name="rate" value="1" />
                            <label for="star1" title="text">1 star</label>
                          </div>
                          <br>
                          <div class="comment-box mt-4">
                            <p class="text fw-bold">Your review
                              <span class="review">*</span>
                            </p>
                            <textarea id="review" class="text-area w-100" name="review" rows="5"></textarea>
                          </div>
                          <div class="row mt-4">
                            <div class="col-6">
                              <label for="name">Name*</label>
                              <input class="w-100" type="text" placeholder="Name" id="name" aria-label="name" name="name">
                            </div>
                            <div class="col-6">
                              <label for="email">Email*</label>
                              <input class="w-100" type="text" placeholder="Email" id="email" aria-label="Email" name="email">
                            </div>
                          </div> 
                          <!--<div class="form-check mt-4">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                              Save my name, email, and website in this browser .
                            </label> 
                          </div>-->
                          <div class="button">
                            <input name="submit" type="submit" id="submit" class="submit-button mt-3" value="Submit">
                          </div>
                  </form>
                      
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    </div>
  </section>

@endsection

@section('script')
<script>
  $("#product_quantity").inputSpinner();
</script>

<script>
  $(document).ready(function () {
          $("#formData").submit(function (e) { 
              e.preventDefault();
              var formdata = new FormData($("#formData")[0]);
              $.ajax({
                  type: "POST",
                  url: "{{ route('store-customer-review') }}",
                  contentType: false,
                  processData: false,
                  headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
                  data: formdata,
                  success: function (response) {
                      if (response.success) {
                          toastr.success(response.success);
                      } else if (response.error) {
                          toastr.error(response.error);
                      }
                  },
                  error: function (error) {
                      $('.validate').text('');
                      $.each(error.responseJSON.errors, function (field_name, error) { 
                           const errorElement = $('.validate[data-field="' + field_name + '"]');
                           if (errorElement.length > 0) {
                              errorElement.text(error[0]);
                              toastr.error(error);
                           }
                      });
                  },
                  // complete: function (done) {
                  //     if (done.status == 200) {
                  //         window.location.reload();
                  //     }
                  // }
                  

              });
          });
  });
</script>
@endsection