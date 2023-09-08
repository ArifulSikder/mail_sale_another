

<?php $__env->startSection('title', 'Purchases List'); ?>

<?php $__env->startSection('section'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Product Purchase List</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Product Purchase List</li>
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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addNew">
                            <i class="fas fa-plus"></i> Purchase
                        </button>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="search" placeholder="Search By Category Name">
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">Purchase Product List Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 20%">Product Name</th>
                                    <th scope="col" style="width: 20%">Seller Name</th>
                                    <th scope="col" style="width: 10%">Quantity</th>
                                    <th scope="col" style="width: 10%">Per Price</th>
                                    <th scope="col" style="width: 10%">Lot Number</th>
                                    <th scope="col" style="width: 15%">Date</th>
                                    <th scope="col" style="width: 15%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $serials = ($purchases->currentpage() - 1) * $purchases->perpage() + 1;
                                ?>
                                <?php $__currentLoopData = $purchases; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $purchase): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <th><?php echo e($serials++); ?></th>
                                        <td><?php echo e($purchase->product->name); ?></td>
                                        <td><?php echo e($purchase->seller->seller_name); ?></td>
                                        <td><?php echo e($purchase->quantity); ?></td>
                                        <td><?php echo e($purchase->per_price); ?></td>
                                        <td><?php echo e($purchase->id); ?></td>
                                        <td><?php echo e($purchase->date->toFormateDate()); ?></td>
                                        <td>
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                <button type="button" data-purchase="<?php echo e($purchase); ?>" data-date="<?php echo e(\Carbon\Carbon::parse($purchase->date)->format('Y-m-d\TH:i:s')); ?>"
                                                    class="btn btn-success btn-sm editData btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="<?php echo e(route('delete-purchase', ['purchase' => $purchase->id])); ?>" id="delete"
                                                    class="btn btn-danger btn-sm btn-block"><i class="fas fa-trash"></i>
                                                    Delete</a>
                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            <?php echo e($purchases->links()); ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>


    <!-- add stocks -->
    <div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Purchase Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        
                        <div class="form-group">
                            <label for="date">Purchase Date</label>
                            <input type="datetime-local" class="form-control" name="date" placeholder="Select Date">
                            <span class="text-danger validate" data-field="date"></span>

                        </div>
                        <div class="form-group">
                            <label for="product_id">Product Name</label>
                            <select class="form-control select2" name="product_id" id="product_id"
                                data-placeholder="Select Product" style="width: 100%">
                                <option value="">Select Product</option>
                                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($product->id); ?>"><?php echo e($product->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </select>
                            <span class="text-danger validate" data-field="product_id"></span>
                        </div>

                        <div class="form-group">
                            <label for="seller_id">Select Seller</label>
                            <select class="form-control select2" name="seller_id" id="seller_id"
                                data-placeholder="Select Seller" style="width: 100%">
                                <option value="">Select Seller</option>
                                <?php $__currentLoopData = $sellers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $seller): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($seller->id); ?>"><?php echo e($seller->seller_name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </select>
                            <span class="text-danger validate" data-field="seller_id"></span>
                        </div>

                        <div class="form-group">
                            <label for="quantity">Product Quantity</label>
                            <input type="number" class="form-control" name="quantity" placeholder="Enter Product Quantity">
                            <span class="text-danger validate" data-field="quantity"></span>

                        </div>
                        <div class="form-group">
                            <label for="per_price">Price Per Product</label>
                            <input type="number" class="form-control" name="per_price"
                                placeholder="Enter Product Price">
                            <span class="text-danger validate" data-field="per_price"></span>

                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- edit stock -->
    <div class="modal fade" id="editseller" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Seller</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="editData">
                    <div class="modal-body">
                        <input type="hidden" name="id" id="id_e">
                        
                        <div class="form-group">
                            <label for="date_e">Purchase Date</label>
                            <input type="datetime-local" class="form-control" name="date" id="date_e" placeholder="Select Date">
                            <span class="text-danger validate" data-field="date"></span>

                        </div>
                        <div class="form-group">
                            <label for="product_id_e">Product Name</label>
                            <select class="form-control select2" name="product_id" id="product_id_e"
                                data-placeholder="Select Product" style="width: 100%">
                                <option value="">Select Product</option>
                                <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($product->id); ?>"><?php echo e($product->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </select>
                            <span class="text-danger validate" data-field="product_id"></span>
                        </div>

                        <div class="form-group">
                            <label for="seller_id_e">Select Seller</label>
                            <select class="form-control select2" name="seller_id" id="seller_id_e"
                                data-placeholder="Select Seller" style="width: 100%">
                                <option value="">Select Seller</option>
                                <?php $__currentLoopData = $sellers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $seller): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($seller->id); ?>"><?php echo e($seller->seller_name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                            </select>
                            <span class="text-danger validate" data-field="seller_id"></span>
                        </div>

                        <div class="form-group">
                            <label for="quantity_e">Product Quantity</label>
                            <input type="number" class="form-control" name="quantity" id="quantity_e" placeholder="Enter Product Quantity">
                            <span class="text-danger validate" data-field="quantity"></span>

                        </div>
                        <div class="form-group">
                            <label for="per_price_e">Price Per Product</label>
                            <input type="number" class="form-control" name="per_price" id="per_price_e"
                                placeholder="Enter Product Price">
                            <span class="text-danger validate" data-field="per_price"></span>

                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>

    <script>
        $(document).ready(function() {

            $("#formData").submit(function(e) {
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('store-purchase')); ?>",
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
                            const errorElement = $('.validate[data-field="' +
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



            $('.editData').click(function(e) {
                e.preventDefault();
                


                console.log($(this).data('purchase').id);
                $('#editseller').modal('show');
                $('#id_e').val($(this).data('purchase').id);
                $('#product_id_e').val($(this).data('purchase').product_id).trigger('change');
                $('#seller_id_e').val($(this).data('purchase').seller_id).trigger('change');
                $('#quantity_e').val($(this).data('purchase').quantity);
                $('#per_price_e').val($(this).data('purchase').per_price);
                $('#date_e').val($(this).data('date'));
            });

            $("#editData").submit(function(e) {
                e.preventDefault();

                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-purchase')); ?>",
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

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/stockManage/indexPurchase.blade.php ENDPATH**/ ?>