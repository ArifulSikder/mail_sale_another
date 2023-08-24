<!doctype html>
<html lang="en">
<head>
    <!--====== Required meta tags ======-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <!--====== Title ======-->
    <title><?php echo $__env->yieldContent('title'); ?></title>
    <!--====== Favicon Icon ======-->
    <link rel="icon" href="<?php echo e(asset('frontend/assets/images/favicon.png')); ?>">

    <!--====== Font Awesome ======-->
    <link rel="stylesheet" href="<?php echo e(asset('frontend/assets/fonts/font-awesome/css/all.css')); ?>">
    <!--====== Flat-Icon ======-->
    
    <!--====== Bootstrap ======-->
    <link rel="stylesheet" href="<?php echo e(asset('frontend/assets/css/bootstrap.min.css')); ?>">
    <!--====== Main Style ======-->
    <link rel="stylesheet" href="<?php echo e(asset('frontend/assets/css/style.css')); ?>">
    <!--====== responsive Style ======-->
    <link rel="stylesheet" href="<?php echo e(asset('frontend/assets/css/responsive.css')); ?>">
    
    <link rel="stylesheet" href="<?php echo e(asset('backend/plugins/sweetalert2/sweetalert2.min.css')); ?>">
    
    <link rel="stylesheet" href="<?php echo e(asset('backend/plugins/toastr/toastr.min.css')); ?>">
    
    <link rel="stylesheet" href="<?php echo e(asset('backend/plugins/select2/css/select2.min.css')); ?>">
    
    <script src="<?php echo e(asset('backend/plugins/alpine/alpine.min.js')); ?>" defer></script>

    <?php echo $__env->yieldPushContent('css'); ?>
</head>
<body>
    <!-- header section start -->
    <?php echo $__env->make('frontend.include.header', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- header section end -->
    <?php echo $__env->yieldContent('sideSection'); ?>
    <!-- footer Section start -->
   <?php echo $__env->make('frontend.include.footer', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <!-- footer Section end -->

     <!-- ====== Alert start ====== -->
     <div class="alert-area">
      <div class="alert alert-dismissible fade show fixed-bottom" role="alert">
        <div class="text-center">
          <strong>Best Offer – 10% instant discount if you pay with Bitcoin</strong>
          <button class="btn">Buy Now</button>
        </div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    </div>
    <!-- ====== Alert end ====== -->

    <!-- ====== scroll top start ====== -->
    <button id="scroll-top-btn">
  <i class="fa fa-arrow-up"></i>
</button>
    <!-- ====== scroll top end ====== -->

    <!--====== Jquery ======-->
    <script src="<?php echo e(asset('frontend/assets/js/jquery.min.js')); ?>"></script>
    <!--====== Bootstrap ======-->
    <script src="<?php echo e(asset('frontend/assets/js/bootstrap.bundle.min.js')); ?>"></script>
    <!-- Custom script -->
    <script src="<?php echo e(asset('frontend/assets/js/app.js')); ?>"></script>
    
    <script src="<?php echo e(asset('backend/plugins/sweetalert2/sweetalert2.all.min.js')); ?>"></script>
    
    <script src="<?php echo e(asset('backend/plugins/toastr/toastr.min.js')); ?>"></script>
    
    <script src="<?php echo e(asset('backend/plugins/select2/js/select2.min.js')); ?>"></script>
    
    <script src="<?php echo e(asset('backend/plugins/sweetalert2/sweetalert2.min.js')); ?>"></script>
    
    <script src="<?php echo e(asset('frontend/assets/js/spinner.min.js')); ?>"></script>
    
    <?php if(Session::has('success')): ?>
        <script>
            toastr.success("<?php echo e(Session::get('success')); ?>")
        </script>
    <?php elseif(!empty(Session::get('error'))): ?>
        <script>
            toastr.error("<?php echo e(Session::get('error')); ?>")
        </script>
    <?php endif; ?>

    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.select2','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('select2'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>

    <?php echo $__env->yieldPushContent('js'); ?>

    <?php echo $__env->yieldContent('script'); ?>

</body>
</html>
<?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/layouts/master.blade.php ENDPATH**/ ?>