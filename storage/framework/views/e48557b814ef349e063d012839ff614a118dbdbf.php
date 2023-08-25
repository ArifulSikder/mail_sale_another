

<?php $__env->startSection('title', "FAQ"); ?>

<?php $__env->startSection('sideSection'); ?>
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
              <?php $__empty_1 = true; $__currentLoopData = $faq_cat; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $faq_cat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                <div class="row my-4">
                <div class="col-sm-4 col-md-4 col-lg-4 text-center ">
                  <div class="box-img">
                    <img src="<?php echo e(asset($faq_cat->category_logo)); ?>" alt="Setting">
                  </div>
                  <div class="box-text">
                    <h1><?php echo e($faq_cat->category_title); ?></h1>
                  </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-8">
                  <div class="faq-all">
                    <div class="accordion" id="accordionExample">
                      <?php $__empty_2 = true; $__currentLoopData = $faq_cat->question->where('active_status', 1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ques): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_2 = false; ?>
                        <div class="accordion-item custom-item">
                          <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#id<?php echo e($ques->id); ?>" aria-expanded="true" aria-controls="id<?php echo e($ques->id); ?>">
                              <?php echo e($ques->question); ?>

                            </button>
                          </h2>
                          <div id="id<?php echo e($ques->id); ?>" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                              <?php echo e($ques->answer); ?>

                            </div>
                          </div>
                        </div>
                      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_2): ?>
                        
                      <?php endif; ?>
                      
                    </div>
                  </div>
                </div>
              </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                
              <?php endif; ?>
              
            </div>
          </div>
        </div>
      </section>
    <!-- faq section end -->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/faq.blade.php ENDPATH**/ ?>