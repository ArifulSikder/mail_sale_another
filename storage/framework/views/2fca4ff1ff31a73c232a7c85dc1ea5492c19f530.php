


<?php $__env->startSection('title', 'Add Policy'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="mb-2 row">
          <div class="col-sm-6">
            <h1 class="m-0">Add Business Policy</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a></li>
              <li class="breadcrumb-item active">Add Business Policy</li>
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
            <div class="card-header font-weight-bold">Policy Add Form</div>
            
            <div class="card-body">
                <form id="formData">
                    <?php echo csrf_field(); ?>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="policy_type">Business Policy Type</label>
                                <select class="form-control select2" name="policy_type" id="policy_type"
                                    data-placeholder="Select Type" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="1">Refund Policy</option>
                                    <option value="2">Privacy Policy</option>
                                    <option value="3">Terms Of Service</option>
                                    <option value="4">Disclaimer</option>
                                </select>
                                <span class="text-danger validate" data-field="policy_type"></span>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12">
                          <div class="form-group">
                              <label for="description">Description</label>
                              <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="terms.png">Preview</span>
                              <textarea type="text" class="form-control" name="description" id="editor" placeholder="Enter Description" > </textarea>
                                  <span class="text-danger validate" data-field="description"></span>
                          </div>
                        </div>

                          <div class="col-md-12">
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
                        
                          <div class="col-md-12">
                            <div class="form-group">
                                <button class="text-center btn btn-primary btn-block" type="submit">Save</button>
                            </div>
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

<?php $__env->startSection('script'); ?>
    <?php echo $__env->make('backend.includes.preview', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
    <?php echo $__env->make('components.ckeditor', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

    <script>
      $(document).ready(function () {
        // ckeditor 
        ckeditor("editor")
        $("#formData").submit(function (e) { 
                e.preventDefault();
                
                CKEDITOR.instances.editor.updateElement();  

                var formdata = new FormData($("#formData")[0]);
                console.log(formdata);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('store-business-policy')); ?>",
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

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/homepage/businessPolicy/add-policy.blade.php ENDPATH**/ ?>