

<?php $__env->startSection('title', 'Dashboard'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper" x-data="{category:  null }">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">FAQ Category</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">FAQ Category</li>
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
                    <button type="button" class="btn btn-success addnew" data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Add FAQ Category
                    </button>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="card">
                <div class="card-header">Categories Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 25%">Category Title</th>
                                <th scope="col" style="width: 15%">Category Logo</th>
                                <th scope="col" style="width: 15%">Logo Alt</th>
                                <th scope="col" style="width: 10%">Active Status</th>
                                <th scope="col" style="width: 15%">Register Date</th>
                                <th scope="col" style="width: 15%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $serials = ($categories->currentpage() - 1) * $categories->perpage() + 1;
                            ?>
                            <?php $__currentLoopData = $categories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $category): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <th scope="row"><?php echo e($serials++); ?></th>
                                    <td><?php echo e($category->category_title); ?></td>
                                    <td><img style="width: 60px" src="<?php echo e($category->category_logo); ?>" alt=""></td>
                                    <td><?php echo e($category->logo_alt); ?></td>
                                    <td><span
                                            class="badge badge-<?php echo e($category->active_status == 0 ? 'danger': 'success'); ?>"><?php echo e($category->active_status == 0 ? 'Inactive': 'Active'); ?></span>
                                    </td>
                                    <td><?php echo e($category->created_at->toFormateDate()); ?></td>
                                    <td>

                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                <?php if($category->active_status == 0): ?>
                                                   <a href="<?php echo e(route('update-faq-status', ['id' => $category->id , 'status' => $category->active_status ])); ?>" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('update-faq-status', ['id' => $category->id , 'status' => $category->active_status ])); ?>" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                <?php endif; ?>
                                                <a href="<?php echo e(route('add-faq-question',['cat_id' => $category->id])); ?>" class="btn btn-info btn-sm btn-block"> <i class="fas fa-question"></i> Questions</a>
                                                <button type="button" data-id="<?php echo e($category->id); ?>"
                                                    data-title="<?php echo e($category->category_title); ?>"
                                                    data-logo_alt="<?php echo e($category->logo_alt); ?>"
                                                    data-active_status="<?php echo e($category->active_status); ?>"
                                                    class="btn btn-success btn-sm editfaq btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>


                                                <a href="<?php echo e(route('delete-faq-category',['id' => $category->id] )); ?>"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                               

                                            </div>

                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        <?php echo e($categories->links()); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- add -->
    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add FAQ Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="category_title">Category Title</label>
                            <span type="button" class="float-right px-2 bg-success text-light preview"
                                data-name="faq_cat_title.png">Preview</span>
                            <input type="text" class="form-control" name="category_title" id="category_title"
                                placeholder="Enter Category Title" >

                                <span class="text-danger validate" data-field="category_title"></span>
                        </div>
                        
                        <div class="form-group">
                            <label for="category_logo" class="col-form-label">Category Logo:</label>
                            <span type="button" class="float-right px-2 bg-success text-light preview"
                                data-name="faq_logo.png">Preview</span>
                            <input type="file" class="form-control photo" id="category_logo" name="category_logo">

                                <span class="text-danger validate" data-field="category_logo"></span>
                        </div>
                        

                        <div>
                            <img class="d-none" src="" id="preview_cat_logo" width="200px" alt="">
                        </div>
                        <div class="form-group">
                            <label for="logo_alt">Logo Alt</label>
                            <input type="text" class="form-control" name="logo_alt" id="logo_alt"
                                placeholder="Enter logo alt" >

                                <span class="text-danger validate" data-field="logo_alt"></span>
                        </div>

                        <div class="form-group">
                            <label for="active_status">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option value="">Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>
                            <span class="text-danger validate" data-field="active_status"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- edit -->
    <div class="modal fade" id="editdata" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit FAQ Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="updateData">
                    <div class="modal-body">
                        <input type="hidden" id="id_e" name="edit_id">
                        <div class="form-group">
                            <label for="category_title">Category Title</label>
                            <input type="text" class="form-control" name="category_title" id="category_title_e"
                                placeholder="Enter Category Title" >
                                <span class="text-danger validate_e" data-field="category_title"></span>
                        </div>
                        <div class="form-group">
                            <label for="category_logo" class="col-form-label">Category Logo:</label>
                            <input type="file" class="form-control photo" id="category_logo_e" name="category_logo">
                                <span class="text-danger validate_e" data-field="category_logo"></span>
                        </div>

                        <div>
                            <img class="d-none" src="" id="preview_cat_logo_e" width="200px" alt="">
                        </div>
                        <div class="form-group">
                            <label for="logo_alt">Logo Alt</label>
                            <input type="text" class="form-control" name="logo_alt" id="logo_alt_e"
                                placeholder="Enter logo alt" >

                                <span class="text-danger validate_e" data-field="logo_alt"></span>
                        </div>

                        <div class="form-group">
                            <label for="active_status">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status_e"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option value="">Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>
                            <span class="text-danger validate_e" data-field="active_status"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
<?php echo $__env->make('backend.includes.preview', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<script>

    $(document).ready(function () {
        //Category Logo Preview
        $("#category_logo").change(function() {
            pleasePreview(this, 'preview_cat_logo');
        });
        $("#category_logo_e").change(function() {
            pleasePreview(this, 'preview_cat_logo_e');
        });

        //add form
        $("#formData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#formData")[0]);
            $.ajax({
                type: "POST",
                url: "<?php echo e(route('store-faq-category')); ?>",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                        if (response.success) {
                            toastr.success(response.success);
                        } else if (response.error) {
                            toastr.error(response.error);
                        }
                },
                error: function (error) {
                    $('.validate').text('');
                        $.each(error.responseJSON.errors, function (field_name, error) { 
                             const errorElement = $('.validate_e[data-field="' + field_name + '"]');
                             if (errorElement.length > 0) {
                                errorElement.text(error[0]);
                                toastr.error(error);
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

        
        $('.editfaq').click(function (e) {
            e.preventDefault();
            $('#editdata').modal('show');
            $('#id_e').val($(this).data('id'));
            $('#category_title_e').val($(this).data('title'));
            $('#logo_alt_e').val($(this).data('logo_alt'));
            $('#active_status_e').val($(this).data('active_status')).trigger('change');
        });

        // UPDATE DATA 
        $("#updateData").submit(function (e) { 
            e.preventDefault();
            var formdata = new FormData($("#updateData")[0]);  
            $.ajax({
                type: "POST",
                url: "<?php echo e(route('update-faq-category')); ?>",
                contentType: false,
                processData: false,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: formdata,
                success: function (response) {
                    console.log(response);
                    if (response.success) {
                        toastr.success(response.success);     
                    } else if (response.error) {
                        toastr.error(response.error);
                    }
                },
                error: function (error) {
                    $('.validate').text('');
                    $.each(error.responseJSON.errors, function (field_name, error) { 
                            const errorElement = $('.validate_e[data-field="' + field_name + '"]');
                            if (errorElement.length > 0) {
                            errorElement.text(error[0]);
                            toastr.error(error);
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

         


    });

</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/homepage/faq/faqIndex.blade.php ENDPATH**/ ?>