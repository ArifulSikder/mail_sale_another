

<?php $__env->startSection('title', "My Account"); ?>

<?php $__env->startSection('sideSection'); ?>

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
            <?php if($about_us): ?>
                <?php echo $about_us->description; ?>

            <?php else: ?>
                <span class="text-danger">No About Data Added Yet!</span>
            <?php endif; ?>
          </div>
      </div>
      </div>
  </section>
  <!-- about section end -->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/about-us.blade.php ENDPATH**/ ?>