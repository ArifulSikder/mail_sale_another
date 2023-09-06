

<?php $__env->startSection('title', 'API List'); ?>

<?php $__env->startSection('section'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">API List</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">API List</li>
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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addapi"><i
                                class="fas fa-plus"></i> Add API</button>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="search" placeholder="Search By Category Name">
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">API List Table</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width: 5%">Serial</th>
                                        <th scope="col" style="width: 15%">Type</th>
                                        <th scope="col" style="width: 15%">Mode</th>
                                        <th scope="col" style="width: 10%">Client ID</th>
                                        <th scope="col" style="width: 15%">Client Secret</th>
                                        <th scope="col" style="width: 10%">App ID</th>
                                        <th scope="col" style="width: 10%">Active Status</th>
                                        <th scope="col" style="width: 10%">Add Date</th>
                                        <th scope="col" style="width: 10%">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $serials = ($api_list->currentpage() - 1) * $api_list->perpage() + 1;
                                    ?> 
                                    <?php $__currentLoopData = $api_list; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $api): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr >
                                            <td><?php echo e($serials++); ?></td>
                                            <td><?php echo e($api->payment_type == 1 ? 'Stripe': 'Paypal'); ?></td>
                                            <td><?php echo e($api->mode == 1 ? 'Sendbox API': 'Live API'); ?></td>
                                            <td><?php echo e($api->client_id); ?></td>
                                            <td><?php echo e($api->client_secret); ?></td>
                                            <td><?php echo e($api->app_id); ?></td>
                                            <td>
                                                <span
                                                class="badge badge-<?php echo e($api->active_status == 0 ? 'danger': 'success'); ?>"><?php echo e($api->active_status == 0 ? 'Inactive': 'Active'); ?></span>
                                            </td>
                                            <td><?php echo e($api->created_at->toFormateDate()); ?></td>
                                            <td>
                                                <button type="button" 
                                                    class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                    data-toggle="dropdown">
                                                    Options
                                                </button>
                                                <div class="dropdown-menu text-center bg-light-blue">
                                                    <?php if($api->active_status == 0): ?>
                                                    <a href="<?php echo e(route('update-payapi-status', ['id' => $api->id , 'status' => $api->active_status ])); ?>" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                    <?php else: ?>
                                                        <a href="<?php echo e(route('update-payapi-status', ['id' => $api->id , 'status' => $api->active_status ])); ?>" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                    <?php endif; ?>

                                                    <button type="button" 
                                                        data-id="<?php echo e($api->id); ?>"
                                                        data-payment_type="<?php echo e($api->payment_type); ?>"
                                                        data-mode="<?php echo e($api->mode); ?>"
                                                        data-client_id="<?php echo e($api->client_id); ?>"
                                                        data-client_secret="<?php echo e($api->client_secret); ?>"
                                                        data-app_id="<?php echo e($api->app_id); ?>"
                                                        data-active_status="<?php echo e($api->active_status); ?>"
                                                        class="btn btn-success btn-sm edit_api  btn-block">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </button>
                                                    

                                                    <a href="<?php echo e(route('delete-payapi',['id' => $api->id] )); ?>"
                                                        id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                            class="fas fa-trash"></i> Delete</a>
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                
                                </tbody>
                            </table>
                        </div><!-- table-wrapper -->
                        <div class="float-right my-2">
                            <?php echo e($api_list->links()); ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- add Payment Api -->
        <div class="modal fade" id="addapi" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Payment Api</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="formData">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="payment_type" class="col-form-label">Payment Type:</label>

                                <select class="form-control select2 payment_type" name="payment_type"
                                    id="payment_type" data-placeholder="Select Logo Type" style="width: 100%">
                                    <option value="">Choose Payment Type</option>
                                    <option value="1">Stripe</option>    <!-- value =1 is stripe -->
                                    <option value="2">Paypal</option>   <!-- value = 2 is paypal -->
                                </select>
                                
                                    <span class="text-danger validate" data-field="payment_type"></span>
                            </div>

                            <div class="form-group">
                                <label for="mode" class="col-form-label">Mode:</label>

                                <select class="form-control select2 mode" name="mode"
                                    id="mode" data-placeholder="Select Mode" style="width: 100%">
                                    <option value="">Choose Payment Type</option>
                                    <option value="1">Sendbox API</option>    <!-- value = 1 is sendbox -->
                                    <option value="2">Live API</option>       <!-- value = 2 is Live -->
                                </select>
                                
                                    <span class="text-danger validate" data-field="mode"></span>
                                
                            </div>

                            <div class="form-group">
                                <label for="client_id" class="col-form-label">Client ID:</label>
                                <input type="text" class="form-control client_id" id="client_id"
                                    name="client_id" placeholder="Enter Client ID">
                                    <span class="text-danger validate" data-field="client_id"></span>

                            </div>

                            <div class="form-group">
                                <label for="client_secret" class="col-form-label">Client Secret:</label>
                                <input type="text" class="form-control client_secret" id="client_secret"
                                    name="client_secret" placeholder="Enter Client Secret">
                                    <span class="text-danger validate" data-field="client_secret"></span>

                            </div>

                            <div class="form-group">
                                <label for="app_id" class="col-form-label">App ID:</label>
                                <input type="text" class="form-control app_id" id="app_id"
                                    name="app_id" placeholder="Enter App ID">
                                    <span class="text-danger validate" data-field="app_id"></span>

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

        <!-- edit api -->
        <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Payment API</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="updateApi">
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" id="id_e" name="edit_id">
                                <label for="payment_type" class="col-form-label">Payment Type:</label>

                                <select class="form-control select2 payment_type" name="payment_type"
                                    id="payment_type_e" data-placeholder="Select Logo Type" style="width: 100%">
                                    <option value="">Choose Payment Type</option>
                                    <option value="0">Stripe</option>    <!-- value = 0 is stripe -->
                                    <option value="1">Paypal</option>   <!-- value = 1 is paypal -->
                                </select>
                                
                                    <span class="text-danger validate_e" data-field="payment_type"></span>
                            </div>

                            <div class="form-group">
                                <label for="mode" class="col-form-label">Mode:</label>

                                <select class="form-control select2 mode" name="mode"
                                    id="mode_e" data-placeholder="Select Mode" style="width: 100%">
                                    <option value="">Choose Payment Type</option>
                                    <option value="0">Sendbox API</option>    <!-- value = 0 is sendbox -->
                                    <option value="1">Live API</option>       <!-- value = 1 is Live -->
                                </select>
                                
                                    <span class="text-danger validate_e" data-field="mode"></span>
                                
                            </div>

                            <div class="form-group">
                                <label for="client_id" class="col-form-label">Client ID:</label>
                                <input type="text" class="form-control client_id" id="client_id_e"
                                    name="client_id" placeholder="Enter Client ID">
                                    <span class="text-danger validate_e" data-field="client_id"></span>

                            </div>

                            <div class="form-group">
                                <label for="client_secret" class="col-form-label">Client Secret:</label>
                                <input type="text" class="form-control client_secret" id="client_secret_e"
                                    name="client_secret" placeholder="Enter Client Secret">
                                    <span class="text-danger validate_e" data-field="client_secret"></span>

                            </div>

                            <div class="form-group">
                                <label for="app_id" class="col-form-label">App ID:</label>
                                <input type="text" class="form-control app_id" id="app_id_e"
                                    name="app_id" placeholder="Enter App ID">
                                    <span class="text-danger validate_e" data-field="app_id"></span>

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

            // ADD DATA
            $("#formData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('store-pay-api')); ?>",
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

            $('.edit_api').click(function (e) {
                e.preventDefault();
                $('#editmodal').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#payment_type_e').val($(this).data('payment_type')).trigger('change');
                $('#mode_e').val($(this).data('mode')).trigger('change');
                $('#client_id_e').val($(this).data('client_id'));
                $('#client_secret_e').val($(this).data('client_secret'));
                $('#app_id_e').val($(this).data('app_id'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
            });

            // UPDATE DATA 
            $("#updateApi").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#updateApi")[0]);  
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-pay-api')); ?>",
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

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/payment/apiList.blade.php ENDPATH**/ ?>