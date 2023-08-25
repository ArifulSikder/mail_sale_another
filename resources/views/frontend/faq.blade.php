
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
                <div class="row my-4">
                <div class="col-sm-4 col-md-4 col-lg-4 text-center ">
                  <div class="box-img">
                    <img src="{{ asset($faq_cat->category_logo) }}" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>{{ $faq_cat->category_title }}</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      @forelse($faq_cat->question->where('active_status', 1) as $ques)
                        <div class="accordion-item custom-item">
                          <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#id{{ $ques->id }}" aria-expanded="true" aria-controls="id{{ $ques->id }}">
                              {{ $ques->question }}
                            </button>
                          </h2>
                          <div id="id{{ $ques->id }}" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                              {{ $ques->answer }}
                            </div>
                          </div>
                        </div>
                      @empty
                        
                      @endforelse
                      
                    </div>
                  </div>
                </div>
<<<<<<< HEAD
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-73.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Facebook Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#facebookone" aria-expanded="false" aria-controls="collapseOne">
                            Are these Facebook Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="facebookone" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Facebook Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#facebooktwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Facebook Accounts?
                          </button>
                        </h2>
                        <div id="facebooktwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Facebook Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#facebookThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Facebook?
                          </button>
                        </h2>
                        <div id="facebookThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Facebook account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/square-twitter-256.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Twitter Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#twitterone" aria-expanded="false" aria-controls="collapseOne">
                            Are these Twitter Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="twitterone" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Twitter Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#twittertwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Twitter Accounts?
                          </button>
                        </h2>
                        <div id="twittertwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Twitter Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#twitterthree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Twitter?
                          </button>
                        </h2>
                        <div id="twitterthree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Twitter account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-3.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Instagram Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#instagramOne" aria-expanded="false" aria-controls="collapseOne">
                            Are these Instagram  Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="instagramOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Instagram Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#instagramTwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Instagram Accounts?
                          </button>
                        </h2>
                        <div id="instagramTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Instagram Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#instagramThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Instagram?
                          </button>
                        </h2>
                        <div id="instagramThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Instagram account never ban.
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-20.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Linkedin Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#linkedinOne" aria-expanded="false" aria-controls="collapseOne">
                            Are these Linkedin  Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="linkedinOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Linkedin Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#linkedinTwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Linkedin  Accounts?
                          </button>
                        </h2>
                        <div id="linkedinTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Linkedin Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#linkedinThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Linkedin?
                          </button>
                        </h2>
                        <div id="linkedinThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Linkedin account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-52.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Google Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#googleOne" aria-expanded="false" aria-controls="collapseOne">
                            Are these Google   Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="googleOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Google Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#googleTwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Google  Accounts?
                          </button>
                        </h2>
                        <div id="googleTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Google Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#googleThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Google?
                          </button>
                        </h2>
                        <div id="googleThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Google account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-6.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>YouTube Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#youTubeOne" aria-expanded="false" aria-controls="collapseOne">
                            Are these YouTube   Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="youTubeOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our YouTube Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#youTubeTwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real YouTube  Accounts?
                          </button>
                        </h2>
                        <div id="youTubeTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these YouTube Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#youTubeThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on YouTube?
                          </button>
                        </h2>
                        <div id="youTubeThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your YouTube account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-5.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Pinterest Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#pinterestOne" aria-expanded="false" aria-controls="collapseOne">
                            Are these Pinterest   Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="pinterestOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Pinterest Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#pinterestTwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Pinterest  Accounts?
                          </button>
                        </h2>
                        <div id="pinterestTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Pinterest Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#pinterestThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Pinterest?
                          </button>
                        </h2>
                        <div id="pinterestThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Pinterest account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
  
                <div class="col-sm-4 col-md-4 col-lg-4 text-center mt-3">
                  <div class="box-img">
                    <img src="public/frontend/assets/images/all-images/pngguru.com-9.webp" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1>Yahoo Questions</h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8 mt-4">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#yahooOne" aria-expanded="false" aria-controls="collapseOne">
                            Are these Yahoo   Accounts suspend in future?
                          </button>
                        </h2>
                        <div id="yahooOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            Our Yahoo Accounts are free from suspend if any case 1% to 2% Accounts drops, we will repair it with freecharge.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingOne">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#yahooTwo" aria-expanded="false" aria-controls="collapseOne">
                            Does Pvaeshop provide real Yahoo  Accounts?
                          </button>
                        </h2>
                        <div id="yahooTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            All of these Yahoo Accounts are real as we provide you it from human user.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item custom-item">
                        <h2 class="accordion-header" id="headingThree">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#yahooThree" aria-expanded="false" aria-controls="collapseThree">
                            Is this safe to use on Yahoo?
                          </button>
                        </h2>
                        <div id="yahooThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                          <div class="accordion-body">
                            This is totally safe to using. Because of its your Yahoo account never ban. 
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              </div>
=======
              </div>
              @empty
                
              @endforelse
              
>>>>>>> origin/mahfujul_islam_sylhet
            </div>
          </div>
        </div>
      </section>
    <!-- faq section end -->

@endsection