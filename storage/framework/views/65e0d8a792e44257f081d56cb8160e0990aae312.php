

<?php $__env->startSection('title', "Home"); ?>

<?php $__env->startSection('sideSection'); ?>

  <!-- product details section start -->
  <section class="product_details">
    <div class="container">
      <div class="product-details-content wrapper">
        <div class="row">
          <div class="col-lg-5">
            <div class="insta me-5">
              <img width="500px" src="<?php echo e(asset($product->thumbnail)); ?>" alt="logo">
            </div>
          </div>
          <div class="col-lg-7">
            <div class="details">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="<?php echo e(url('/')); ?>">HOME</a></li>
                  <li class="breadcrumb-item active" aria-current="page"><?php echo e($product->subcategory->name); ?></li>
                </ol>
              </nav>
              <div class="title">
                <h1 class="text fw- my-3"><?php echo e($product->name); ?></h1>
              </div>
              <div class="star mb-2">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
              </div>
              <h2 class="dollar"><?php echo e($product->selling_price); ?>$</h2>
              <div class="service">
                <?php if($product && count($product->details) > 0): ?>
                    <?php echo $product->details->where('active_status', 1)->first()->content; ?>

                <?php endif; ?>
              </div>
      
              <div class="items d-flex text-center">
                <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/25b6.png" width="15" height="15" alt="Email">
                <h6 class="fw-bold ms-2 me-1">Email:</h6>&nbsp;
                <p>pvaeshop@gmail.com</p>
              </div>
              <div class="items d-flex text-center">
                <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/25b6.png" width="15" height="15" alt="Skype">
                <h6 class="fw-bold ms-2 me-1">Skype:</h6>&nbsp;
                <p>live:.cid.3e346e647754bcb7</p>
              </div>
              <div class="items d-flex text-center">
                <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/25b6.png" width="15" height="15" alt="TELEGRAM">
                <h6 class="fw-bold ms-2 me-1">TELEGRAM:</h6>&nbsp;
                <p>Pvaeshop</p>
              </div>
              <div class="items d-flex text-center">
                <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/25b6.png" width="15" height="15" alt="WhatsApp">
                <h6 class="fw-bold ms-2 me-1">WhatsApp: </h6>&nbsp;
                <p>+12135109004</p>
              </div>
              <div class="quantity">
                <form action="<?php echo e(route('add-to-cart')); ?>" method="POST">
                  <?php echo csrf_field(); ?>
                  <input type="hidden" name="product_id" value="<?php echo e($product->id); ?>">
                  <div class="row">
                    <div class="col-md-3">
                      <input id="product_quantity" name="quantity" type="number" value="1" min="1"/>
                    </div>
                  </div>
                <br>
                <button type="submit" class="submit-button mx-3">ADD TO CART</button>
              
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
                <?php if(count($product->descriptions) > 0): ?>
                    <?php echo $product->descriptions->where('active_status', 1)->first()->content; ?>

                <?php endif; ?>
            </div>
            <div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab"
              tabindex="0">
              <div class="review-list">
                <div class="row">
                  <div class="col-lg-7">
                    <h2 class="title">6 reviews for 100 IG USA PVA Accounts Fresh</h2>
                    <div class="card">
                      <div class="comment">
                        <div class="row">
                          <div class="col-md-2">
                            <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
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
                          <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
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
                              creating a
                              Youtube Channel. This made my life so
                              much easier. Great communication and fast delivered. Aashirdaud thanks for your time and
                              your Great
                              Job</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="card">
                      <div class="comment">
                      <div class="row">
                        <div class="col-md-2">
                          <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
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
                              creating a
                              Youtube Channel. This made my life so
                              much easier. Great communication and fast delivered. Aashirdaud thanks for your time and
                              your Great
                              Job</p>
                          </div>
                          <div class="row ">
                            <div class="col-md-2">
                              <img src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/avatar.png" class="img-fluid rounded-circle w-100"
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
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                 </div>
                </div>
                <div class="col-lg-5">
                  <div class="box-review">
                    <h4 class="title">Add a review</h4>
                    <p class="text mb-1">Your rating
                      <span class="required">*</span>
                    </p>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <div class="comment-box mt-4">
                      <p class="text fw-bold">Your review
                        <span class="review">*</span>
                      </p>
                      <textarea id="comment" class="text-area w-100" name="comment" rows="5"></textarea>
                    </div>
                    <div class="row mt-4">
                      <div class="col-6">
                        <label for="name">Name*</label>
                        <input class="w-100" type="text" placeholder="Name" id="name" aria-label="name">
                      </div>
                      <div class="col-6">
                        <label for="email">Email*</label>
                        <input class="w-100" type="text" placeholder="Email" id="email" aria-label="Email">
                      </div>
                    </div> 
                    <div class="form-check mt-4">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                      <label class="form-check-label" for="flexCheckDefault">
                        Save my name, email, and website in this browser .
                      </label>
                    </div>
                    <div class="button">
                      <input name="submit" type="submit" id="submit" class="submit-button mt-3" value="Submit">
                    </div>
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

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>
  $("#product_quantity").inputSpinner();
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\altab_mail_sell\resources\views/frontend/product-details.blade.php ENDPATH**/ ?>