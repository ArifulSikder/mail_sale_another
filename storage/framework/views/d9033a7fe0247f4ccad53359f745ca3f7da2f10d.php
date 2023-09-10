

<?php $__env->startSection('myAccount'); ?>
    <div class="tab-pane fade" id="v-pills-account" role="tabpanel" aria-labelledby="v-pills-account-tab" tabindex="0">
        <form class="form" id="updateUserData2" method="POST">
            <input type="hidden" value="<?php echo e(Auth::user()->id); ?>" name="id">
            <div class="row">
                <div class="col-lg-6">
                    <label class="required d-block" for="fname">First name *</label>
                    <input class="input_edit" type="text" id="fname" name="f_name"
                        value="<?php echo e(Auth::user()->f_name); ?>">

                    <strong id="fname_msg2" class="text-danger"></strong>
                </div>

                <div class="col-lg-6">
                    <label class="required d-block" for="lname">Last name *</label>
                    <input class="input_edit" type="text" id="lname" name="l_name"
                        value="<?php echo e(Auth::user()->l_name); ?>">

                    <strong id="lname_msg2" class="text-danger"></strong>
                </div>
            </div>

            <label class="required d-block" for="dname">Display name *</label>
            <input class="input_edit_2" type="text" id="dname" name="username" value="<?php echo e(Auth::user()->username); ?>">
            <strong id="username_msg2" class="text-danger"></strong>

            <p class="fst-italic">This will be how your name will be displayed in the account
                section and in reviews</p>

            <label class="required d-block" for="email-address">Email address *</label>
            <input class="input_edit_2" type="email" id="email-address" name="email" value="<?php echo e(Auth::user()->email); ?>">
            <strong id="email_msg2" class="text-danger"></strong>

            <p class="sub_head">Password change</p>

            <label class="required d-block" for="current_password">Current password (leave
                blank to leave unchanged)</label>
            <input class="input_edit_2" type="password" id="current_password" name="password">
            <strong id="current_password_msg2" class="text-danger"></strong>

            <label class="required d-block" for="new_password">New password (leave blank to
                leave unchanged)</label>
            <input class="input_edit_2" type="password" id="new_password" name="new_password">
            <strong id="new_password_msg2" class="text-danger"></strong>

            <label class="required d-block" for="confirm_password">Confirm new
                password</label>
            <input class="input_edit_2" type="password" id="confirm_password" name="confirm_password">
            <strong id="confirm_password_msg2" class="text-danger"></strong>

            <div class="common_content d-flex mt-3">
                <button class="btn_2 py-2" type="submit">Save changes</button>
            </div>
        </form>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.my-account', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/my_account/account.blade.php ENDPATH**/ ?>