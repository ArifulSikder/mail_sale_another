
<?php $__env->startSection('myAccount'); ?>
<div class="">
    


    <h3 class="text-center text-danger fw-bold">Orders</h3>
    <div class="table-responsive">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col" class="text-danger">Serial</th>
              <th scope="col" class="text-danger">Id</th>
              <th scope="col" class="text-danger">Date</th>
              <th scope="col" class="text-danger">Status</th>
              <th scope="col" class="text-danger">Payment</th>
              <th scope="col" class="text-danger">Amount</th>
            </tr>
          </thead>
          <tbody>
            <?php
                $total = 0;
            ?>
            <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <th scope="row"><?php echo e($loop->iteration); ?></th>
                    <td><?php echo e("#A".$order->id + 100); ?></td>
                    <td><?php echo e($order->created_at->toFormateDate()); ?></td>
                    <td><?php echo e($order->status); ?></td>
                    <td>
                        <?php if($order->payment_method == 1): ?>
                          <p>Stripe</p>
                        <?php else: ?>
                          <p>Paypal</p>
                        <?php endif; ?>
                    </td>
                    <td class="text-end">$<?php echo e($order->total_price); ?></td>

                </tr>
                <?php
                  $total +=$order->total_price ;
                ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <tr>
                  <td colspan="10" class="text-end"><strong class="text-danger">Total</strong> = $<?php echo e($total); ?></td>
                </tr>
          </tbody>
        </table>
      
      </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.my-account', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/my_account/orders.blade.php ENDPATH**/ ?>