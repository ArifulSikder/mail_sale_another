

<?php $__env->startSection('title', 'Stock'); ?>

<?php $__env->startSection('section'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Stock Management</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Stock Management</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="my-1 d-flex justify-content-between">
                    <div>
                    </div>
                    <form action="">
                        <div class="form-group d-flex">
                            <input class="form-control" type="search" placeholder="Search By Product Name" name="search" value="<?php echo e($search); ?>">
                            <button class="btn btn-info btn-sm ml-2">Search</button>
                        </div>
                    </form>
                </div>
                <div class="card">
                    <div class="card-header">Stocks Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 20%">Product Name</th>
                                    <th scope="col" style="width: 15%">Quantity</th>
                                    <th scope="col" style="width: 15%">Average Per Price</th>
                                    <th scope="col" style="width: 15%">Stock Alert</th>
                                    <th scope="col" style="width: 15%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $serials = ($stocks->currentpage() - 1) * $stocks->perpage() + 1;
                                ?>
                                <?php $__currentLoopData = $stocks; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $stock): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php
                                        $alert = \app\Models\StockManagement::where('id', $stock->id)
                                            ->where('quantity', '<=', $stock->stock_alert)
                                            ->first();
                                    ?>
                                    <?php if($alert): ?>
                                        <?php $__env->startPush('js'); ?>
                                            <script>
                                                toastr.error("<?php echo e($stock->product->name); ?> Is Low Stock.");
                                            </script>
                                        <?php $__env->stopPush(); ?>
                                    <?php endif; ?>
                                    <tr>
                                        <th><?php echo e($serials++); ?></th>
                                        <td><?php echo e($stock->product->name); ?></td>
                                        <td><?php echo e($stock->quantity); ?></td>
                                        <td><?php echo e($stock->average_per_price); ?></td>
                                        <td>
                                            <?php if($stock->stock_alert == null): ?>
                                                <span class="text-info">No alert Quantity added</span>
                                            <?php elseif($stock->quantity <= $stock->stock_alert): ?>
                                                (<?php echo e($stock->stock_alert); ?>)
                                                <span class="text-danger">Low Stock</span> <i
                                                    class="fas fa-exclamation-triangle text-danger"></i>
                                            <?php elseif($stock->quantity >= $stock->stock_alert): ?>
                                                (<?php echo e($stock->stock_alert); ?>)<span class="text-success">Enough Stock</span>
                                            <?php endif; ?>
                                        </td>   
                                        <td>
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                <button type="button" data-id="<?php echo e($stock->id); ?>"
                                                    data-stock_alert="<?php echo e($stock->stock_alert); ?>"
                                                    class="btn btn-danger btn-sm editStock btn-block">
                                                    <i class="fas fa-exclamation-triangle"></i> Add Alert
                                                </button>

                                                <a href="<?php echo e(route('delete-stock', ['id' => $stock->id])); ?>" id="delete"
                                                    class="btn btn-danger btn-sm btn-block"><i class="fas fa-trash"></i>
                                                    Delete</a>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            <?php echo e($stocks->links()); ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>





<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

    <script>
        $(document).ready(function() {

            $('.editStock').click(function(e) {
                e.preventDefault();
                $('#editstock').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#stock_alert_e').val($(this).data('stock_alert'));
            });

            $("#editData").submit(function(e) {
                e.preventDefault();

                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-stock-alert')); ?>",
                    contentType: false,
                    processData: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formdata,
                    success: function(response) {
                        if (response.success) {
                            toastr.success(response.success);
                        } else if (response.error) {
                            toastr.error(response.error);
                        }
                    },
                    error: function(error) {
                        $('.validate').text('');
                        $.each(error.responseJSON.errors, function(field_name, error) {
                            const errorElement = $('.validate_e[data-field="' +
                                field_name + '"]');
                            if (errorElement.length > 0) {
                                errorElement.text(error[0]);
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

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/stockManage/indexStock.blade.php ENDPATH**/ ?>