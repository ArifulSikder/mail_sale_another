

<?php $__env->startSection('title', 'Default SMS Set'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">Default SMS Templete</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Default SMS Templete</li>
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
                    <button type="button" class="btn btn-success myProduct" data-toggle="modal" data-target="#default">
                        <i class="fas fa-plus"></i> Add Default SMS Templete </button>
                    
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="card">
                <div class="card-header">Home Details</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 15%">Subject</th>
                                <th scope="col" style="width: 25%">Message</th>
                                <th scope="col" style="width: 15%">Visit Link</th>
                                <th scope="col" style="width: 10%">Active Status</th>
                                <th scope="col" style="width: 10%">Add Date</th>
                                <th scope="col" style="width: 10%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $serials = ($default_sms->currentpage() - 1) * $default_sms->perpage() + 1;
                            ?> 
                            <?php $__currentLoopData = $default_sms; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $templete): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <th><?php echo e($serials++); ?></th>
                                    <td><?php echo e($templete->subject); ?></td>
                                    <td><?php echo Str::words($templete->message, 10, '....'); ?>

                                        <?php if(Str::of($templete->message)->wordCount() > 10): ?>
                                           <a  class="editdes" style="cursor: pointer;" data-message="<?php echo e($templete ->message); ?>">
                                               See More
                                           </a>
                                       <?php endif; ?>
                                   </td>
                                    <td><?php echo e($templete->visit_link); ?></td>
                                    <td><span
                                            class="badge badge-<?php echo e($templete->active_status == 0 ? 'danger': 'success'); ?>"><?php echo e($templete->active_status == 0 ? 'Inactive': 'Active'); ?></span>
                                    </td>
                                    <td><?php echo e($templete->created_at->toFormateDate()); ?></td>
                                    <td>    
                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                <?php if($templete->active_status == 0): ?>
                                                   <a href="<?php echo e(route('update-default-status', ['id' => $templete->id , 'status' => $templete->active_status ])); ?>" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('update-default-status', ['id' => $templete->id , 'status' => $templete->active_status ])); ?>" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                <?php endif; ?>
                                                <button type="button"
                                                    data-id="<?php echo e($templete->id); ?>"
                                                    data-templete_id="<?php echo e($templete->templete_id); ?>"
                                                    data-subject="<?php echo e($templete->subject); ?>"
                                                    data-visit_link="<?php echo e($templete->visit_link); ?>"
                                                    data-message="<?php echo e($templete->message); ?>"
                                                    data-active_status="<?php echo e($templete->active_status); ?>"
                                                    class="btn btn-success btn-sm editData  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="<?php echo e(route('delete-default-sms', ['id' => $templete->id])); ?>"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                            </div>
                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        <?php echo e($default_sms->links()); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>

</div>


  <!-- add default email -->
  <div class="modal fade" id="default" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Send Email To Customers</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formData">
                <div class="modal-body">
                  <div class="form-group">
                      <label for="templete_id">Templete Name</label>
                      <select class="form-control select2 target templete" name="templete_id" id="templete_id"
                          data-placeholder="Select Templetet" style="width: 100%">
                          <option value="">Select Templetet</option>
                          <?php $__currentLoopData = $templetes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $templete): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <option value="<?php echo e($templete->id); ?>"><?php echo e($templete->templete_name); ?></option>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </select>
                      <span class="text-danger validate" data-field="templete_id"></span>

                  </div>

                  <div class="form-group">
                      <label for="subject">Subject</label>
                      <input type="text" class="form-control subject" name="subject" id="subject" placeholder="Enter Subject" >
                          <span class="text-danger validate" data-field="subject"></span>
                  </div>

                  <div class="form-group">
                      <label for="visit_link">Visit Link</label>
                      <input type="text" class="form-control visit_link" name="visit_link" id="visit_link" placeholder="Input Visit Link Here.." >
                          <span class="text-danger validate" data-field="visit_link"></span>
                  </div>

                  <div class="form-group">
                      <label for="message">Message</label>
                      <textarea type="text" class="form-control" name="message" id="editor"> </textarea>
                          <span class="text-danger validate" data-field="message"></span>

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
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" id="submit">Send</button>
                    <div style="display: none" id="loading">
                      <img style="height: 50px" src="<?php echo e(asset('frontend/assets/images/load.gif')); ?>" alt=""> <span>Sending Message To Customerts</span>
                  </div>
                </div>
            </form>
        </div>
    </div>
  </div>

  <!-- edit templete -->
<div class="modal fade" id="editTemplete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Home Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editData">
                <div class="modal-body">
                    <input type="hidden" name="edit_id" id="id_e">
                    <div class="form-group">
                        <label for="templete_id">Templete Name</label>
                        <select class="form-control select2 target templete" name="templete_id" id="templete_id_e"
                            data-placeholder="Select Templetet" style="width: 100%">
                            <option value="">Select Templetet</option>
                            <?php $__currentLoopData = $templetes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $templete): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($templete->id); ?>" ><?php echo e($templete->templete_name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                        <span class="text-danger validate_e" data-field="templete_id"></span>
  
                    </div>

                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" name="subject" id="subject_e" placeholder="Enter Subject" >
                            <span class="text-danger validate_e" data-field="subject"></span>
                    </div>

                    <div class="form-group">
                        <label for="visit_link">Visit Link</label>
                        <input type="text" class="form-control" name="visit_link" id="visit_link_e" placeholder="Input Visit Link Here.." >
                            <span class="text-danger validate_e" data-field="visit_link"></span>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea type="text" class="form-control" name="message" id="editor_e"> </textarea>
                            <span class="text-danger validate_e" data-field="message"></span>

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
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--- show Message  -->
<div class="modal fade" id="showdes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Show Message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
                <div class="modal-body">
                    <div class="form-group" >
                        <label for="message">Message</label>
                        <div id="message"></div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('components.ckeditor', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $(document).ready(function (e) {
            ckeditor("editor")
            ckeditor("editor_e")

            $( ".target" ).on( "change", function() {
            var id = $(this).val();
            $.ajax({
                type: "GET",
                url: "get-templete/"+id,
                data: "data",
                success: function (response) {
                if (response.status == 200) {
                    $("#subject").val(response.templete.subject);
                    $("#visit_link").val(response.templete.visit_link);
                    $('#active_status').val(response.templete.active_status).trigger('change');
                    CKEDITOR.instances['editor'].setData(response.templete.message);
                }
                }
            });
            } );
        });
    </script>
    <script>
    $(document).ready(function () {
        
      $("#formData").submit(function (e) {
            e.preventDefault();

            CKEDITOR.instances.editor.updateElement();
            var formdata = new FormData($("#formData")[0]); 

            $.ajax({
              type: "POST",
              url: "<?php echo e(route('store-defalult-sms')); ?>",
              contentType: false,
              processData: false,
              data: formdata,
              dataType: 'json', 
              headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              },
              beforeSend: function() {
                        $("#submit").hide();
                        $("#loading").show();
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
                        const errorElement = $('.validate[data-field="' + field_name + '"]');
                        if (errorElement.length > 0) {
                          errorElement.text(error[0]);
                          toastr.error(error);
                        }
                  });
                  $("#submit").show();
                  $("#loading").hide();
              },
              complete: function (done) {
                  if (done.status == 200) {
                      window.location.reload();
                  }
              }
            });
        });


        $("#editData").submit(function (e) { 
                e.preventDefault();
                
                CKEDITOR.instances.editor_e.updateElement();
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-defalult-sms')); ?>",
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
    <script>
        $(document).ready(function () {
            $('.editdes').click(function (e) {
                e.preventDefault();
                $('#showdes').modal('show');
                $("#message").html($(this).data('message'));
            });

            $('.editData').click(function (e) {
                e.preventDefault();
                $('#editTemplete').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#subject_e').val($(this).data('subject'));
                $('#visit_link_e').val($(this).data('visit_link'));
                $('#templete_id_e').val($(this).data('templete_id')).trigger('change');
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
                CKEDITOR.instances['editor_e'].setData($(this).data('message'));
            });
        });
    </script>
<?php $__env->stopSection(); ?>






<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/customerContact/defaultSms.blade.php ENDPATH**/ ?>