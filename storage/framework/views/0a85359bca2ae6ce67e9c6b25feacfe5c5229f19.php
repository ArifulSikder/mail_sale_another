

<?php $__env->startSection('title', "My Account"); ?>

<?php $__env->startSection('sideSection'); ?>

    <!-- contact section start -->
    <section class="sign-up-form">
      <div class="container">
          <div class="content wrapper">
              <div class="my_account_header">
                  <div class="header_title">
                      <h1 class="text-center">Contact Us</h1>
                  </div>
              </div>
              <div class="my_account_body">
                  <form class="form-one" id="formData">
                      <div class="mb-3 mt-3">
                          <label for="name">Your Name (required)</label>
                          <input type="name" class="form-control" id="name" name="name" >

                          <span class="text-danger validate" data-field="name"></span>
                      </div>
                      <div class="mb-3">
                          <label for="email">Your Email (required)</label>
                          <input type="email" class="form-control shadow-inset" id="email" name="email" >

                          <span class="text-danger validate" data-field="email"></span>
                      </div>
                      <div class="mb-3">
                          <label for="Order" class="form-label form-label">Your Message (required)</label>
                          <textarea rows="5" name="message"></textarea>
                          <span class="text-danger validate" data-field="message"></span>
                      </div>
                      <button type="submit" class="btn log-in-button" id="submit">Submit</button>
                      <div style="display: none" id="loading">
                          <img style="height: 50px" src="<?php echo e(asset('frontend/assets/images/load.gif')); ?>" alt=""> <span>Sending Message To Admin</span>
                      </div>
                      
                  </form>
              </div>
          </div>
      </div>
  </section>
  <!-- contact section end -->
<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
        $(document).ready(function () {
            
                //add form
            $("#formData").submit(function (e) {
                e.preventDefault();

                var formData = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "<?php echo e(route('store-customer-message')); ?>",
                    contentType: false,
                    processData: false,
                    data: formData,
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


<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/contact.blade.php ENDPATH**/ ?>