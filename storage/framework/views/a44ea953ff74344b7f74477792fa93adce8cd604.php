
<?php $__env->startSection('myAccount'); ?>
    <div class="tab-pane fade show active" id="v-pills-dboard" role="tabpanel" aria-labelledby="v-pills-dboard-tab"
        tabindex="0">
        <p>Hello <b><?php echo e(Auth::user()->username); ?></b> (not <b><?php echo e(Auth::user()->username); ?></b>?
            <span class="link">
                <a href="<?php echo e(url('logout')); ?>">Log out</a>
            </span>)
        </p>
        <p>From your account dashboard you can view your <span class="link"><a href="#">recent orders</a></span>,
            manage your <span class="link"><a href="#">shipping and billing addresses</a></span>, and <span
                class="link"><a href="#">edit your password and account
                    details</a></span>.</p>
        <div class="common_button">
            <a href="" class="btn">Orders</a>
            <a href="" class="btn">Downloads</a>
            <a href="" class="btn">Addresses</a>
            <a href="" class="btn">Account details</a>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.my-account', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/my_account/dashboard.blade.php ENDPATH**/ ?>