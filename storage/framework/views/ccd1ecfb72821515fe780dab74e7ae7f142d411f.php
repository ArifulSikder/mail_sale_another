


<?php $__env->startSection('title', 'Dashboard'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="mb-2 row">
          <div class="col-sm-6">
            <h1 class="m-0">Edit Business Policy</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a></li>
              <li class="breadcrumb-item active">Edit Business Policy</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card">
            <div class="card-header font-weight-bold">Edit Form</div>
            <div class="card-body">
                <form id="editData">
                    <?php echo csrf_field(); ?>
                    <div class="row">
                        <input type="hidden" name="id" value="<?php echo e($policy->id); ?>">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="policy_type">Business Policy Type</label>
                                <select class="form-control select2" name="policy_type" id="policy_type"
                                    data-placeholder="Select Type" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="1" <?php if($policy->policy_type == 1): echo 'selected'; endif; ?>>Refund Policy</option>
                                    <option value="2" <?php if($policy->policy_type == 2): echo 'selected'; endif; ?>>Privacy Policy</option>
                                    <option value="3" <?php if($policy->policy_type == 3): echo 'selected'; endif; ?>>Terms Of Service</option>
                                    <option value="4" <?php if($policy->policy_type == 4): echo 'selected'; endif; ?>>Disclaimer</option>
                                </select>
                                <span class="text-danger validate" data-field="policy_type"></span>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12">
                          <div class="form-group">
                              <label for="description">Description</label>
                              <textarea type="text" class="form-control" name="description" id="editor_e" placeholder="Enter Description" ><?php echo $policy->description; ?></textarea>
                                  <span class="text-danger validate" data-field="description"></span>

                          </div>

                          <div class="col-md-12">
                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2" name="active_status" id="active_status"
                                    data-placeholder="Select Active Status" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="0" <?php if($policy->active_status == 0): echo 'selected'; endif; ?>>Inactive</option>
                                    <option value="1" <?php if($policy->active_status == 1): echo 'selected'; endif; ?>>Active</option>
                                </select>
                                <span class="text-danger validate" data-field="active_status"></span>
                            </div>
                        </div>  
                        
                          <div class="form-group">
                            <button class="text-center btn btn-primary btn-block" type="submit">Save</button>
                          </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
      </div>
    </section>
  </div>

  <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = Illuminate\View\AnonymousComponent::resolve(['view' => 'components.select2','data' => []] + (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag ? (array) $attributes->getIterator() : [])); ?>
<?php $component->withName('select2'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php if (isset($attributes) && $attributes instanceof Illuminate\View\ComponentAttributeBag && $constructor = (new ReflectionClass(Illuminate\View\AnonymousComponent::class))->getConstructor()): ?>
<?php $attributes = $attributes->except(collect($constructor->getParameters())->map->getName()->all()); ?>
<?php endif; ?>
<?php $component->withAttributes([]); ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('components.ckeditor', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php $__env->startSection('script'); ?>
    <script>
      $(document).ready(function () {
        ckeditor("editor_e")
        $("#editData").submit(function (e) { 
                e.preventDefault();      

                CKEDITOR.instances.editor_e.updateElement();

                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('update-business-policy')); ?>",
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
      });  
    </script>    
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/homepage/businessPolicy/edit-policy.blade.php ENDPATH**/ ?>