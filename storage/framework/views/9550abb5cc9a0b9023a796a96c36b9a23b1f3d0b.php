

<?php $__env->startSection('title', 'My Account'); ?>

<?php $__env->startSection('sideSection'); ?>

    <!-- account section start -->
    <section class="account-area">
        <div class="container">
            <div class="content wrapper">
                <div class="my_account_header">
                    <div class="header_title">
                        <h1>My Account</h1>
                    </div>
                </div>
                <div class="my_account_body">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <div x-data="{ imagePreview: '<?php echo e(Auth::user()->photo == '' ? asset('frontend/assets/images/all-images/img_1.png') : asset(Auth::user()->photo)); ?>' }" class="nav flex-column nav-pills mb-5" id="v-pills-tab"
                                role="tablist" aria-orientation="vertical">
                                <input id="profileImage" class="d-none" type="file" x-ref='photo'
                                    x-on:change="
                            reader = new FileReader();
                            reader.onload = (event) => {
                                imagePreview = event.target.result;
                            };

                            reader.readAsDataURL($refs.photo.files[0]);
                            
                            ">
                                <div class="profile" @click="$refs.photo.click()">
                                    <img style="width: 80px" class="me-3" :src="imagePreview" alt="#">
                                    <p class="align-self-center mb-0">
                                        <?php echo e(Auth::user()->username); ?>

                                    </p>
                                </div>
                                <a href="<?php echo e(url('my-account/dashboard')); ?>" class="nav-link tab-button  text-uppercase">Dashboard</a>

                                <a href="<?php echo e(url('my-account/orders')); ?>" class="nav-link tab-button text-uppercase" >Orders</a>

                                <a href="<?php echo e(url('my-account/downlaods')); ?>" class="nav-link tab-button text-uppercase">Downloads</a>

                                <a href="<?php echo e(url('my-account/addresses')); ?>" class="nav-link tab-button text-uppercase">Addresses</a>

                                <a href="<?php echo e(url('my-account/details')); ?>" class="nav-link tab-button text-uppercase" >Account details</a>

                                <a href="<?php echo e(route('logout')); ?>" class="nav-link tab-button text-uppercase" >Logout</a>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-12 col-sm-12">
                            <div class="tab-content" id="v-pills-tabContent">
                                <?php echo $__env->yieldContent('myAccount'); ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- account section end -->


    <?php $__env->startPush('js'); ?>
        <script>
            $(document).ready(function() {
                $("form#updateUserData").submit(function(e) {
                    e.preventDefault();
                    var formData = new FormData($("#updateUserData")[0]);

                    $('.text-danger').text('');

                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(route('update-profile')); ?>",
                        contentType: false,
                        processData: false,
                        data: formData,
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.success) {
                                Swal.fire({
                                    position: 'center',
                                    icon: "success",
                                    title: response.success,
                                    showConfirmButton: false,
                                    timer: 1500
                                });
                            } else if (response.error) {

                                Swal.fire({
                                    position: 'center',
                                    icon: "error",
                                    title: response.error,
                                    showConfirmButton: false,
                                    timer: 1500
                                })
                            }
                        },
                        error: function(error) {

                            $('.text-danger').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                const errorElement = $('.text-danger[data-field="' +
                                    field_name + '"]');
                                if (errorElement.length > 0) {
                                    errorElement.text(error);
                                    toastr.error(error);
                                }
                            });
                        },
                        complete: function(done) {
                            if (done.status == 200) {
                                // window.location.href = "staff-list";
                                // window.location.reload();
                            }
                        }
                    });
                });

                $('#updateUserData2').submit(function(e) {
                    e.preventDefault();
                    var formData = new FormData($("#updateUserData2")[0]);

                    $('#fname_msg2').text('');
                    $('#lname_msg2').text('');
                    $('#username_msg2').text('');
                    $('#email_msg2').text('');
                    $('#current_password_msg2').text('');
                    $('#new_password_msg2').text('');
                    $('#confirm_password_msg2').text('');


                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(route('update-profile2')); ?>",
                        contentType: false,
                        processData: false,
                        data: formData,
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.success) {
                                Swal.fire({
                                    position: 'center',
                                    icon: "success",
                                    title: response.success,
                                    showConfirmButton: false,
                                    timer: 1500
                                });


                            } else if (response.error) {

                                Swal.fire({
                                    position: 'center',
                                    icon: "error",
                                    title: response.error,
                                    showConfirmButton: false,
                                    timer: 1500
                                })
                            }
                        },
                        error: function(error) {

                            $('#fname_msg2').text('');
                            $('#lname_msg2').text('');
                            $('#username_msg2').text('');
                            $('#email_msg2').text('');
                            $('#current_password_msg2').text('');
                            $('#new_password_msg2').text('');
                            $('#confirm_password_msg2').text('');


                            $.each(error.responseJSON.errors, function(field_name, error) {
                                var error = error[0];
                                if (field_name == 'f_name') {
                                    $('#fname_msg2').text(error);
                                    toastr.error(error)
                                } else if (field_name == 'l_name') {
                                    $('#lname_msg2').text(error);
                                    toastr.error(error)
                                } else if (field_name == 'username') {
                                    $('#username_msg2').text(error);
                                    toastr.error(error)
                                } else if (field_name == 'email') {
                                    $('#email_msg2').text(error);;
                                    toastr.error(error)
                                } else if (field_name == 'password') {
                                    $('#current_password_msg2').text(error);;
                                    toastr.error(error)
                                    console.log(error);
                                } else if (field_name == 'new_password') {
                                    $('#new_password_msg2').text(error);;
                                    toastr.error(error)
                                } else if (field_name == 'confirm_password') {
                                    $('#confirm_password_msg2').text(error);;
                                    toastr.error(error)
                                }

                            });
                        },
                        complete: function(done) {
                            if (done.status == 200) {

                                $('#current_password').val('');
                                $('#new_password').val('');
                                $('#confirm_password').val('');
                                // window.location.href = "staff-list";
                                // window.location.reload();
                            }
                        }
                    });
                });

                //

                $("#confirm_password").keyup(function(e) {
                    e.preventDefault();
                    var confirm_password = $(this).val();
                    var array = {
                        'confirm_password': confirm_password
                    }


                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(url('check-password')); ?>",
                        data: array,
                        dataType: "JSON",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#confirm_password_msg2').text('');
                            }
                        },
                        error: function(error) {
                            $('confirm_password_msg2').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'confirm_password') {
                                    $('#confirm_password_msg2').html(error[0]);
                                }
                            })

                        }
                    });
                });

                $("#new_password").keyup(function(e) {
                    e.preventDefault();
                    var new_password = $(this).val();
                    var array = {
                        'new_password': new_password
                    }


                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(url('check-password')); ?>",
                        data: array,
                        dataType: "JSON",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#new_password_msg2').text('');
                            }
                        },
                        error: function(error) {
                            $('new_password_msg2').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'new_password') {
                                    $('#new_password_msg2').html(error[0]);
                                }
                            })

                        }
                    });
                });

                $('#profileImage').change(function(e) {
                    e.preventDefault();
                    var photo = $(this)[0].files[0];

                    var formData = new FormData();
                    formData.append('photo', photo);
                    $.ajax({
                        type: "POST",
                        url: "<?php echo e(url('profile-photo-upload-ajax')); ?>",
                        contentType: false,
                        processData: false,
                        enctype: 'multipart/form-data',
                        data: formData,
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {

                        }
                    });

                });


            });
        </script>
    <?php $__env->stopPush(); ?>
    <!-- account section end -->
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/my-account.blade.php ENDPATH**/ ?>