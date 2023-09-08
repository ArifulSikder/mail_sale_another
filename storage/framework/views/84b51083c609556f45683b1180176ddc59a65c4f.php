

<?php $__env->startSection('title', 'Slider'); ?>

<?php $__env->startSection('section'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Add New Slider</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Slider</li>
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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addslider"><i
                                class="fas fa-plus"></i> Add New Slider</button>
                    </div>
                    <form action="">
                        <div class="form-group d-flex">
                            <input class="form-control" type="search" placeholder="Search By Slider Title" name="search" value="<?php echo e($search); ?>">
                            <button class="btn btn-info btn-sm ml-2">Search</button>
                        </div>
                    </form> 
                </div>
                <div class="card">
                    <div class="card-header">Slider Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 10%">Background Photo</th>
                                    <th scope="col" style="width: 10%">Title</th>
                                    <th scope="col" style="width: 25%">Short Description</th>
                                    <th scope="col" style="width: 10%">Photo Alt</th>
                                    <th scope="col" style="width: 10%">Subcategory</th>
                                    <th scope="col" style="width: 10%">Active Status</th>
                                    <th scope="col" style="width: 10%">Add Date</th>
                                    <th scope="col" style="width: 10%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $serials = ($sliders->currentpage() - 1) * $sliders->perpage() + 1;
                                ?> 
                                <?php $__currentLoopData = $sliders; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $slider): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <tr>
                                        <td><?php echo e($serials++); ?></td>
                                        <td> <img width="100px" src="<?php echo e($slider->background_photo); ?>" alt=""> </td>
                                        <td><?php echo e($slider->title); ?></td>
                                        <td><?php echo e($slider->short_description); ?></td>
                                        <td><?php echo e($slider->photo_alt); ?></td>
                                        <td><?php echo e($slider->category->name); ?></td>
                                        <td>
                                            <span
                                            class="badge badge-<?php echo e($slider->active_status == 0 ? 'danger': 'success'); ?>"><?php echo e($slider->active_status == 0 ? 'Inactive': 'Active'); ?></span>
                                        </td>
                                        <td><?php echo e($slider->created_at->toFormateDate()); ?></td>
                                        <td>
                                            <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                <?php if($slider->active_status == 0): ?>
                                                   <a href="<?php echo e(route('update-slider-status', ['id' => $slider->id , 'status' => $slider->active_status ])); ?>" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('update-slider-status', ['id' => $slider->id , 'status' => $slider->active_status ])); ?>" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                <?php endif; ?>
                                                <button type="button" data-id="<?php echo e($slider->id); ?>"
                                                    data-title="<?php echo e($slider->title); ?>"
                                                    data-short_description="<?php echo e($slider->short_description); ?>"
                                                    data-photo_alt="<?php echo e($slider->photo_alt); ?>"
                                                    data-subcategory_id="<?php echo e($slider->subcategory_id); ?>"
                                                    data-active_status="<?php echo e($slider->active_status); ?>"
                                                    class="btn btn-success btn-sm editslider  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="<?php echo e(route('delete-slider',['id' => $slider->id] )); ?>"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>
                                        </td>
                                    </tr>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                               
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            <?php echo e($sliders->links()); ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- add slider -->
        <div class="modal fade" id="addslider" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Slider</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="formData">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="title" class="col-form-label">Title:</label>
    
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_title.png">Preview</span>

                                <input type="text" class="form-control title" id="title" name="title"
                                    placeholder="Enter Title">
                                
                                    <span class="text-danger validate" data-field="title"></span>
                            </div>

                            <div class="form-group">
                                <label for="subcategory_id">Subcategory Name</label>
                                <select class="form-control select2 subcategory" name="subcategory_id" id="subcategory_id"
                                    style="width: 100%" data-placeholder="Select Category">
                                    <option value="" selected>Select Subcategory</option>
                                    <?php $__currentLoopData = $subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($sub->id); ?>"><?php echo e($sub->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <span class="text-danger validate"  data-field="subcategory_id"></span>
                            </div>

                            <div class="form-group">
                                <label for="background_photo" class="col-form-label">Background Photo:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_bg.png">Preview</span>
                                <input type="file" class="form-control photo" id="background_photo" name="background_photo">

                                    <span class="text-danger validate" data-field="background_photo"></span>
                            </div>
                            <div>
                                <img class="d-none" src="" id="previewBackground_photo" width="200px" alt="">
                            </div>

                            <div class="form-group">
                                <label for="short_description" class="col-form-label">Short Description:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_des.png">Preview</span>
                                <textarea class="form-control short_description" id="short_description" name="short_description" placeholder="Enter The Short Description"></textarea>

                                    <span class="text-danger validate" data-field="short_description"></span>
                            </div>

                            

                            <div class="form-group">
                                <label for="photo_alt" class="col-form-label">Photo Alternative:</label>
                                <input type="text" class="form-control photo_alt" id="photo_alt"
                                    name="photo_alt" placeholder="Enter Photo Alternative">

                                    <span class="text-danger validate" data-field="photo_alt"></span>
                            </div>

                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2 active_status" name="active_status"
                                    id="active_status" data-placeholder="Select Active Status" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="0">Inactive</option>
                                    <option value="1">Active</option>
                                </select>

                                    <span class="text-danger validate" data-field="active_status"></span>
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

        <!-- edit slider -->
        <div class="modal fade" id="editslider" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Slider</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="updateSlider">
                        <div class="modal-body">
                            <input type="hidden" id="id_e" name="edit_id">
                            <div class="form-group">
                                <label for="title" class="col-form-label">Title:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_title.png">Preview</span>
                                <input type="text" class="form-control title" id="title_e" name="title"
                                    placeholder="Enter Title">
                                
                                    <span class="text-danger validate_e" data-field="title"></span>
                            </div>

                            <div class="form-group">
                                <label for="subcategory_id">Subcategory Name</label>
                                <select class="form-control select2 subcategory" name="subcategory_id" id="subcategory_id_e"
                                    style="width: 100%" data-placeholder="Select Category">
                                    <option value="" selected>Select Subcategory</option>
                                    <?php $__currentLoopData = $subcategories; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sub): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($sub->id); ?>"><?php echo e($sub->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <span class="text-danger validate_e"  data-field="subcategory_id"></span>
                            </div>

                            <div class="form-group">
                                <label for="background_photo" class="col-form-label">Background Photo:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_bg.png">Preview</span>
                                <input type="file" class="form-control photo" id="background_photo_e" name="background_photo">

                                    <span class="text-danger validate_e" data-field="background_photo"></span>
                            </div>
                            
                            <div>
                                <img class="d-none" src="" id="previewBackground_photo_e" width="200px" alt="">
                            </div>

                            <div class="form-group">
                                <label for="short_description" class="col-form-label">Short Description:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_des.png">Preview</span>
                                <textarea class="form-control short_description" id="short_description_e" name="short_description" placeholder="Enter The Short Description"></textarea>

                                    <span class="text-danger validate_e" data-field="short_description"></span>
                            </div>

                            


                            <div class="form-group">
                                <label for="photo_alt" class="col-form-label">Photo Alternative:</label>
                                <input type="text" class="form-control photo_alt" id="photo_alt_e"
                                    name="photo_alt" placeholder="Enter Photo Alternative">

                                    <span class="text-danger validate_e" data-field="photo_alt"></span>
                            </div>

                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2 active_status" name="active_status"
                                    id="active_status_e" data-placeholder="Select Active Status" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="0">Inactive</option>
                                    <option value="1">Active</option>
                                </select>

                                    <span class="text-danger validate_e" data-field="active_status"></span>
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

    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <?php echo $__env->make('backend.includes.preview', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <script>

        $(document).ready(function () {
            //backgorund photo preview
            $("#background_photo").change(function() {
                pleasePreview(this, 'previewBackground_photo');
            });

            $("#background_photo_e").change(function() {
                pleasePreview(this, 'previewBackground_photo_e');
            });

            // ADD DATA
            $("#formData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('store-slider')); ?>",
                    contentType: false,
                    processData: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formdata,
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
                             const errorElement = $('.validate[data-field="' + field_name + '"]');
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

            $('.editslider').click(function (e) {
                e.preventDefault();
                $('#editslider').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#title_e').val($(this).data('title'));
                $('#subcategory_id_e').val($(this).data('subcategory_id')).trigger('change');
                $('#short_description_e').val($(this).data('short_description'));
                $('#photo_alt_e').val($(this).data('photo_alt'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
            });

            // UPDATE DATA 
            $("#updateSlider").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#updateSlider")[0]);  
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-slider')); ?>",
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

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/homepage/slider/sliderIndex.blade.php ENDPATH**/ ?>