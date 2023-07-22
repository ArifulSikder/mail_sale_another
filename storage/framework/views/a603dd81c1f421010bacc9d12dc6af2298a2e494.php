<!-- header section end -->


<?php $__env->startSection('title', 'Cart'); ?>

<?php $__env->startSection('sideSection'); ?>

    <!-- cart section start -->
    <section class="cart-area">
        <div class="container">
            <div class="wrapper">
                <nav class="bread_nav"
                    style="--bs-breadcrumb-divider: url(&#34;data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='8' height='8'%3E%3Cpath d='M2.5 0L1 1.5 3.5 4 1 6.5 2.5 8l4-4-4-4z' fill='%236c757d'/%3E%3C/svg%3E&#34;);"
                    aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a class="active" href="<?php echo e(url('cart')); ?>">SHOPPING CART</a></li>
                        <li class="breadcrumb-item" aria-current="page"><a href="<?php echo e(url('checkout')); ?>">CHECKOUT DETAILS</a>
                        </li>
                        <li class="breadcrumb-item" aria-current="page"><a href="">ORDER COMPLETE</a> </li>
                    </ol>
                </nav>
                <div class="row">
                    <div class="col-lg-8 col-md-12">
                        <div class="product-table text-left">
                            <table>
                                <thead>
                                    <tr class="items">
                                        <th colspan="3">PRODUCT</th>
                                        <th>PRICE</th>
                                        <th>QUANTITY</th>
                                        <th>Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $__empty_1 = true; $__currentLoopData = $carts; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cart): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                        <tr class="product-items" id="main<?php echo e($cart['id']); ?>">
                                            <td> <a href="" class="clear" data-id="<?php echo e($cart['id']); ?>"><i
                                                        class="fa-regular fa-circle-xmark"></i></a></td>
                                            <td> <a href=""><img src="<?php echo e(asset($cart['thumbnail'])); ?>" width="100"
                                                        alt=""></a>
                                            </td>
                                            <td> <a href="">
                                                    <p class="pva"><?php echo e($cart['name']); ?></p></i>
                                                </a>
                                            </td>
                                            <td> <b>
                                                    <p class="dollar" id="dollar<?php echo e($cart['id']); ?>"><?php echo e($cart['price']); ?> $
                                                    </p>
                                                </b>
                                            </td>
                                            <td class="plus-minus">
                                                <input type="hidden" name="product_id" value="<?php echo e($cart['id']); ?>">
                                                <input type="button" value="-" class="minus-btn"
                                                    data-id="<?php echo e($cart['id']); ?>">
                                                <input type="number" class="nmbr" id="mynum<?php echo e($cart['id']); ?>"
                                                    step="1" min="1" name="quantity"
                                                    value="<?php echo e($cart['qty']); ?>" readonly>
                                                <input type="button" value="+" class="plus-btn"
                                                    data-id="<?php echo e($cart['id']); ?>">
                                            </td>
                                            <td>
                                                <strong id="total<?php echo e($cart['id']); ?>"><?php echo e($cart['price'] * $cart['qty']); ?>

                                                    $</strong>
                                            </td>
                                        </tr>

                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                    <?php endif; ?>

                                    <tr class="shppping">
                                        <td colspan="3"> <a class="btn btn-outline-danger" href="<?php echo e(url('product')); ?>">
                                                <i class="fa-solid fa-arrow-left-long">
                                                    <span class="text-one">Continue shopping</span>
                                                </i>
                                            </a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12">
                        <div class="cart-collaterals">
                            <div class="process-title mb-3">
                                <h4>Cart totals</h4>
                            </div>
                            <table class="table" id="subtotal">
                                <tbody>
                                    <tr>
                                        <td>Subtotal</td>
                                        <td class="text-end"><?php echo e(Cart::subtotal()); ?> $</td>
                                    </tr>
                                    <tr>
                                        <td>Total</td>
                                        <td class="text-end"><?php echo e(Cart::subtotal()); ?> $</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="buton mb-2">
                                <a class="btn-two btn-danger" href="<?php echo e(url('checkout')); ?>">Proceed to checkout</a>
                            </div>
                            <div class="coupon">
                                <form>
                                    <h5><i class="fa-solid fa-tag pe-2"></i>Coupon</h5>
                                    <input type="text" class="form-control mt-3" id="exampleFormControlInput1"
                                        placeholder="coupon Code">
                                    <input type="submit" name="submit" class="Apply" value="Apply coupon">
                                </form>
                            </div>
                            <div class="offer mt-4">
                                <h6><b>Best Offer- 10% Discount on Bitcoin Payment</b></h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $(".product_quantity").inputSpinner();
    </script>
    <script>
        $(document).ready(function() {
            $(".clear").click(function(e) {
                e.preventDefault();
                var id = $(this).data("id");
                var qty = parseInt($(`#mynum${id}`).val());

                removeProductItem(id);
                cartSubNumber(-qty)
            });

            $(".minus-btn").click(function(e) {
                e.preventDefault();
                var id = $(this).data('id');
                var number = $(`#mynum${id}`).val();
                if (number != 1) {
                    $(`#mynum${id}`).val(parseInt(number) - 1);
                    var qty = $(`#mynum${id}`).val();

                    updateCartQuantity(qty, id);
                    cartSubNumber(-1);
                    totalAmount(id, qty);
                    //    cardSubTotal();
                }
            });

            $(".plus-btn").click(function(e) {
                e.preventDefault();

                var id = $(this).data('id');
                var number = $(`#mynum${id}`).val();
                $(`#mynum${id}`).val(parseInt(number) + 1).val();

                var qty = $(`#mynum${id}`).val();
                updateCartQuantity(qty, id);
                cartSubNumber(1);
                totalAmount(id, qty);
                // cardSubTotal();

            });

            function updateCartQuantity(qty, id) {
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-cart')); ?>",
                    data: {
                        id: id,
                        qty: qty
                    },
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        $("#subtotal").empty();
                        $("#subtotal").html(response);
                    }
                });
            }

            function cartSubNumber(qty) {
                var num1 = parseInt($("#cartSubNum").text().trim());
                var num2 = qty;
                $("#cartSubTag").empty();
                var newNum = num1 + num2;
                var newHTML = `<strong id="cartSubNum">${newNum}</strong>`;
                $("#cartSubTag").append(newHTML);

            }

            function totalAmount(id, qty) {
                var num1 = parseInt(qty);
                var num2 = parseInt($(`#dollar${id}`).text().trim());
                var multiple = num1 * num2;
                $(`#total${id}`).empty();
                $(`#total${id}`).text(`${multiple} $`);

            }

            function removeProductItem(id) {
                $(`#main${id}`).addClass('d-none');

                $.ajax({
                    type: "GET",
                    url: "<?php echo e(url('remove-product-item')); ?>",
                    data: {
                        id: id
                    },
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function(response) {
                        console.log(response);
                        $("#subtotal").empty();
                        $("#subtotal").html(response);
                    }
                });
            }
        });
    </script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\altab_mail_sell\resources\views/frontend/cart.blade.php ENDPATH**/ ?>