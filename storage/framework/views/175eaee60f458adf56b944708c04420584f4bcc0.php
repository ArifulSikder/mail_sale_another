

<?php $__env->startSection('title', 'Checkout'); ?>

<?php $__env->startSection('sideSection'); ?>

<?php $__env->startPush('css'); ?>
	<script src="https://www.paypal.com/sdk/js?client-id=<?php echo e(env('PAYPAL_SANDBOX_CLIENT_ID')); ?>"></script>
<?php $__env->stopPush(); ?>

    <!-- checkout section start -->
    <section class="checkout-area">
        <div class="container">
            <div class="wrapper">
                <div class="progress-title">
                    <nav class="bread_nav"
                        style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);"
                        aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="<?php echo e(url('cart')); ?>">SHOPPING CART</a></li>
                            <li class="breadcrumb-item"><a href="<?php echo e(url('checkout')); ?>">CHECKOUT DETAILS</a></li>
                            <li class="breadcrumb-item active" aria-current="page">ORDER COMPLETE</li>
                        </ol>
                    </nav>
                </div>
                <?php if(!Auth::check()): ?>
                    <div class="onclick-item sign-up-form ps-0">
                        <p>Returning customer?
                            <span class="click-me" data-bs-toggle="collapse" data-bs-target="#login-form"
                                aria-expanded="false" aria-controls="login-form">Click here to login</span>
                        </p>
                        <div class="collapse" id="login-form">
                            <form id="formData">
                                <div class="row">
                                    <p>If you have shopped with us before, please enter your details below. If you are a new
                                        customer, please proceed to the Billing section.</p>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <label for="username" class="form-label"><strong> Username or email*
                                            </strong></label>
                                        <input type="text" class="form-control" id="username" name="username">
                                        <strong class="text-danger validate" data-field="username"></strong>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12">
                                        <label for="password" class="form-label"><strong> Password* </strong></label>
                                        <input type="password" class="form-control" id="password" name="password">
                                        <strong class="text-danger validate" data-field="password"></strong>
                                    </div>
                                </div>
                                <div class="form-check my-3">
                                    <input class="form-check-input" type="checkbox" name="remember" value=""
                                        id="flexCheckDefault">
                                    <label class="form-check-label" for="flexCheckDefault">
                                        Remember me
                                    </label>
                                </div>
                                <button type="submit" class="btn log-in-button">Login</button>
                                <div class="forget">
                                    <a href="#">Lost your password?</a>
                                </div>
                            </form>
                        </div>
                    </div>
                <?php endif; ?>
                <div class="onclick-item">
                    <p>Have a coupon?
                        <span class="click-me" data-bs-toggle="collapse" data-bs-target="#coupon-code" aria-expanded="false"
                            aria-controls="coupon-code">Click here to enter your code</span>
                    </p>
                    <div class="collapse" id="coupon-code">
                        <div class="coupon-code">
                            <label for="coupon-code-input">If you have a coupon code, please apply it below.</label>
                            <div class="input-group mt-2">
                                <input type="text" class="form-control" id="coupon-code-input"
                                    placeholder="Enter coupon code" aria-label="Enter coupon code"
                                    aria-describedby="apply-coupon-button">
                                <button class="btn log-in-button" type="button" id="apply-coupon-button">Apply
                                    Coupon</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="billing-address">
                    <form action="<?php echo e(route('order-information')); ?>" method="POST">
                        <?php echo csrf_field(); ?>
                        <div class="row">
                            <div class="col-lg-7 col-md-12 col-sm-12 order-md-1">
                                <h4 class="orderheader mb-3">Billing address</h4>
                                <input type="hidden" value="<?php echo e(Auth::check() ? Auth::user()->id : ''); ?>" name="id">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="firstName" class="form-label">First name</label>
                                        <input type="text" name="f_name" class="form-control"
                                            value="<?php echo e(Auth::check() ? Auth::user()->f_name : ''); ?>">
                                        <?php $__errorArgs = ['f_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="lastName" class="form-label">Last name</label>
                                        <input type="text" name="l_name" class="form-control leftp"
                                            value="<?php echo e(Auth::check() ? Auth::user()->l_name : ''); ?>">
                                        <?php $__errorArgs = ['l_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="username" class="form-label">Company name (optional)</label>
                                    <div class="">
                                        <input type="text" name="company_name" class="form-control"
                                            value="<?php echo e(Auth::check() ? Auth::user()->company_name : ''); ?>">

                                    </div>
                                    <?php $__errorArgs = ['company_name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="mb-3">
                                    <label for="country" class="form-label">Country / Region</label>
                                    <div class="border custom-select py-1">
                                        <select name="code" class="custom-select d-block country-control select2"
                                            style="width: 100%">
                                            <option value="">Select a country / region&hellip;</option>
                                            <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if(Auth::check()): ?>
                                                    <option value="<?php echo e($country->code); ?>"
                                                        <?php echo e($country->code == Auth::user()->code ? 'selected' : ''); ?>>
                                                        <?php echo e($country->name); ?></option>
                                                <?php else: ?>
                                                    <option value="<?php echo e($country->code); ?>"><?php echo e($country->name); ?></option>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>

                                    <?php $__errorArgs = ['code'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="row align-items-center">
                                    <div class="col-md-6 mb-3">
                                        <label for="" class="form-label">Street address</label>
                                        <input type="text" name="street" class="form-control"
                                            placeholder="House number and street name"
                                            value="<?php echo e(Auth::check() ? Auth::user()->street : ''); ?>">

                                        <?php $__errorArgs = ['street'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="" class="form-label mt-4"></label>
                                        <input type="text" class="form-control leftp"
                                            placeholder="Apartment, suite, unit, etc. (optional)" name="address"
                                            value="<?php echo e(Auth::check() ? Auth::user()->address : ''); ?>">
                               
                                        <?php $__errorArgs = ['address'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="" class="form-label">Town / City *</label>
                                    <div>
                                        <input type="text" class="form-control" name="town"
                                            value="<?php echo e(Auth::check() ? Auth::user()->town : ''); ?>">
                                    </div>
                                    <?php $__errorArgs = ['town'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="mb-3">
                                    <label for="County" class="form-label">County (optional)</label>
                                    <div>
                                        <input type="text" class="form-control" name="country"
                                            value="<?php echo e(Auth::check() ? Auth::user()->country : ''); ?>">
                                    </div>
                                    <?php $__errorArgs = ['country'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="mb-3">
                                    <label for="Postcode" class="form-label">Postcode *</label>
                                    <div>
                                        <input type="text" class="form-control" name="post_code"
                                            value="<?php echo e(Auth::check() ? Auth::user()->post_code : ''); ?>">
                                    </div>
                                    <?php $__errorArgs = ['post_code'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="mb-3">
                                    <label for="Phone" class="form-label">Phone *</label>
                                    <div>
                                        <input type="number" class="form-control" name="phone"
                                            value="<?php echo e(Auth::check() ? Auth::user()->phone : ''); ?>">
                                    </div>
                                    <?php $__errorArgs = ['phone'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="mb-3">
                                    <label for="Email" class="form-label">Email address *</label>
                                    <div>
                                        <input type="email" class="form-control" name="email"
                                            value="<?php echo e(Auth::check() ? Auth::user()->email : ''); ?>">
                                    </div>
                                    <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <?php if(auth()->guard()->guest()): ?>
                                <div class="mb-3">
                                    <label class="onclick-item">
                                        <input type="checkbox" name="create_account" value="1"
                                            data-bs-toggle="collapse" data-bs-target="#create-account"
                                            aria-expanded="false" aria-controls="create-account" <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> checked <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> checked <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>/>
                                        <span class="ms-1 click-me" data-bs-toggle="collapse"
                                            data-bs-target="#create-account" aria-expanded="false"
                                            aria-controls="create-account">Create an account?
                                        </span>
                                    </label>
                                    <div class="collapse <?php $__errorArgs = ['username'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> show <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?> <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> show <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>" id="create-account">
                                        <div class="create-account">
                                            <div class="my-3">
                                                <label for="username" class="form-label">Account username *</label>
                                                <div>
                                                    <input type="text" class="form-control" name="username"
                                                        placeholder="username">
                                                </div>
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
                                            </div>
                                            <div class="mb-3">
                                                <label for="password" class="form-label">Create account password *</label>
                                                <div>
                                                    <input type="password" class="form-control" name="password"
                                                        placeholder="password">
                                                </div>
                                                
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
                                        </div>
                                    </div>
                                </div>
                                <?php endif; ?>
                                <div class="mb-3 ">
                                    <h4 class="orderheader">Additional information</h4>
                                    <label for="Order" class="form-label form-label">Order notes (optional)</label>
                                    <div>
                                        <textarea rows="5" name="note" placeholder="Notes about your order, e.g. special notes for delivery"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-5 col-md-12 col-sm-12 order-md-2 mb-4">
                                <div class="billing-information">
                                    <h4 class="d-flex justify-content-between align-items-center mb-3 orderheader">
                                        Your order
                                    </h4>
                                    <table class="table">
                                        <thead class="table-header">
                                            <tr>
                                                <th class="product-name">Product</th>
                                                <th class="product-total">Subtotal</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $__currentLoopData = Cart::content(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <tr class="cart_item">
                                                    <input type="hidden" name="product_id[]" value="<?php echo e($cart['id']); ?>">
                                                    <input type="hidden" name="product_quantity[]"
                                                        value="<?php echo e($cart['qty']); ?>">
                                                    <td class="product-name"><?php echo e($cart['name']); ?></td>
                                                    <td class="product-total"><strong>$<?php echo e($cart['price']); ?>*<?php echo e($cart['qty']); ?> </strong></td>
                                                </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <th>Subtotal</th>
                                                <td class="text-right"><strong>$<?php echo e(Cart::subtotal()); ?></strong></td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>Total</th>
                                                <td class="text-right"><strong>$<?php echo e(Cart::subtotal()); ?></strong> </td>
                                            </tr>
                                        </tfoot>

                                    </table>
                                    <div class="navbar ms-2 payment-method">
                                        <ul>
                                            <li class="form-check">
                                                <input type="radio" class="form-check-input" name="payment_method"
                                                    value="1" id="paypal">
                                                <label for="stripe" class="form-check-label paypal-head">
                                                    Stripe <img class="paypal-img"
                                                        src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/stripe.png"
                                                        alt="stripe">
                                                </label>
                                            </li>
                                            <li class="form-check">
                                                <input type="radio" class="form-check-input" name="payment_method"
                                                    value="2" id="paypal">
                                                <label for="paypal" class="form-check-label paypal-head">
                                                    paypal <img class="paypal-img"
                                                        src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/paypal.png"
                                                        alt="paypal">
                                                </label>
                                            </li>

                                            <li class="form-check">
                                                <input type="radio" class="form-check-input" name="payment_method"
                                                    value="3" id="payoneer">
                                                <label for="payoneer" class="form-check-label payoneer-head">
                                                    payoneer <img class="payoneer-img"
                                                        src="<?php echo e(asset('frontend')); ?>/assets/images/all-images/payoneer.png"
                                                        alt="payoneer">
                                                </label>
                                            </li>
                                            <li>
                                                <?php $__errorArgs = ['payment_method'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                    <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="mt-3 ms-2">
                                        <div class="mt-3 ms-2 terms">
                                            <label>
                                                <input type="checkbox" name="agree"  value="1" required>
                                                <span class="">I have read and agree to the website
                                                    <a href="#" target="_blank">terms and conditions
                                                    </a></span>&nbsp;<span>*</span>
                                            </label>
                                            <?php $__errorArgs = ['agree'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                                <strong class="text-danger d-block"><?php echo e($message); ?></strong>
                                            <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                        </div>
                                        <button type="submit" class="btn mt-2 order_btn order_btncor">Place
                                            order</button>

                                        <div class="mt-4 privacy">
                                            <p>Your personal data will be used to process your order, support your
                                                experience
                                                throughout this website, and for other purposes described in our
                                                <a href="./privacy-policy.html" target="_blank">privacy policy</a>.
                                            </p>
                                        </div>
                                        <div><b>10% Discount on Bitcoin Payment</b></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- checkout section end -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<?php if($errors->any()): ?>
<?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<script>
    toastr.error("<?php echo e($error); ?>")
</script>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php endif; ?>

    <script>
        $(document).ready(function() {

            $('#password').keyup(function(e) {
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

                        $('.validate').text('');

                        $.each(error.responseJSON.errors, function(field_name, error) {
                            const errorElement = $('.validate[data-field="' +
                                field_name + '"]');
                            if (errorElement.length > 0) {
                                errorElement.text(error[0]);
                            }
                        });

                    }
                });
            });
            //add form
            $("form#formData").submit(function(e) {
                e.preventDefault();

                var formData = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('login-from-checkout-page')); ?>",
                    // dataType: "json",
                    contentType: false,
                    processData: false,
                    data: formData,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        if (response.success == true) {
                            toastr.success("Login Successfull!");
                        } else if (response.success == false) {
                            toastr.error("Somentings Went Wrong!");
                        }
                    },
                    error: function(error) {

                        $('.validate').text('');

                        $.each(error.responseJSON.errors, function(field_name, error) {
                            const errorElement = $('.validate[data-field="' +
                                field_name + '"]');
                            if (errorElement.length > 0) {
                                errorElement.text(error);
                                toastr.error(error);
                            }
                        });
                    },
                    complete: function(done) {
                        if (done.status == 200) {
                            window.location.reload();
                        }
                    }
                });
            });
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/checkout.blade.php ENDPATH**/ ?>