
<?php $__env->startSection('myAccount'); ?>
<div class="">
    



    <div class="table-responsive">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col">Serial</th>
              <th scope="col">Id</th>
              <th scope="col">Date</th>
              <th scope="col">Customar</th>
              <th scope="col">Total</th>
              <th scope="col">Status</th>
              <th scope="col">Payment</th>
            </tr>
          </thead>
          <tbody>
            <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <th scope="row"><?php echo e($loop->iteration); ?></th>
                    <td><?php echo e("#A".$order->id + 100); ?></td>
                    <td><?php echo e($order->created_at->toFormateDate()); ?></td>
                    <td><?php echo e($order->f_name); ?></td>
                    <td>$<?php echo e($order->total_price); ?></td>
                    <td><?php echo e($order->status); ?></td>
                    <td>
                        <?php if($order->payment_method == 1): ?>
                            <p>Stripe</p>
                            <?php else: ?>
                            <p>Paypal</p>
                            <?php endif; ?>
                    </td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
          </tbody>
        </table>
      </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('frontend.my-account', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/my_account/orders.blade.php ENDPATH**/ ?>