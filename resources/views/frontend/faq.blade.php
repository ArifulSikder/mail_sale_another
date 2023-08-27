@extends('frontend.layouts.master')

@section('title', "FAQ")

@section('sideSection')
    <!-- faq section start -->
    <section class="faq">
        <div class="container">
          <div class="faq-section wrapper">
            <div class="faq-tittle">
              <p>Please, Read our Frequently Asked Questions carefully. 
                We think it gives you best solution for purchasing our service and it helps you get the required information. 
                If you have more questions about our service, contact us immediately.
              </p>
            </div>
            <div class="faq-content">
  
              @forelse($faq_cat as $faq_cat)
                  <div class="row">
                  <div class="col-sm-12 col-md-4 col-lg-4 text-center mt-4">
                    <div class="box-img">
                      <img src="{{ asset($faq_cat->category_logo) }}" alt="Setting">
                    </div>
                    <div class="box-text">
                      <h1>{{ $faq_cat->category_title }}</h1>
                    </div>
                  </div>
                  <div class="col-sm-12 col-md-8 col-lg-8 mt-4">
                    <div class="faq-all">
                      <div class="accordion" id="accordionExample{{ $faq_cat->id }}">
                          @forelse($faq_cat->question->where('active_status', 1) as $ques)
                            <div class="accordion-item custom-item">
                              <h2 class="accordion-header" id="headingOne{{ $ques->id }}">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne{{ $ques->id }}" aria-expanded="true" aria-controls="collapseOne{{ $ques->id }}">
                                  {{ $ques->question }}
                                </button>
                              </h2>
                              <div id="collapseOne{{ $ques->id }}" class="accordion-collapse collapse" aria-labelledby="headingOne{{ $ques->id }}" data-bs-parent="#accordionExample{{ $ques->category_id }}">
                                <div class="accordion-body">
                                  {{ $ques->answer }}
                                </div>
                              </div>
                          </div>
                          @empty
                            <span class="text-danger">No Question Added!</span>
                          @endforelse
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
    <!-- faq section end -->

@endsection