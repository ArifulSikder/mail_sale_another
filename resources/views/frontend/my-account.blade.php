
    @extends('frontend.layouts.master')

    @section('title', "My Account")

    @section('sideSection')
  
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
                        <div x-data="{imagePreview: '{{  Auth::user()->photo ==  '' ? asset("frontend/assets/images/all-images/img_1.png") : Auth::user()->photo  }}' }" class="nav flex-column nav-pills mb-5" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <input id="profileImage" class="d-none"  type="file" x-ref='photo' x-on:change="
                            reader = new FileReader();
                            reader.onload = (event) => {
                                imagePreview = event.target.result;
                            };

                            reader.readAsDataURL($refs.photo.files[0]);
                            
                            ">
                            <div class="profile" @click="$refs.photo.click()">
                                <img style="width: 80px" class="me-3" :src="imagePreview" alt="#">
                                <p class="align-self-center mb-0">
                                    {{ Auth::user()->username }}
                                </p>
                            </div>
                            <button class="nav-link tab-button active text-uppercase" id="v-pills-dboard-tab" data-bs-toggle="pill" data-bs-target="#v-pills-dboard" type="button" role="tab" aria-controls="v-pills-dboard" aria-selected="true">Dashboard</button>

                            <button class="nav-link tab-button text-uppercase" id="v-pills-orders-tab" data-bs-toggle="pill" data-bs-target="#v-pills-orders" type="button" role="tab" aria-controls="v-pills-orders" aria-selected="false">Orders</button>

                            <button class="nav-link tab-button text-uppercase" id="v-pills-downloads-tab" data-bs-toggle="pill" data-bs-target="#v-pills-downloads" type="button" role="tab" aria-controls="v-pills-downloads" aria-selected="false">Downloads</button>

                            <button class="nav-link tab-button text-uppercase" id="v-pills-address-tab" data-bs-toggle="pill" data-bs-target="#v-pills-address" type="button" role="tab" aria-controls="v-pills-address" aria-selected="false">Addresses</button>

                            <button class="nav-link tab-button text-uppercase" id="v-pills-account-tab" data-bs-toggle="pill" data-bs-target="#v-pills-account" type="button" role="tab" aria-controls="v-pills-account" aria-selected="false">Account details</button>

                            <button class="nav-link tab-button text-uppercase" id="v-pills-logout-tab" data-bs-toggle="pill" data-bs-target="#v-pills-logout" type="button" role="tab" aria-controls="v-pills-logout" aria-selected="false">Logout</button>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 col-sm-12">
                        <div class="tab-content" id="v-pills-tabContent">
                        <div class="tab-pane fade show active" id="v-pills-dboard" role="tabpanel" aria-labelledby="v-pills-dboard-tab" tabindex="0">
                            <p>Hello <b>{{ Auth::user()->username }}</b> (not <b>{{ Auth::user()->username }}</b>? <span class="link">
                                <a href="{{ url('logout') }}">Log out</a>
                            </span>)
                        </p>
                            <p>From your account dashboard you can view your <span class="link"><a href="#">recent orders</a></span>, manage your <span class="link"><a href="#">shipping and billing addresses</a></span>, and <span class="link"><a href="#">edit your password and account details</a></span>.</p>
                            <div class="common_button">
                            <a href="" class="btn">Orders</a>
                            <a href="" class="btn">Downloads</a>
                            <a href="" class="btn">Addresses</a>
                            <a href="" class="btn">Account details</a>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-orders" role="tabpanel" aria-labelledby="v-pills-orders-tab" tabindex="0">
                            <div class="common_content d-flex align-items-center">
                            <a href="./pricing.html" class="btn_2">Browse products</a>
                            <p>No order has been made yet.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-downloads" role="tabpanel" aria-labelledby="v-pills-downloads-tab" tabindex="0">
                            <div class="common_content d-flex align-items-center">
                            <a href="./pricing.html" class="btn_2">Browse products</a>
                            <p>No downloads available yet.</p>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="v-pills-address" role="tabpanel" aria-labelledby="v-pills-address-tab" tabindex="0">
                            <div class="billing-address">
                            <h4 class="orderheader mb-3">Billing address</h4>
                            <form class="form" id="updateUserData" method="POST">
                                @csrf
                                <input type="hidden" value="{{ Auth::user()->id }}" name="id">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                        <label for="firstName" class="form-label">First name</label>
                                        <input type="text" name="f_name" class="form-control" value="{{ Auth::user()->f_name }}">
                                        <strong class="text-danger" data-field="f_name"></strong>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="lastName" class="form-label">Last name</label>
                                        <input type="text" name="l_name" class="form-control leftp" value="{{ Auth::user()->l_name }}">
                                        <strong class="text-danger" data-field="l_name"></strong>
                                    </div>
                                </div>

                                <div class="mb-3">
                                    <label for="username" class="form-label">Company name (optional)</label>
                                    <div class="">
                                      <input type="text" name="company_name" class="form-control" value="{{ Auth::user()->company_name }}">
                                       
                                    </div>
                                    <strong class="text-danger" data-field="company_name"></strong>
                                </div>

                                <div class="mb-3">
                                    <label for="country" class="form-label">Country / Region</label>
                                    <div class="border custom-select py-1">
                                        <select name="code" class="custom-select d-block country-control select2" style="width: 100%">
                                            <option value="">Select a country / region&hellip;</option>
                                            @foreach ($countries as $country)
                                                <option value="{{ $country->code }}" {{ $country->code == Auth::user()->code ? 'selected' : '' }}>{{ $country->name }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    <strong class="text-danger" data-field="code"></strong>
                                </div>
                                <div class="row align-items-center">
                                    <div class="col-md-6 mb-3">
                                        <label for="" class="form-label">Street address</label>
                                        <input type="text" name="street" class="form-control" placeholder="House number and street name" value="{{ Auth::user()->street }}">
                                       <strong class="text-danger" data-field="street"></strong>
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <label for="" class="form-label mt-4"></label>
                                        <input type="text" class="form-control leftp"
                                        placeholder="Apartment, suite, unit, etc. (optional)" name="address" value="{{ Auth::user()->address }}">
                                        <strong class="text-danger" data-field="address"></strong>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="" class="form-label">Town / City *</label>
                                    <div>
                                        <input type="text" class="form-control" name="town" value="{{ Auth::user()->town }}">
                                    </div>
                                    <strong class="text-danger" data-field="town"></strong>
                                </div>
                                <div class="mb-3">
                                    <label for="County" class="form-label">County (optional)</label>
                                    <div>
                                        <input type="text" class="form-control" name="country" value="{{ Auth::user()->country }}">
                                    </div>
                                    <strong class="text-danger" data-field="country"></strong>
                                </div>
                                <div class="mb-3">
                                    <label for="Postcode" class="form-label">Postcode *</label>
                                    <div>
                                        <input type="text" class="form-control" name="post_code" value="{{ Auth::user()->post_code }}">
                                    </div>
                                    <strong class="text-danger" data-field="post_code"></strong>
                                </div>
                                <div class="mb-3">
                                    <label for="Phone" class="form-label">Phone *</label>
                                    <div>
                                        <input type="number" class="form-control" name="phone" value="{{ Auth::user()->phone }}">
                                    </div>
                                    <strong class="text-danger" data-field="phone"></strong>
                                </div>
                                <div class="mb-3">
                                    <label for="Email" class="form-label">Email address *</label>
                                    <div>
                                        <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}">
                                    </div>
                                    <strong class="text-danger" data-field="email"></strong>
                                </div>
                                <button type="submit" class="btn log-in-button mt-3">Save Address</button>
                            </form>
                        </div>
                        </div>

                        <div class="tab-pane fade" id="v-pills-account" role="tabpanel" aria-labelledby="v-pills-account-tab" tabindex="0">
                            <form class="form" id="updateUserData2" method="POST">
                                <input type="hidden" value="{{ Auth::user()->id }}" name="id">
                            <div class="row">
                                <div class="col-lg-6">
                                    <label class="required d-block" for="fname">First name *</label>
                                    <input class="input_edit" type="text" id="fname" name="f_name" value="{{ Auth::user()->f_name }}">

                                    <strong id="fname_msg2" class="text-danger"></strong>
                                </div>

                                <div class="col-lg-6">
                                    <label class="required d-block" for="lname">Last name *</label>
                                    <input class="input_edit" type="text" id="lname" name="l_name" value="{{ Auth::user()->l_name }}">

                                    <strong id="lname_msg2" class="text-danger"></strong>
                                </div>
                            </div>

                                <label class="required d-block" for="dname">Display name *</label>
                                <input class="input_edit_2" type="text" id="dname" name="username" value="{{ Auth::user()->username }}">
                                <strong id="username_msg2" class="text-danger"></strong>

                                <p class="fst-italic">This will be how your name will be displayed in the account section and in reviews</p>

                                <label class="required d-block" for="email-address">Email address *</label>
                                <input class="input_edit_2" type="email" id="email-address" name="email" value="{{ Auth::user()->email }}">
                                <strong id="email_msg2" class="text-danger"></strong>

                                <p class="sub_head">Password change</p>

                                <label class="required d-block" for="current_password">Current password (leave blank to leave unchanged)</label>
                                <input class="input_edit_2" type="password" id="current_password" name="password">
                                <strong id="current_password_msg2" class="text-danger"></strong>

                                <label class="required d-block" for="new_password">New password (leave blank to leave unchanged)</label>
                                <input class="input_edit_2" type="password" id="new_password" name="new_password">
                                <strong id="new_password_msg2" class="text-danger"></strong>

                                <label class="required d-block" for="confirm_password">Confirm new password</label>
                                <input class="input_edit_2" type="password" id="confirm_password" name="confirm_password">
                                <strong id="confirm_password_msg2" class="text-danger"></strong>

                                <div class="common_content d-flex mt-3">
                                    <button class="btn_2 py-2" type="submit">Save changes</button>
                                </div>
                            </form>
                        </div>

                        <div class="tab-pane fade" id="v-pills-logout" role="tabpanel" aria-labelledby="v-pills-logout-tab" tabindex="0">
                            <p>
                            <span class="green_title">
                                <i class="fa-solid fa-check"></i>
                                Are you sure you want to log out?
                            </span>
                            <span class="link"><a href="{{ url('logout') }}">Confirm and log out</a></span>
                            </p>

                            <p>Hello <b>{{ Auth::user()->username }}</b> (not <b>{{ Auth::user()->username }}</b>? <span class="link"><a href="{{ url('logout') }}">Log out</a></span>)</p>
                            <p>From your account dashboard you can view your <span class="link"><a href="#">recent orders</a></span>, manage your <span class="link"><a href="#">shipping and billing addresses</a></span>, and <span class="link"><a href="#">edit your password and account details</a></span>.</p>

                            <div class="common_button">
                            <button class="btn">Dashboard</button>
                            <button class="btn">Orders</button>
                            <button class="btn">Downloads</button>
                            <button class="btn">Addresses</button>
                            <button class="btn">Account details</button>
                            </div>
                        </div>

                        </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
    </section>
    <!-- account section end -->


    @push('js')
    <script>
        $(document).ready(function () {
            $("form#updateUserData").submit(function(e) {
                e.preventDefault();
                var formData = new FormData($("#updateUserData")[0]);

                $('.text-danger').text('');

                $.ajax({
                    type: "POST",
                    url: "{{ route('update-profile') }}",
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

                        $.each(error.responseJSON.errors, function (field_name, error) {
                            const errorElement = $('.text-danger[data-field="' + field_name + '"]');
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

            $('#updateUserData2').submit(function (e) {
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
                    url: "{{ route('update-profile2') }}",
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

            $("#confirm_password").keyup(function (e) {
                e.preventDefault();
                var confirm_password = $(this).val();
                var array = {
                        'confirm_password': confirm_password
                    }


                $.ajax({
                        type: "POST",
                        url: "{{ url('check-password') }}",
                        data: array,
                        dataType: "JSON",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function (response) {
                            if (response.status == 200) {
                                $('#confirm_password_msg2').text('');
                            }
                        },
                        error: function (error) {
                            $('confirm_password_msg2').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'confirm_password') {
                                    $('#confirm_password_msg2').html(error[0]);
                                }
                            })

                        }
                });
            });

            $("#new_password").keyup(function (e) {
                e.preventDefault();
                var new_password = $(this).val();
                var array = {
                        'new_password': new_password
                    }


                $.ajax({
                        type: "POST",
                        url: "{{ url('check-password') }}",
                        data: array,
                        dataType: "JSON",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function (response) {
                            if (response.status == 200) {
                                $('#new_password_msg2').text('');
                            }
                        },
                        error: function (error) {
                            $('new_password_msg2').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'new_password') {
                                    $('#new_password_msg2').html(error[0]);
                                }
                            })

                        }
                });
            });

            $('#profileImage').change(function (e) { 
                e.preventDefault();
                var photo = $(this)[0].files[0];
                
                var formData = new FormData();
                formData.append('photo', photo);
                $.ajax({
                    type: "POST",
                    url: "{{ url('profile-photo-upload-ajax') }}",
                    contentType: false,
                    processData: false,
                    enctype: 'multipart/form-data',
                    data: formData,
                    headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    success: function (response) {
                        
                    }
                });

            });


        });
    </script>
    @endpush
    <!-- account section end -->
    @endsection
