

<?php $__env->startSection('title', 'Invoice'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Orders</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Invoice</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-body">
                  <div class="container mb-5 mt-3">
                    <div class="row d-flex align-items-baseline">
                      <div class="col-xl-9">
                        <p style="color: #7e8d9f;font-size: 20px;">Invoice >> <strong>ID: #123-123</strong></p>
                      </div>
                      <div class="col-xl-3 float-end">
                        <a class="btn btn-light text-capitalize border-0" data-mdb-ripple-color="dark"><i
                            class="fas fa-print text-primary"></i> Print</a>
                        <a class="btn btn-light text-capitalize" data-mdb-ripple-color="dark"><i
                            class="far fa-file-pdf text-danger"></i> Export</a>
                      </div>
                      <hr>
                    </div>
              
                    <div class="container">
                      <div class="col-md-12">
                        <div class="text-center">
                          <h3 style="color:#5d9fc5 ;" class="fw-bold">Pvashop</h3>
                          <p class="pt-0">pvashop.com</p>
                        </div>
              
                      </div>
              
              
                      <div class="row">
                        <div class="col-xl-8">
                          <ul class="list-unstyled">
                            <li class="text-muted">To: <span style="color:#5d9fc5 ;"><?php echo e($user->username); ?></span></li>
                            <li class="text-muted"><?php echo e($user->street); ?> <?php echo e($user->city); ?></li>
                            <li class="text-muted"><?php echo e($user->country); ?></li>
                            <li class="text-muted"><i class="fas fa-phone"></i> <?php echo e($user->phone); ?></li>
                          </ul>
                        </div>
                        <div class="col-xl-4">
                          <p class="text-muted">Invoice</p>
                          <ul class="list-unstyled">
                            <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                class="fw-bold">ID:</span><?php echo e("#A".$order->id + 100); ?></li>
                            <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                class="me-1 fw-bold">Status:</span><span class="badge bg-warning text-black fw-bold">
                                <?php echo e($order->status); ?></span></li>
                          </ul>
                        </div>
                      </div>
              
                      <div class="row my-2 mx-1 justify-content-center">
                        <table class="table table-striped table-borderless">
                          <thead style="background-color:#84B0CA ;" class="text-white">
                            <tr>
                              <th scope="col">#</th>
                              <th scope="col">Product Name</th>
                              <th scope="col">Qty</th>
                              <th scope="col">Unit Price</th>
                              <th scope="col">Total</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <th scope="row">1</th>
                              <td>Pro Package</td>
                              <td>4</td>
                              <td>$10</td>
                              <td>$<?php echo e($order->total_price); ?></td>
                            </tr>
                          </tbody>
              
                        </table>
                      </div>
                      <div class="row">
                        <div class="col-xl-8">
                          <p class="ms-3">Add additional notes and payment information</p>
              
                        </div>
                        <div class="col-xl-3">
                          <ul class="list-unstyled">
                            <li class="text-muted ms-3"><span class="text-black me-4">SubTotal</span>$1110</li>
                            <li class="text-muted ms-3 mt-2"><span class="text-black me-4">Tax(15%)</span>$111</li>
                          </ul>
                          <p class="text-black float-start"><span class="text-black me-3"> Total Amount</span><span
                              style="font-size: 25px;">$1221</span></p>
                        </div>
                      </div>
                      <hr>
                      <div class="row">
                        <div class="col-xl-10">
                          <p>Thank you for your purchase</p>
                        </div>
                        <div class="col-xl-2">
                          <button type="button" class="btn btn-primary text-capitalize"
                            style="background-color:#60bdf3 ;">Done</button>
                        </div>
                      </div>
              
                    </div>
                  </div>
                </div>
              </div>
        </div>
    </section>

</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/order/invoice.blade.php ENDPATH**/ ?>