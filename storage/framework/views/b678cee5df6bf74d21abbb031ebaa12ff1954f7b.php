

<?php $__env->startSection('title', 'Dashboard'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper" x-data="{category:  null }">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Subcategory</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Subcategory</li>
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
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Add Subcategory
                    </button>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="card">
                <div class="card-header">Subcategories Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Serial</th>
                                <th scope="col">Category Name</th>
                                <th scope="col">Subcategory Name</th>
                                <th scope="col">Slug</th>
                                <th scope="col">Active Status</th>
                                <th scope="col">Register Date</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $serials = ($subCategories->currentpage() - 1) * $subCategories->perpage() + 1;
                            ?>
                            <?php $__currentLoopData = $subCategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <th scope="row"><?php echo e($serials++); ?></th>
                                    <td><?php echo e($category->category->name); ?></td>
                                    <td><?php echo e($category->name); ?></td>
                                    <td><?php echo e($category->slug); ?></td>
                                    <td><span
                                            class="badge badge-<?php echo e($category->active_status == 0 ? 'danger': 'success'); ?>"><?php echo e($category->active_status == 0 ? 'Inactive': 'Active'); ?></span>
                                    </td>
                                    <td><?php echo e($category->created_at->toFormateDate()); ?></td>
                                    <td>

                                        <button type="button" data-toggle="modal" data-target="#editNew"

                                        data-id="<?php echo e($category->id); ?>"
                                        data-name="<?php echo e($category->name); ?>"
                                        data-slug="<?php echo e($category->slug); ?>"
                                        data-parent_id="<?php echo e($category->parent_id); ?>"
                                        data-active_status="<?php echo e($category->active_status); ?>"

                                        class="btn btn-success btn-sm editData">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                        <a href="<?php echo e(url('delete-subcategory/'. $category->id)); ?>"
                                            id="delete" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>

                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        <?php echo e($subCategories->links()); ?>

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
                    <h5 class="modal-title" id="exampleModalLabel">Add Subcategory</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="parent_id">Category Name</label>
                            <select class="form-control select2" name="parent_id" id="parent_id" style="width: 100%"
                                data-placeholder="Select Subcategory">
                                <option value="" selected>Select Subcategory</option>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($category->id); ?>"><?php echo e($category->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>


                            <span class="text-danger" id="error_category"></span>
                        </div>
                        <div class="form-group">
                            <label for="sub_name">Subcategory Name</label>
                            <input type="text" class="form-control" id="sub_name" placeholder="Enter Category Name"
                                name="name" value="<?php echo e(old('name')); ?>">

                            <span class="text-danger" id="error_name"></span>
                        </div>

                        <div class="form-group">
                            <label for="slug">Slug</label>
                            <input type="text" class="form-control" readonly name="slug" id="slug"
                                placeholder="Enter Slug">

                            <span class="text-danger" id="error_slug"></span>
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
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
                    <h5 class="modal-title" id="exampleModalLabel">Edit Subcategory</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="editData">
                    <input type="hidden" id="sub_category_id" name="id">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="category_id_e">Category Name</label>
                            <select class="form-control select2" name="parent_id" id="category_id_e"
                                style="width: 100%" data-placeholder="Select Category"
                                value="<?php echo e(old('parent_id')); ?>">
                                <option selected>Select Sub Category</option>
                                <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <option value="<?php echo e($category->id); ?>"><?php echo e($category->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </select>


                            <span class="text-danger" id="error_category_e"></span>
                        </div>
                        <div class="form-group">
                            <label for="sub_name_e">Subcategory Name</label>
                            <input type="text" class="form-control" id="sub_name_e" placeholder="Enter Subcategory Name"
                                name="name" value="<?php echo e(old('name')); ?>">

                            <span class="text-danger" id="error_name_e"></span>
                        </div>

                        <div class="form-group">
                            <label for="slug_e">Slug</label>
                            <input type="text" class="form-control" readonly name="slug" id="slug_e"
                                placeholder="Enter Slug">

                            <span class="text-danger" id="error_slug_e"></span>
                        </div>
                        <div class="form-group">
                            <label for="active_status_e">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status_e"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option value="">Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>

                            <span class="text-danger" id="error_active_status_e"></span>
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
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<script>
    $(document).ready(function () {
        //add form
        function Slug(Text) {
            return Text.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
        }


        $('#sub_name').keyup(function (e) {
            e.preventDefault();
            var slug = $(this).val();
            $('#slug').val(Slug(slug));
        });


        $('#sub_name_e').keyup(function (e) {
            e.preventDefault();
            var slug = $(this).val();
            $('#slug_e').val(Slug(slug));
        });
    });

</script>
<script>
    //add form
    $("form#formData").submit(function (e) {
        e.preventDefault();
        var formData = new FormData($("#formData")[0]);
        $.ajax({
            type: "POST",
            url: "<?php echo e(route('store-sub-category')); ?>",
            // dataType: "json",
            contentType: false,
            processData: false,
            data: formData,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                if (response.success == true) {
                    toastr.success("Subcategory Added Successfully!");
                } else if (response.success == false) {
                    toastr.error("Somentings Went Wrong!");
                }
            },
            error: function (error) {
                $('#error_category').text('');
                $('#error_name').text('');
                $('#error_slug').text('');
                $('#error_active_status').text('');
                $.each(error.responseJSON.errors, function (field_name, error) {
                    if (field_name == 'name') {
                        $('#error_name').text(error);
                        toastr.error(error)
                    } else if (field_name == 'parent_id') {
                        $('#error_category').text(error);
                        toastr.error(error)
                    }else if (field_name == 'slug') {
                        $('#error_slug').text(error);
                        toastr.error(error)
                    }else if (field_name == 'active_status') {
                        $('#error_active_status').text(error);
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

        $('#category_id_e').val($(this).data('parent_id')).trigger('change');
        $('#sub_category_id').val($(this).data('id'));
        $('#sub_name_e').val($(this).data('name'));
        $('#slug_e').val($(this).data('slug'));
        $('#active_status_e').val($(this).data('active_status')).trigger('change');

    });
    $("form#editData").submit(function (e) {
        e.preventDefault();
        var formData = new FormData($("#editData")[0]);
        $.ajax({
            type: "POST",
            url: "<?php echo e(route('update-sub-category')); ?>",
            // dataType: "json",
            contentType: false,
            processData: false,
            data: formData,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
                if (response.success == true) {
                    toastr.success("Subcategory Added Successfully!");
                } else if (response.success == false) {
                    toastr.error("Somentings Went Wrong!");
                }
            },
            error: function (error) {
                $('#error_category_e').text('');
                $('#error_name_e').text('');
                $('#error_slug_e').text('');
                $('#error_active_status_e').text('');
                $.each(error.responseJSON.errors, function (field_name, error) {
                    if (field_name == 'name') {
                        $('#error_name_e').text(error);
                        toastr.error(error)
                    } else if (field_name == 'parent_id') {
                        $('#error_category_e').text(error);
                        toastr.error(error)
                    }else if (field_name == 'slug') {
                        $('#error_slug_e').text(error);
                        toastr.error(error)
                    }else if (field_name == 'active_status') {
                        $('#error_active_status_e').text(error);
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


</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\altab_mail_sell\resources\views/backend/product/sub_category/index.blade.php ENDPATH**/ ?>