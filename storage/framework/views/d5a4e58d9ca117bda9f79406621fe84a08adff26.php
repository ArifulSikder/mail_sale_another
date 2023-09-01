

<?php $__env->startSection('title', 'Inbox'); ?>

<?php $__env->startSection('section'); ?>


<div class="content-wrapper" style="min-height: 1302.12px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Inbox</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Inbox</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <a href="compose.html" class="btn btn-primary btn-block mb-3">Compose</a>

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">Folders</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <ul class="nav nav-pills flex-column">
                <li class="nav-item" >
                  <a href="<?php echo e(route('customer-contact')); ?>" class="nav-link <?php echo e(request()->is(['customer-contact']) ? 'active' : ''); ?>" >
                    <i class="fas fa-inbox"></i> Inbox
                    <span class="badge bg-warning float-right"><?php echo e($msg_count_inbox); ?></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?php echo e(route('send-mail-index')); ?>" class="nav-link <?php echo e(request()->is(['send-mail-index']) ? 'active' : ''); ?>">
                    <i class="far fa-envelope"></i> Sent
                    <span class="badge bg-warning float-right"><?php echo e($msg_count_send); ?></span>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="#" class="nav-link">
                    <i class="far fa-trash-alt"></i> Trash
                  </a>
                </li>
              </ul>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
          <!-- /.card -->
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="card card-primary card-outline">
            <div class="card-header">
              <h3 class="card-title">Inbox</h3>

              <div class="card-tools">
                <div class="input-group input-group-sm">
                  <input type="text" class="form-control" placeholder="Search Mail">
                  <div class="input-group-append">
                    <div class="btn btn-primary">
                      <i class="fas fa-search"></i>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-tools -->
            </div>
            <!-- /.card-header -->
            <div class="card-body p-0">
              <div class="mailbox-controls">
                <!-- Check all button -->
                <span class="border pl-2 pr-1 py-1">
                  <input style="cursor: pointer;" type="checkbox" name="" id="select_all_ids"> 
                </span>
                <div class="btn-group ml-2 mt-0">
                  <!-- delete button -->
                  <a class="btn btn-default btn-sm" id="deleteAllSelectedRecord"> 
                    <i class="far fa-trash-alt"></i>
                  </a>
                </div>
                <button type="button" class="btn btn-default btn-sm" id="reply">
                  <i class="fas fa-reply"></i>
                </button>
                <!-- /.btn-group -->
                <button type="button" class="btn btn-default btn-sm" id="pagereload">
                  <i class="fas fa-sync-alt"></i>
                </button>
                <!-- /.float-right -->
              </div>
              <div class="table-responsive mailbox-messages">
                <table class="table table-hover table-striped">
                  <tbody>
                    <?php $__empty_1 = true; $__currentLoopData = $messages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $message): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                      <tr id="employee_ids<?php echo e($message->id); ?>">
                        <td>
                          <div>
                            <input style="cursor: pointer" type="checkbox" name="ids" id="" class="checkbox_ids" value="<?php echo e($message->id); ?>">
                          </div>
                        </td>
                        <td class="mailbox-star"><a href="#"><i class="fas fa-star-o text-warning"></i></a></td>
                        <td class="mailbox-name"><a href="<?php echo e(route('show-individual-message', ['id' => $message->id])); ?>"><?php echo e($message->name); ?></a></td>
                        <td class="mailbox-subject"><?php echo e(Str::words($message->message, 10, ' ....')); ?></td>
                        <td class="mailbox-attachment">
                          <?php if($message->active_status == 0): ?>
                             <a href="<?php echo e(route('update-contact-status', ['id' => $message->id , 'status' => $message->active_status ])); ?>" class=""><span class="badge badge-danger">Inactivated</span></a> 
                          <?php else: ?>
                            <a href="<?php echo e(route('update-contact-status', ['id' => $message->id , 'status' => $message->active_status ])); ?>"><span class="badge badge-success">Activated</span></a>
                          <?php endif; ?>
                        </td>
                        <td class="mailbox-date"><?php echo e($message->created_at->diffForHumans()); ?></td>
                      </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                      <tr>Empty</tr>
                    <?php endif; ?>

                  </tbody>
                </table>
                <!-- /.table -->
              </div>
              <div class="float-right my-2">
                <?php echo e($messages->links()); ?>

            </div>
              <!-- /.mail-box-messages -->
            </div>

            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>



  <!-- send email -->
  <div class="modal fade" id="sendMail" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Send Email TO Customers</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formData">
                <div class="modal-body">
                  <div class="form-group">
                      <label for="templete_name">Templete Name</label>
                      <select class="form-control select2 target templete" name="templete_name" id="templete_name"
                          data-placeholder="Select Templetet" style="width: 100%">
                          <option value="">Select Templetet</option>
                          <?php $__currentLoopData = $templetes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $templete): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                              <option value="<?php echo e($templete->id); ?>"><?php echo e($templete->templete_name); ?></option>
                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                      </select>
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

<?php $__env->stopSection(); ?>
<?php echo $__env->make('components.ckeditor', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->startSection('script'); ?>
  <script>

    $(document).ready(function () {
        ckeditor("editor")

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
    


    $(function(e){
      $("#select_all_ids").click(function () { 
        $('.checkbox_ids').prop('checked', $(this).prop('checked'));
      });

      $('#deleteAllSelectedRecord').click(function (e) { 
          e.preventDefault();
          var all_ids = [];   
          $('input:checkbox[name=ids]:checked').each(function(params) {
            all_ids.push($(this).val()); 
          });

          $.ajax({
            type: "DELETE",
            url: "<?php echo e(route('delete-customer-message')); ?>",
            data: {
              ids:all_ids,
            },
            headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            success: function (response) {
              $.each(all_ids, function (key, val) { 
                 $('#employee_ids'+val).remove();
              });
              if (response.success) {
                  toastr.success(response.success);
              } else if (response.error) {
                  toastr.error(response.error);
              }
            },
          });
        });
    });

  </script>

<script>
  $(document).ready(function () {

    $("#pagereload").click(function (e) { 
      e.preventDefault();
      window.location.reload();
    });
  });
</script>

<script>
  $(document).ready(function () {
      $('#reply').click(function(e) {
          e.preventDefault();
          var selectedValues = [];

          $('.checkbox_ids').each(function() {
              if ($(this).is(':checked')) {
                  selectedValues.push($(this).val());
              }
          });

          if (selectedValues == null || selectedValues.length === 0) {
              console.log('Array is null or empty.');
          } else {
            $('#sendMail').modal('show');

            $.ajax({
              type: "POST",
              url: "<?php echo e(route('get-emails')); ?>",
              data: {
                ids:selectedValues,
              },
              headers: {
                  'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
              },
              success: function (response) {
                selectedEmails = response.emails;
              }
            });
          }
      });
  });

  $(document).ready(function () {
      $("#formData").submit(function (e) {
            e.preventDefault();

            CKEDITOR.instances.editor.updateElement();
            var formdata = new FormData($("#formData")[0]); 

            $.ajax({
              type: "POST",
              url: "<?php echo e(route('send-msg-customer')); ?>",
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
  });
  
</script>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/customerContact/inbox.blade.php ENDPATH**/ ?>