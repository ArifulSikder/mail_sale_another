

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
                <form action="">
                  <div class="input-group input-group-sm">
                    <input type="search" class="form-control" placeholder="Search Mail" name="search" value="<?php echo e($search); ?>">
                    <div class="input-group-append">
                      <button class="btn btn-primary">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </form>
                
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
                        <td class="mailbox-name"><a href="<?php echo e(route('show-individual-sent', ['id' => $message->id])); ?>"><?php echo e($message->email); ?></a></td>
                        <td class="mailbox-subject"><?php echo Str::words($message->message, 10, ' ....'); ?></td>

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
 

<?php $__env->stopSection(); ?>
<?php $__env->startSection('script'); ?>
<script>
    $(document).ready(function () {
  
      $("#pagereload").click(function (e) { 
        e.preventDefault();
        window.location.reload();
      });
    });
  </script>
  <script>
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
            url: "<?php echo e(route('delete-sent-message')); ?>",
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/customerContact/sendIndes.blade.php ENDPATH**/ ?>