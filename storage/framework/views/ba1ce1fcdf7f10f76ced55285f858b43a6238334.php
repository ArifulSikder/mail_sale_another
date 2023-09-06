

<?php $__env->startSection('title', 'Checkout'); ?>

<?php $__env->startSection('sideSection'); ?>
    <!-- checkout section start -->
    <section class="checkout-area">
        <div class="container">
            <div class="wrapper">
                <div class="text-center">
                    <img style="width: 20%" src="<?php echo e(asset('frontend/assets/images/payment-success.png')); ?>" alt="payment-success">
                    <h1>Your order is successfully done!</h1>     
                    <p class="text-secondary">Your order is confirmed you will receive an order confirmation email/SMS shortly with the expected delivery date your items</p>     
               
                </div>
            </div>
        </div>
    </section>
    <!-- checkout section end -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/payment/payment_success_message.blade.php ENDPATH**/ ?>