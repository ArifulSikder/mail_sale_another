<?php $__env->startSection('title','OTP'); ?>
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
                      <h1 class="text-center">Submit OPT</h1>
                  </div>
              </div>
              <div class="my_account_body">
                <p class="text-danger text-center">Please Check Your Email.</p>
                  <div class="row">
                      <div class="col-6 offset-3">
                          <form class="form-one"method="POST" action="<?php echo e(route('submit-opt')); ?>" autocomplete="off" >
                              <?php echo csrf_field(); ?>
                              <input type="hidden" name="email" value="<?php echo e(session('email')); ?>">
                              <div class="mb-3 mt-3">
                                <label for="code">OTP Code</label>
                                <input type="number" class="form-control" id="code" name="otp" autocomplete="off">
                                <?php $__errorArgs = ['otp'];
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
                              <button type="submit" class="btn log-in-button mt-3">Submit</button>
                          </form>
                          <p class="text-danger">
                            <?php if(session()->has('message')): ?>
                                <?php echo e(session()->get('message')); ?>

                            <?php endif; ?>
                          </p>

                          <form class="form-one"method="POST" action="<?php echo e(route('re-send-otp')); ?>" autocomplete="off" >
                            <?php echo csrf_field(); ?>
                            <input type="hidden" name="email" value="<?php echo e(session('email')); ?>">
                            <button type="submit" class="btn log-in-button mt-3">Re-send OTP</button>
                        </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
 <?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da)): ?>
<?php $component = $__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da; ?>
<?php unset($__componentOriginal8e2ce59650f81721f93fef32250174d77c3531da); ?>
<?php endif; ?>

<?php /**PATH C:\laragon\www\mail_sale_another\resources\views/auth/verify-email.blade.php ENDPATH**/ ?>