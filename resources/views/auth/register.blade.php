<x-app-layout>
    <!-- sign up section start -->
    <section class="sign-up-form">
        <div class="container">
            <div class="content wrapper">
                <div class="my_account_header">
                    <div class="header_title">
                        <h1 class="text-center">My Account</h1>
                    </div>
                </div>
                <div class="my_account_body">
                    <div class="row">
                        <div class="col-md-6 offset-md-3 col-sm-12 offset-sm-0">
                            <h3 class="text-center">REGISTER</h3>
                            <form class="form-two" method="POST" action="{{ route('register') }}">
                                @csrf
                                <div class="mb-3 mt-3">
                                    <label for="username">Username *</label>
                                    <input type="text" class="form-control" id="username" name="username" required>
                                    @error('username')
                                        <strong class="text-danger">{{ $message }}</strong>
                                    @enderror
                                    <strong class="text-danger" id="usernameMsg"></strong>
                                </div>
                                <div class="mb-3 mt-3">
                                    <label for="email_register">Email address *</label>
                                    <input type="email" class="form-control" id="email_register" name="email_register"
                                        required>
                                    @error('email_register')
                                        <strong class="text-danger">{{ $message }}</strong>
                                    @enderror
                                    <strong class="text-danger" id="emailMsg"></strong>
                                </div>
                                <div class="mb-3">
                                    <label for="pwd">Password *</label>
                                    <input type="password" class="form-control" id="pwd" name="password_register"
                                        required>
                                    @error('password_register')
                                        <strong class="text-danger">{{ $message }}</strong>
                                    @enderror
                                    <strong class="text-danger" id="passwordMsg"></strong>
                                </div>
                                <div class="text">
                                    <p>Your personal data will be used to support your experience throughout this
                                        website, to manage access to your account, and for other purposes described in
                                        our
                                        <a href="">privacy policy</a>.
                                    </p>
                                </div>
                                <button type="submit" class="btn log-in-button">REGISTER</button>
                                <div class="forget">
                                    <a href="{{ url('login') }}">Sign In</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- sign up section end -->

    @push('js')
        <script>
            $(document).ready(function() {
                $('#username').blur(function(e) {
                    e.preventDefault();
                    $('#usernameMsg').text('');
                    var username = $(this).val();
                    var array = {
                        'username': username
                    }

                    $.ajax({
                        type: "POST",
                        url: "{{ url('validate-userdata') }}",
                        data: array,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#usernameMsg').text('');
                            }
                        },
                        error: function(error) {
                            $('usernameMsg').text('');
                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'username') {
                                    $('#usernameMsg').text(error);
                                }
                            })
                        }
                    });
                });


                $('#email_register').blur(function(e) {
                    e.preventDefault();
                    $('#emailMsg').text('');
                    var email = $(this).val();
                    var array = {
                        'email': email
                    }
                    $.ajax({
                        type: "POST",
                        url: "{{ url('validate-userdata') }}",
                        data: array,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#emailMsg').text('');
                            }
                        },
                        error: function(error) {
                            $('emailMsg').text('');
                            $.each(error.responseJSON.errors, function(field_name, error) {

                                if (field_name == 'email') {
                                    $('#emailMsg').text(error);
                                }

                            })
                        }
                    });
                });

                $('#pwd').keyup(function(e) {
                    e.preventDefault();
                    $('#passwordMsg').text('');

                    var password = $(this).val();
                    var array = {
                        'password': password
                    }

                    $.ajax({
                        type: "POST",
                        url: "{{ url('validate-userdata') }}",
                        data: array,
                        dataType: "json",
                        headers: {
                            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                        },
                        success: function(response) {
                            if (response.status == 200) {
                                $('#passwordMsg').text('');
                            }
                        },
                        error: function(error) {
                            $('passwordMsg').text('');

                            $.each(error.responseJSON.errors, function(field_name, error) {
                                if (field_name == 'password') {
                                    $('#passwordMsg').html(error[0]);
                                }
                            })

                        }
                    });
                });
            });
        </script>
    @endpush
</x-app-layout>
