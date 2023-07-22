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
                            <div class="col-6">
                                <h3>Login</h3>
                                <form class="form-one"method="POST" action="<?php echo e(route('login')); ?>" autocomplete="off" >
                                    <?php echo csrf_field(); ?>
                                    <div class="mb-3 mt-3">
                                      <label for="emailLogin">Username or email address *</label>
                                      <input type="text" class="form-control" id="emailLogin" name="email" autocomplete="off">
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
                                      <input type="password" class="form-control shadow-inset" id="password" name="password" required>
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
                                        <input class="form-check-input" type="checkbox" name="remember" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Remember me
                                        </label>
                                      </div>
                                    <button type="submit" class="btn log-in-button mt-3">LOG IN</button>
                                    <div class="forget">
                                        <?php if(Route::has('password.request')): ?>
                                            <a  href="<?php echo e(route('password.request')); ?>">Lost your password?</a>
                                        <?php endif; ?>
                                    </div>
                                </form>
                            </div>

                            <div class="col-6">
                                <h3>REGISTER</h3>
                                <form class="form-two" method="POST" action="<?php echo e(route('register')); ?>">
                                    <?php echo csrf_field(); ?>

                                    <div class="mb-3 mt-3">
                                      <label for="username">Username *</label>
                                      <input type="text" class="form-control" id="username" name="username" required >
                                        <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <strong class="text-danger"><?php echo e($message); ?></strong>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        <strong class="text-danger" id="usernameMsg"></strong>
                                    </div>
                                    <div class="mb-3 mt-3">
                                      <label for="email_register">Email address *</label>
                                      <input type="email" class="form-control" id="email_register" name="email_register" required >
                                      <?php $__errorArgs = ['email_register'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger"><?php echo e($message); ?></strong>
                                      <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                      <strong class="text-danger" id="emailMsg"></strong>
                                    </div>
                                    <div class="mb-3">
                                      <label for="pwd">Password *</label>
                                      <input type="password" class="form-control" id="pwd" name="password_register" required >
                                      <?php $__errorArgs = ['password_register'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger"><?php echo e($message); ?></strong>
                                      <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                      <strong class="text-danger" id="passwordMsg"></strong>
                                    </div>
                                    <div class="text">
                                        <p>Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our
                                        <a href="">privacy policy</a>.</p>
                                    </div>
                                    <button type="submit" class="btn log-in-button">REGISTER</button>
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
              $(document).ready(function () {
                $('#username').blur(function (e) {
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
                        success: function (response) {
                            if (response.status == 200) {
                                $('#usernameMsg').text('');
                            }
                        },
                        error: function (error) {
                            $('usernameMsg').text('');
                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'username') {
                                    $('#usernameMsg').text(error);
                                }
                            })
                        }
                    });
                });


                $('#email_register').blur(function (e) {
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
                        success: function (response) {
                            if (response.status == 200) {
                                $('#emailMsg').text('');
                            }
                        },
                        error: function (error) {
                            $('emailMsg').text('');
                            $.each(error.responseJSON.errors, function(field_name, error) {

                                if (field_name == 'email') {
                                    $('#emailMsg').text(error);
                                }

                            })
                        }
                    });
                });

                $('#pwd').keyup(function (e) {
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
                        success: function (response) {
                            if (response.status == 200) {
                                $('#passwordMsg').text('');
                            }
                        },
                        error: function (error) {
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

<?php /**PATH C:\laragon\www\altab_mail_sell\resources\views/auth/login.blade.php ENDPATH**/ ?>