

<?php $__env->startSection('title', 'Home'); ?>

<?php $__env->startSection('sideSection'); ?>

    <?php
        $setting = \App\Models\AppSetting::first();
    ?>
    <!-- Hero section start -->
    <section class="hero_area">
        <div class="container">
            <?php if($slider): ?>
                <div class="hero-bg" style="background-image: url(<?php echo e($slider->background_photo); ?>);">
                    <!-- <div class="row">
                    <div class="col-6 d-flex align-self-center"> -->

                    <div class="text-inner text-center">
                        <h3><strong>
                                <?php echo e($slider->title); ?>

                            </strong></h3>
                        
                        <p class="text-uppercase">
                            <?php echo e($slider->short_description); ?>

                        </p>
                        <p>
                            <a href="./pricing.html" class="button">PRICING &amp; PACKAGE</a>
                    </div>
                    <!-- </div>
                    </div> -->

                </div>
            <?php endif; ?>
        </div>
    </section>
    <!-- Hero section end -->

    <!-- product section start -->
    <section class="pricing_table_area">
        <div class="container">
            <div class="pricing_table_content">
                <div class="section-title">
                    <h2><?php echo e($setting ? $setting->product_heading : ''); ?></h2>
                </div>
                <div class="row">
                    <?php $__empty_1 = true; $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <?php
                            $category = App\Models\Category::findOrFail($product->sub_category_id);
                        ?>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="pricing-table-item">
                                <div class="card text-center">
                                    <div class="pricing-table-header card-header">
                                        <?php echo e($product->name); ?>

                                    </div>
                                    <div class="pricing-table-body card-body">
                                        <h5 class="card-title"><?php echo e($product->selling_price); ?>$</h5>
                                        <ul>
                                            <?php $__empty_2 = true; $__currentLoopData = $product->advantages->where('active_status', 1)->take(5); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advantage): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_2 = false; ?>
                                                <li><?php echo e($advantage->title); ?></li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_2): ?>
                                                <li class="text-danger">Data Not Found!</li>
                                            <?php endif; ?>
                                        </ul>
                                        <a href="<?php echo e(url('product/' . $category->slug . '/' . $product->slug)); ?>"
                                            class="btn custom_button">Order</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                        <div class="text-center mt-3">
                            <span style='color:red' >No Product Available Yet!!</span></br><bR/>
                        </div>
                    <?php endif; ?>

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
                        <?php echo e($home_pave  ? $home_pave->title : ''); ?>

                    </h2>
                </div>
                <div class="content text-center">
                    <?php echo $home_pave ? $home_pave->description : ''; ?>


                </div>
                <div class="box">
                    <div class="row">
                        <?php $__currentLoopData = $gurantees; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gurantee): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="col-md-4">
                                <div class="box-item text-center">
                                    <div class="box-image mb-3" id="icon">
                                        <?php if($gurantee->logo_type == 1): ?>
                                            <?php echo $gurantee->logo; ?>

                                        <?php else: ?>
                                            <img style="width: 80px" src="<?php echo e(asset($gurantee->logo)); ?>" alt="">
                                        <?php endif; ?>
                                    </div>
                                    <div class="box-text">
                                        <h5><?php echo e($gurantee->title); ?></h5>
                                        <p>We are one of the biggest Pva Provider . it’s safe&Secure.</p>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

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
                    <h2><?php echo e($setting ? $setting->team_heading : ''); ?></h2>
                </div>
                <div class="row">
                    <?php $__empty_1 = true; $__currentLoopData = $meet_teams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $team): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="team-item text-center">
                                <div class="member-image">
                                    <img src="<?php echo e($team->photo); ?>" alt="">
                                    <div class="text-inner">
                                        <div class="member-info">
                                            <h5><?php echo e($team->name); ?></h5>
                                            <span><?php echo e($team->designation); ?></span>
                                        </div>
                                        <div class="divider"></div>
                                        <div class="description">
                                            <p><?php echo e($team->description); ?></p>
                                        </div>
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
    <!-- team section end -->

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $(document).ready(function() {
            $("#icon i").addClass("fa-5x");
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/index.blade.php ENDPATH**/ ?>