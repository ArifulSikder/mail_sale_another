

<?php $__env->startSection('title', 'Product'); ?>

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
                        <li class="breadcrumb-item active">Orders</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="d-flex justify-content-between my-1">
                <div>
                    <a href="<?php echo e(url('orders?status=All')); ?>" type="button" class="btn btn-light text-dark border border-dark">
                        <i class="fas fa-list-ul"></i> All
                    </a>
                    <a href="<?php echo e(url('orders?status=Pending')); ?>" type="button" class="btn btn-info">
                        <i class="fas fa-clock"></i> Pending
                    </a>
                    <a href="<?php echo e(url('orders?status=Processing')); ?>" type="button" class="btn btn-dark">
                        <i class="fas fa-list-ol"></i> Processing
                    </a>
                    <a href="<?php echo e(url('orders?status=Shipped')); ?>" type="button" class="btn btn-secondary">
                        <i class="fas fa-car-side"></i> Shipped
                    </a>
                    <a href="<?php echo e(url('orders?status=Canceled')); ?>" type="button" class="btn btn-danger">
                        <i class="fas fa-exclamation-triangle"></i> Canceled
                    </a>
                    <a href="<?php echo e(url('orders?status=Completed')); ?>" type="button" class="btn btn-success">
                        <i class="fas fa-check"></i> Completed
                    </a>
                </div>
                <div class="form-group">
                    <form action="<?php echo e(url('orders')); ?>">
                        <div class="d-flex justify-content-between">
                            <input class="form-control" type="search" name="customer" placeholder="Search By Custom Name">
                            <button class="btn btn-success" type="submit"><i class="fas fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-header">Orders Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 10%">Order Id</th>
                                <th scope="col" style="width: 10%">Date</th>
                                <th scope="col" style="width: 20%">Customar</th>
                                <th scope="col" style="width: 10%">Status</th>
                                <th scope="col" style="width: 10%">Payment</th>
                                <th scope="col" style="width: 10%">Amount</th>
                                <th scope="col" style="width: 15%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $serials = ($orders->currentpage() - 1) * $orders->perpage() + 1;
                            ?>
                            <?php $__currentLoopData = $orders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $order): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <th scope="row"><?php echo e($serials++); ?></th>
                                    <td><?php echo e("#A".$order->id + 100); ?></td>
                                    <td><?php echo e($order->created_at->toFormateDate()); ?></td>
                                    <td><?php echo e($order->f_name." ".$order->l_name); ?></td>
                                    <td><?php echo e($order->status); ?></td>
                                    <td>
                                        <?php if($order->payment_method == 1): ?>
                                        <span class="badge badge-success">Stripe</span>
                                        <?php else: ?>
                                        <span class="badge badge-success">Paypal</span>
                                        <?php endif; ?>
                                    </td>
                                    <td class="text-right">$<?php echo e($order->total_price); ?></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                <button type="button" data-id="<?php echo e($order->id); ?>"
                                                    data-name="<?php echo e($order->name); ?>"
                                                    data-category_id="<?php echo e($order->category_id); ?>"
                                                    data-sub_category_id="<?php echo e($order->sub_category_id); ?>"
                                                    data-slug="<?php echo e($order->slug); ?>"
                                                    data-selling_price="<?php echo e($order->selling_price); ?>"
                                                    data-active_status="<?php echo e($order->active_status); ?>"
                                                    class="btn btn-success btn-sm editData myorder btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="<?php echo e(url('invoice/'. $order->id)); ?>"
                                                    class="btn btn-info btn-sm btn-block"> <i class="fas fa-angle-double-right"></i> Invoice</a>

                                                <a href="<?php echo e(url('delete-order/'. $order->id)); ?>"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i>Delete</a>
                                                

                                            </div>
                                        </div>


                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        <?php echo e($orders->links()); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Modal -->
    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        
                        <div class="form-group">
                            <label for="thumbnail">Product Thumbnail</label>
                            <input type="file" class="form-control" name="thumbnail" id="thumbnail"
                                placeholder="Enter Product thumbnail"
                                value="<?php echo e(old('thumbnail')); ?>">

                            <span class="text-danger" id="error_thumbnail"></span>
                        </div>
                        <div>
                            <img src="" id="previewThumbnail" width="200px" alt="">
                        </div>

                        <div class="form-group">
                            <label for="category_id">Category Name</label>
                            <select class="form-control select2 category_id" name="category_id" id="category_id"
                                style="width: 100%" data-placeholder="Select Category">
                                <option value="" selected>Select Subcategory</option>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($category->id); ?>"><?php echo e($category->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            <span class="text-danger" id="error_category"></span>
                        </div>

                        <div class="form-group">
                            <label for="sub_category_id">Sub Category Name</label>
                            <select class="form-control select2" name="sub_category_id" id="sub_category_id"
                                style="width: 100%" data-placeholder="Select Subcategory">
                                <option value="" selected>Select Subcategory</option>
                            </select>


                            <span class="text-danger" id="error_subcategory"></span>
                        </div>
                        

                        <div class="form-group">
                            <label for="name">Product Name</label>
                            <input type="text" class="form-control" name="name" id="name"
                                placeholder="Enter Product Name"
                                value="<?php echo e(old('name')); ?>">

                            <span class="text-danger" id="error_name"></span>
                        </div>

                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input type="text" class="form-control" readonly name="slug" id="slug"
                                placeholder="Enter Slug">

                            <span class="text-danger" id="error_slug"></span>
                        </div>

                        <div class="form-group">
                            <label for="selling_price">Selling Price</label>
                            <input type="number" class="form-control" name="selling_price" id="selling_price"
                                placeholder="Enter Selling Price">

                            <span class="text-danger" id="error_selling_price"></span>
                        </div>
                        <div class="form-group">
                            <label for="active_status">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option selected>Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>

                            <span class="text-danger" id="error_active_status"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- edit -->
    <div class="modal fade" id="editNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="editData">
                    <input type="hidden" id="id_e" name="id">
                    <div class="modal-body">
                        
                        <div class="form-group">
                            <label for="thumbnail_e">Product Thumbnail</label>
                            <input type="file" class="form-control" name="thumbnail" id="thumbnail_e"
                                placeholder="Enter Product thumbnail"
                                value="<?php echo e(old('thumbnail')); ?>">

                            <span class="text-danger" id="error_thumbnail_e"></span>
                        </div>
                        <div>
                            <img src="" id="previewThumbnail_e" width="200px" alt="">
                        </div>

                        <div class="form-group">
                            <label for="category_id_e">Category Name</label>
                            <select class="form-control select2" name="category_id" id="category_id_e"
                                style="width: 100%" data-placeholder="Select Category">
                                <option value="" selected>Select Subcategory</option>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($category->id); ?>"><?php echo e($category->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>
                            <span class="text-danger" id="error_category_e"></span>
                        </div>

                        <div class="form-group">
                            <label for="sub_category_id_e">Sub Category Name</label>
                            <select class="form-control select2" name="sub_category_id" id="sub_category_id_e"
                                style="width: 100%" data-placeholder="Select Subcategory">
                                <option value="" selected>Select Subcategory</option>
                            </select>


                            <span class="text-danger" id="error_subcategory_e"></span>
                        </div>
                        <div class="form-group">
                            <label for="name_e">Product Name</label>
                            <input type="text" class="form-control" name="name" id="name_e"
                                placeholder="Enter Product Name" name="name"
                                value="<?php echo e(old('name')); ?>">

                            <span class="text-danger" id="error_name_e"></span>
                        </div>

                        <div class="form-group">
                            <label for="slug_e">Slug</label>
                            <input type="text" class="form-control" readonly name="slug" id="slug_e"
                                placeholder="Enter Slug">

                            <span class="text-danger" id="error_slug_e"></span>
                        </div>

                        <div class="form-group">
                            <label for="selling_price_e">Selling Price</label>
                            <input type="number" class="form-control" name="selling_price" id="selling_price_e"
                                placeholder="Enter Selling Price">

                            <span class="text-danger" id="error_selling_price_e"></span>
                        </div>
                        <div class="form-group">
                            <label for="active_status_e">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status_e"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option selected>Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>

                            <span class="text-danger" id="error_active_status_e"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>
    $(document).ready(function () {
        //thumbnail preview
        $("#thumbnail").change(function() {
            pleasePreview(this, 'previewThumbnail');
        });

        $("#thumbnail_e").change(function() {
            pleasePreview(this, 'previewThumbnail_e');
        });

        //slug
        function Slug(Text) {
            return Text.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
        }

        $('#name').keyup(function (e) {
            e.preventDefault();
            var slug = $(this).val();
            $('#slug').val(Slug(slug));
        });


        $('#name_e').keyup(function (e) {
            e.preventDefault();
            var slug = $(this).val();
            $('#slug_e').val(Slug(slug));
        });



        // my product

        $('.myProduct').click(function (e) {
            e.preventDefault();

            //for add product
            $('#error_category').text('');
            $('#error_thumbnail').text('');
            $('#error_subcategory').text('');
            $('#error_name').text('');
            $('#error_slug').text('');
            $('#error_selling_price').text('');
            $('#error_active_status').text('');

            //for edit product
            $('#error_thumbnail_e').text('');
            $('#error_category_e').text('');
            $('#error_subcategory_e').text('');
            $('#error_name_e').text('');
            $('#error_slug_e').text('');
            $('#error_selling_price_e').text('');
            $('#error_active_status_e').text('');
        });


        //add form
        $("form#formData").submit(function (e) {
            e.preventDefault();
            var formData = new FormData($("#formData")[0]);
            $.ajax({
                type: "POST",
                url: "<?php echo e(route('store-product')); ?>",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Product Added Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {
                    $('#error_thumbnail').text('');
                    $('#error_category').text('');
                    $('#error_subcategory').text('');
                    $('#error_name').text('');
                    $('#error_slug').text('');
                    $('#error_selling_price').text('');
                    $('#error_active_status').text('');


                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'category_id') {
                            $('#error_category').text(error);
                            toastr.error(error)
                        } else if (field_name == 'sub_category_id') {
                            $('#error_subcategory').text(error);
                            toastr.error(error)
                        } else if (field_name == 'name') {
                            $('#error_name').text(error);
                            toastr.error(error)
                        } else if (field_name == 'slug') {
                            $('#error_slug').text(error);
                            toastr.error(error)
                        } else if (field_name == 'selling_price') {
                            $('#error_selling_price').text(error);
                            toastr.error(error)
                        } else if (field_name == 'active_status') {
                            $('#error_active_status').text(error);
                            toastr.error(error)
                        } else if (field_name == 'thumbnail') {
                            $('#error_thumbnail').text(error);
                            toastr.error(error)
                        }
                    });


                },
                complete: function (done) {
                    if (done.status == 200) {
                        window.location.reload();
                    }
                }
            });
        });

        //edit form
        $('.editData').click(function (e) {
            e.preventDefault();

            var category_id = $(this).data('category_id');
            var subcategory_id = $(this).data('sub_category_id');
            $('#category_id_e').val(category_id).trigger('change');


            $('#id_e').val($(this).data('id'));
            $('#name_e').val($(this).data('name'));
            $('#slug_e').val($(this).data('slug'));
            $('#selling_price_e').val($(this).data('selling_price'));
            $('#active_status_e').val($(this).data('active_status')).trigger('change');

            productSubcategoryGet(category_id, subcategory_id);
            $('#editNew').modal('show');
        });

        $("form#editData").submit(function (e) {
            e.preventDefault();
            var formData = new FormData($("#editData")[0]);
            $.ajax({
                type: "POST",
                url: "<?php echo e(route('update-product')); ?>",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Product Updated Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {

                    $('#error_thumbnail_e').text('');
                    $('#error_category_e').text('');
                    $('#error_subcategory_e').text('');
                    $('#error_name_e').text('');
                    $('#error_slug_e').text('');
                    $('#error_selling_price_e').text('');
                    $('#error_active_status_e').text('');


                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'category_id') {
                            $('#error_category_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'sub_category_id') {
                            $('#error_subcategory_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'name') {
                            $('#error_name_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'slug') {
                            $('#error_slug_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'selling_price') {
                            $('#error_selling_price_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'active_status') {
                            $('#error_active_status_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'thumbnail') {
                            $('#error_thumbnail_e').text(error);
                            toastr.error(error)
                        }
                    });

                },
                complete: function (done) {
                    if (done.status == 200) {
                        window.location.reload();
                    }
                }
            });
        });


        $(".category_id").change(function (e) {
            e.preventDefault();
            var category_id = $(this).val();
            productSubcategoryGet(category_id, null)
        });

        $("#category_id_e").change(function (e) {
            e.preventDefault();
            var category_id = $(this).val();
            productSubcategoryGet(category_id, null)
        });


        function productSubcategoryGet(category_id, subcategory_id) {
            console.log(category_id, subcategory_id);
            if (subcategory_id == null || subcategory_id) {
                $.ajax({
                    type: "GET",
                    url: "<?php echo e(url('get-sub-category-ajax')); ?>",
                    data: {
                        category_id: category_id
                    },
                    datatype: "json",
                    success: function (response) {
                        var options = '';

                        options += '<option selected>Select Subcategory</option>';
                        $.each(response.data, function (index, value) {
                            options +=
                                `<option value="${value.id}" ${subcategory_id == value.id ? "selected" : ""}>${value.name}</option>`;
                        });

                        $('#sub_category_id').html(options);
                        $('#sub_category_id_e').html(options);

                    }
                });

            }
        }

    });

</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/order/order_index.blade.php ENDPATH**/ ?>