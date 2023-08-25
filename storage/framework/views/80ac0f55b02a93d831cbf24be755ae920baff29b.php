

<!-- header section start -->
    <header class="header">
      <!-- Header Top Start -->
      <div class="header-top section">
        <div class="container">
          <div class="header-top-content">
            <div class="row">
              <div class="col-12 d-flex justify-content-end">
                <div class="header-top-links">
                  <!-- Header Links -->
                  <ul class="header-links">
                    <li class="header-social">
                      <a href="<?php echo e($setting ? $setting->fb_link : '#'); ?>"><i class="fa-brands fa-facebook-f"></i></a>
                      <a href="<?php echo e($setting ? $setting->instagram_link : '#'); ?>"><i class="fa-brands fa-instagram"></i></a>
                      <a href="<?php echo e($setting ? $setting->twitter_link : '#'); ?>"><i class="fa-brands fa-twitter"></i></a>
                      <a href="<?php echo e($setting ? $setting->email : '#'); ?>"><i class="fa-regular fa-envelope"></i></a>
                      <a href="<?php echo e($setting ? $setting->pinterest_link : '#'); ?>"><i class="fa-brands fa-pinterest-p"></i></a>
                      <a href="<?php echo e($setting ? $setting->linkedin_link : '#'); ?>"><i class="fa-brands fa-linkedin"></i></a>
                    </li>
                        <?php if(auth()->guard()->guest()): ?>
                          <li><a href="<?php echo e(url('register')); ?>"><i class="fa fa-user-circle-o"></i>Sign Up</a></li>
                        <?php endif; ?>
                      <li><a href="<?php echo e(url('/contact')); ?>">Contact</a></li>
                  </ul>
                </div><!-- Header Top Links End -->
              </div>
            </div>
          </div>
        </div><!-- Header Top End -->
      </div>

    <!-- Header Start -->
    <div class="header-section section">
        <div class="container">
          <div class="header-middle bg-white">
            <div class="row align-items-center">
              <!-- Header Logo -->
              <div class="header-logo col-md-4 col-sm-4">
                  <a href="<?php echo e(url('/')); ?>" class="logo">
                    <img src="<?php echo e(asset($setting->logo)); ?>" alt="<?php echo e($setting->logo_alt); ?>">
                  </a>
              </div>
              <!-- Header Banner -->
              <div class=" col-md-8 col-sm-8 text-end">
                  <a href="<?php echo e(url('/cart')); ?>" class="btn btn-danger position-relative">Cart /
                    <span><i class="fa-solid fa-cart-shopping"></i></span>
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="cartSubTag">
                      <strong id="cartSubNum"><?php echo e(Cart::count()); ?></strong>
                    </span>
                  </a>
              </div>
            </div>
          </div>
        </div>
    </div><!-- Header End -->

    <!-- Menu Section Start -->
    <div class="main-menu">
        <div class="container">
          <div class="header-menu">
           <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="<?php echo e(url('/')); ?>">Home</a>
                  </li>
                  <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" aria-current="page" href="./index.html">
                      <?php echo e($category->name); ?>

                    </a>
                    <ul class="dropdown-menu">
                    <?php $__currentLoopData = $category->subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subcategory): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <li><a class="dropdown-item" href="<?php echo e(url("/product/". $subcategory->slug)); ?>"><?php echo e($subcategory->name); ?></a></li>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </ul>
                  </li>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                  <li class="nav-item">
                    <a class="nav-link" href="<?php echo e(url('/about-us')); ?>">About Us</a>
                  </li>
                  <?php if(auth()->guard()->check()): ?>
                  <li class="nav-item">
                    <a class="nav-link" href="<?php echo e(url('/my-account')); ?>">My Account</a>
                  </li>
                  <?php endif; ?>

                  <li class="nav-item">
                    <a class="nav-link" href="<?php echo e(url('/contact')); ?>">Contact Us</a>
                  </li>
                </ul>
              </div>
            </div>
           </nav>
          <div class="header-search float-end">
            <button class="search-btn">
              <i class="fa fa-search"></i>
            </button>
            <div class="search-form">
              <button class="close-btn">
                <i class="fa fa-times"></i>
              </button>
              <input type="text" class="search-input">
            </div>
          </div>
         </div>
        </div>
    </div><!-- Menu Section End -->
  </header>
  <!-- header section end -->
<?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/include/header.blade.php ENDPATH**/ ?>