@extends('backend.layouts.master')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>User Details</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item"><a href="{{ url('user-list') }}">Users List</a>
                        </li>
                        <li class="breadcrumb-item active">User Details</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <!-- Profile Image -->
                    <div class="card card-primary card-outline">
                        <div class="card-body box-profile">
                            <div class="text-center">
                                <img class="profile-user-img img-fluid img-circle"
                                    src="{{ asset('frontend/assets/images/all-images/img_1.png') }}"
                                    alt="User profile picture">
                            </div>

                            <h3 class="profile-username text-center">
                                {{ $user->username }}
                            </h3>
                            <p class="text-muted text-center">
                                {{ $user->type == "Customer" ? "Customer" : "Author" }}
                            </p>

                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                    <b>Name</b> <a class="float-right">
                                        <span
                                            class="badge badge-{{ $user->f_name == null ? 'danger' : '' }}">{{ $user->f_name == null ? 'Empty' : $user->f_name." ".$user->l_name }}</span>
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <b>Email</b> <a class="float-right">{{ $user->email }}</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Phone</b> <a class="float-right">
                                        <span
                                            class="badge badge-{{ $user->phone == null ? 'danger' : '' }}">{{ $user->phone == null ? 'Empty' : $user->phone }}</span>
                                    </a>
                                </li>
                                <li class="list-group-item">
                                    <b>Company Name</b> <a class="float-right">
                                        <span
                                            class="badge badge-{{ $user->company_name == null ? 'danger' : '' }}">{{ $user->company_name == null ? 'Empty' : $user->company_name }}</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header p-2">
                            <ul class="nav nav-pills">
                                <li class="nav-item"><a class="nav-link active" href="#location"
                                        data-toggle="tab">Location</a></li>
                                <li class="nav-item"><a class="nav-link" href="#password" data-toggle="tab">Password</a>
                                </li>
                            </ul>
                        </div><!-- /.card-header -->
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="active tab-pane" id="location">
                                    <!-- Post -->
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th scope="col" style="width: 40%">User Location Information</th>
                                                <th scope="col" style="width: 60%">Address</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <strong>City:</strong> {{ $user->city }}<br>
                                                    <strong>Street:</strong> {{ $user->street }}<br>
                                                    <strong>Town:</strong> {{ $user->town }}<br>
                                                    <strong>Country:</strong> {{ $user->country }}<br>
                                                    <strong>Code:</strong> {{ $user->code }}<br>
                                                </td>
                                                {{-- <td>{{ $user->post_code }}</td> --}}
                                                <td>{{ $user->address }}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.tab-pane -->
                                <div class="tab-pane" id="password">
                                    <div class="card">
                                        <div class="card-header">Change Password</div>

                                        <div class="card-body">
                                            <form id="addForm">
                                                <input type="hidden" name="id" value="{{ $user->id }}">
                                                <div class="form-group">
                                                    <label for="password1">Old Password</label>
                                                    <input type="password" class="form-control" id="password1"
                                                        name="password" placeholder="Enter Old Password">
                                                    <div class="text-danger" id="passwordMsg" role="alert">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="new_password">New Password</label>
                                                    <input type="password" class="form-control" id="new_password"
                                                        name="new_password" placeholder="Password">
                                                    <div class="text-danger" id="newPasswordMsg" role="alert">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="confirm_password">Confirm Password</label>
                                                    <input type="password" class="form-control" id="confirm_password"
                                                        name="confirm_password" placeholder="Confirm Password">
                                                    <div class="text-danger" id="confirmPasswordMsg" role="alert">
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </form>
                                        </div>
                                    </div>

                                </div>
                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                        </div><!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>


</div>

@endsection
@section('script')
<script>
    $(document).ready(function () {
        $('#addForm').submit(function (e) {
            e.preventDefault();
            $('passwordMsg').text('');
            $('newPasswordMsg').text('');
            $('confirmPasswordMsg').text('');

            var formData = new FormData($('#addForm')[0]);

            $.ajax({
                type: "POST",
                url: "{{ route('change-password') }}",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success) {
                        toastr.success(response.success)
                        $('#password1').val('');
                        $('#new_password').val('');
                        $('#confirm_password').val('');
                    } else if (response.error) {
                        toastr.error(response.error)
                    }
                },
                error: function (error) {
                    $('passwordMsg').text('');
                    $('newPasswordMsg').text('');
                    $('confirmPasswordMsg').text('');

                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'password') {
                            $('#passwordMsg').html(error[0]);
                        } else if (field_name == 'new_password') {
                            $('#newPasswordMsg').html(error[0]);
                        } else {
                            $('#confirmPasswordMsg').html(error[0]);
                        }
                    })

                }
            });
        });
    });

</script>
@endsection
