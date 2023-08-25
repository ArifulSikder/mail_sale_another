<?php $__env->startSection('title'); ?>
    Login
<?php $__env->stopSection(); ?>

<?php if (isset($component)) { $__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da = $component; } ?>
<?php $component = App\View\Components\AppLayout::resolve([] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('app-layout'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(App\View\Components\AppLayout::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
    <!-- sign up section start -->
    <section class="sign-up-form">
        <div class="container">
            <div class="content wrapper">
                <div class="my_account_header">
                    <div class="header_title">
                        <h1 class="text-center">My Account</h1>
                    </div>
                </div>
                <div class="my_account_body">
                    <div class="row">
                        <div class="col-md-6 offset-md-3 col-sm-12 offset-sm-0">
                            <h3 class="text-center">Login</h3>
                            <form class="form-one"method="POST" action="<?php echo e(route('login')); ?>" autocomplete="off">
                                <?php echo csrf_field(); ?>
                                <div class="mb-3 mt-3">
                                    <label for="emailLogin">Username or email address *</label>
                                    <input type="text" class="form-control" id="emailLogin" name="email"
                                        autocomplete="off">
                                    <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="mb-3">
                                    <label for="password">Password *</label>
                                    <input type="password" class="form-control shadow-inset" id="password"
                                        name="password" required>
                                    <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" name="remember" value=""
                                        id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Remember me
                                    </label>
                                </div>
                                <button type="submit" class="btn log-in-button mt-3">LOG IN</button>
                                <div class="forget">
                                    <a href="<?php echo e(url('register')); ?>">Sign Up</a>
                                </div>
                                <div class="forget">
                                    <?php if(Route::has('password.request')): ?>
                                        <a href="<?php echo e(route('password.request')); ?>">Lost your password?</a>
                                    <?php endif; ?>
                                </div>
                            </form>
                        </div>

                        
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- sign up section end -->

    <?php $__env->startPush('js'); ?>
        <script>
            $(document).ready(function() {
                $('#username').blur(function(e) {
                    e.preventDefault();
                    $('#usernameMsg').text('');
                    var username = $(this).val();
                    var array = {
                        'username': username
                    }

                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(url('validate-userdata')); ?>",
                        data: array,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#usernameMsg').text('');
                            }
                        },
                        error: function(error) {
                            $('usernameMsg').text('');
                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'username') {
                                    $('#usernameMsg').text(error);
                                }
                            })
                        }
                    });
                });


                $('#email_register').blur(function(e) {
                    e.preventDefault();
                    $('#emailMsg').text('');
                    var email = $(this).val();
                    var array = {
                        'email': email
                    }
                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(url('validate-userdata')); ?>",
                        data: array,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#emailMsg').text('');
                            }
                        },
                        error: function(error) {
                            $('emailMsg').text('');
                            $.each(error.responseJSON.errors, function(field_name, error) {

                                if (field_name == 'email') {
                                    $('#emailMsg').text(error);
                                }

                            })
                        }
                    });
                });

                $('#pwd').keyup(function(e) {
                    e.preventDefault();
                    $('#passwordMsg').text('');

                    var password = $(this).val();
                    var array = {
                        'password': password
                    }

                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(url('validate-userdata')); ?>",
                        data: array,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#passwordMsg').text('');
                            }
                        },
                        error: function(error) {
                            $('passwordMsg').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'password') {
                                    $('#passwordMsg').html(error[0]);
                                }
                            })

                        }
                    });
                });
            });
        </script>
    <?php $__env->stopPush(); ?>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da)): ?>
<?php $component = $__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da; ?>
<?php unset($__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da); ?>
<?php endif; ?>
<?php /**PATH C:\laragon\www\mail_sale_another\resources\views/auth/login.blade.php ENDPATH**/ ?>