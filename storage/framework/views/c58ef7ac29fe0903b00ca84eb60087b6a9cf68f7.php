


<?php $__env->startSection('title', 'App Setting'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="mb-2 row">
          <div class="col-sm-6">
            <h1 class="m-0">App Setup</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a></li>
              <li class="breadcrumb-item active">Add Setup</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card card-info">
            <div class="card-header">
              <h3 class="card-title">App Setup</h3>
            </div>
            <div class="card-body">
                <form id="appSetup">
                    <div class="row">
                        <div class="col-4">
                            <div class="form-group">
                                <label for="Facebook">Facebook Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="facebook.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Facebook Link Here" name="fb_link" value="<?php if($app_data): ?><?php echo e($app_data->fb_link); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Instagram">Instagram Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="insta.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Instagram Link Here" name="insta_link" value="<?php if($app_data): ?><?php echo e($app_data->insta_link); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Twitter">Twitter Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="twitter.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Twitter Link Here" name="twitter_link" value="<?php if($app_data): ?><?php echo e($app_data->twitter_link); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Linked">Linked In Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="linkedin.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Linked In Link Here" name="linkedin_link" value="<?php if($app_data): ?><?php echo e($app_data->linkedin_link); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Pinterest">Pinterest Link</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="pinterest.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Input Pinterest Link Here" name="pinterest_link" value="<?php if($app_data): ?><?php echo e($app_data->pinterest_link); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="logo_alt">Logo Alt</label>
                                <input type="text" class="form-control" placeholder="Input Logo Alt Here" name="logo_alt" value="<?php if($app_data): ?><?php echo e($app_data->logo_alt); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Logo">Logo</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="logo.png">Preview</span>
                                <input type="file" class="form-control" name="logo" id="logo">
                            </div>
                            <div>
                                <img class="d-none mb-3" src="" id="previewLogo" width="60px" alt="">
                            </div>
                            <div>
                                <img  src="<?php if($app_data): ?><?php echo e(asset($app_data->logo)); ?><?php endif; ?>" width="200px" alt="">
                            </div>
                        </div>
                        <div class="col-4">
                            
                            <div class="form-group">
                                <label for="Email">Email</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="email.png">Preview</span>
                                <input type="email" class="form-control" placeholder="Enter Your Email Here" name="email" value="<?php if($app_data): ?><?php echo e($app_data->email); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Skype">Skype</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="skype.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Skype Link Here" name="skype" value="<?php if($app_data): ?><?php echo e($app_data->skype); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="WhatsApp">WhatsApp</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="whatsapp.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter WhatsApp Link Here" name="whatsapp" value="<?php if($app_data): ?><?php echo e($app_data->whatsapp); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Telegram">Telegram</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="telegram.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Telegram Link Here" name="telegram" value="<?php if($app_data): ?><?php echo e($app_data->telegram); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Github">Github</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="github.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Github Here" name="github" value="<?php if($app_data): ?><?php echo e($app_data->github); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Youtube">Youtube</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="youtube.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Youtube Here" name="youtube_link" value="<?php if($app_data): ?><?php echo e($app_data->youtube_link); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Favicon">Favicon</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="favicon.png">Preview</span>
                                <input type="file" class="form-control" name="favicon" id="favicon">
                            </div>
                            <div>
                                <img class="d-none" src="" id="previewFavicon" width="60px" alt="">
                            </div>
                            <div>
                                <img  src="<?php if($app_data): ?><?php echo e(asset($app_data->favicon)); ?><?php endif; ?>" width="60px" alt="">
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="form-group">
                                <label for="About">Phone</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="phone.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Phone Number Here" name="phone" value="<?php if($app_data): ?><?php echo e($app_data->phone); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Address">Address</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="address.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Address Here" name="address" value="<?php if($app_data): ?><?php echo e($app_data->address); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="Product">Product Heading</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="product_des.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Product Heading" name="product_heading" value="<?php if($app_data): ?><?php echo e($app_data->product_heading); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="team_heading">Team Heading</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="team_head.png">Preview</span>
                                <input type="text" class="form-control" placeholder="Enter Team Heading" name="team_heading" value="<?php if($app_data): ?><?php echo e($app_data->team_heading); ?><?php endif; ?>">
                            </div>
                            <div class="form-group">
                                <label for="About">Footer Description</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="about_des.png">Preview</span>
                                <textarea name="about_des" class="form-control" id=""  rows="2" placeholder="Enter About Us Description Here"><?php if($app_data): ?><?php echo e($app_data->about_des); ?><?php endif; ?></textarea>
                            </div>
                            <div class="form-group">
                                <label for="faq_des">FAQ Description</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                            data-name="faq_des.png">Preview</span>
                                <textarea name="faq_des" class="form-control" id=""  rows="2" placeholder="Enter FAQ Description Here"><?php if($app_data): ?><?php echo e($app_data->faq_des); ?><?php endif; ?></textarea>
                            </div>
                        </div> 
                    </div>
                    <div class="row mt-2">
                        <div class="col-2">
                            <div class="form-group">
                                <button class="text-center btn btn-primary btn-block" type="submit">Update</button>
                            </div>
                        </div>
                    </div>
                </form>
              
            </div>
            <!-- /.card-body -->
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
    <script>
            $(document).ready(function () {

            // Logo preview
            $("#logo").change(function() {
                pleasePreview(this, 'previewLogo');
            });

            $("#favicon").change(function() {
                pleasePreview(this, 'previewFavicon');
            });
            // ADD DATA
            $("#appSetup").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#appSetup")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('store-setting')); ?>",
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

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/appsetting/appSetting.blade.php ENDPATH**/ ?>