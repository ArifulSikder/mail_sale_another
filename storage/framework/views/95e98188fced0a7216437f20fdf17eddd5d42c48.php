

<?php $__env->startSection('title', 'Products'); ?>

<?php $__env->startSection('sideSection'); ?>


    <!-- Hero section start -->
    <section class="hero_area">
        <div class="container">
            <?php if($slider): ?>
                <div class="hero-bg" style="background-image: url(<?php echo e(asset($slider->background_photo)); ?>);">

                    <div class="text-inner text-center">
                        <h3><strong>
                                <?php echo e($slider->title); ?>

                            </strong></h3>
                        <p class="text-uppercase">
                            <?php echo e($slider->short_description); ?>

                        </p>
                    </div>
                </div>
            <?php endif; ?>
        </div>
    </section>
    <!-- Hero section end -->

    <!-- product section start -->
    <section class="pricing_table_area pricing-packaging">
        <div class="container">
            <div class="pricing_table_content">
                <div class="section-title">
                    <h2>Pricing And Packages</h2>
                </div>
                <div class="row">
                    <?php $__empty_1 = true; $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                        <?php
                            $category = \App\Models\Category::findOrFail($product->sub_category_id);
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
                                            <?php $__empty_2 = true; $__currentLoopData = $product->advantages->where('active_status', 1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $advantage): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_2 = false; ?>
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
                        <p class="text-danger text-danger" colspan="4">
                            No Product Found!
                        </p>
                    <?php endif; ?>

                </div>
            </div>
        </div>
    </section>
    <!-- product section end -->

    <!-- about-account section start -->
    <section class="about-account-area">
        <div class="container">
            <div class="wrapper content">
                <?php if(isset($descriptions)): ?>
                    <?php $__currentLoopData = $descriptions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $description): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo $description->description; ?>

                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>



            </div>
        </div>
    </section>
    <!-- about-account section end -->

<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/pricing.blade.php ENDPATH**/ ?>