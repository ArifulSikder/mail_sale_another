
@extends('backend.layouts.master')

@section('title', 'Dashboard')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Edit User</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a></li>
              <li class="breadcrumb-item active">Edit User</li>
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
            <div class="card-header font-weight-bold">User Add Form</div>
            <div class="card-body">
                <form action="{{ route('update-user') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <input type="hidden" name="id" value="{{ $user->id }}">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="f_name">First Name</label>
                                <input type="text" class="form-control" name="f_name" id="f_name" placeholder="Enter First Name" value="{{ $user->f_name}}">
                                @error('f_name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" name="username" id="username" placeholder="Enter Username" value="{{ $user->username}}">
                                @error('username')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email" value="{{ $user->email}}">
                                @error('email')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="company_name">Company Name</label>
                                <input type="text" class="form-control" name="company_name" id="company_name" placeholder="Enter Company Name" value="{{ $user->company_name}}">
                                @error('company_name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="city">City</label>
                                <input type="text" class="form-control" name="city" id="city" placeholder="Enter City" value="{{ $user->city}}">
                                @error('city')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="street">Street</label>
                                <input type="text" class="form-control" name="street" id="street" placeholder="Enter Street" value="{{ $user->street}}">
                                @error('street')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" value="{{ old('password')}}">
                                @error('password')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                                    <span class="text-danger" id="passwordMsg"></span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="l_name">Last Name</label>
                                <input type="text" class="form-control" name="l_name" id="l_name" placeholder="Enter Last Name" value="{{ $user->l_name}}">
                                @error('l_name')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone" value="{{ $user->phone}}">
                                @error('phone')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="town">Town</label>
                                <input type="text" class="form-control" name="town" id="town" placeholder="Enter town" value="{{ $user->town}}">
                                @error('town')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="country">Country</label>
                                <input type="text" class="form-control" name="country" id="country" placeholder="Enter Country" value="{{ $user->country}}">
                                @error('country')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="code">Code</label>
                                <input type="text" class="form-control" name="code" id="code" placeholder="Enter Code" value="{{ $user->code}}">
                                @error('code')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="type">Type</label>
                                <select type="text" class="form-control select2" name="type" id="type" data-placeholder="Select Type" style="width: 100%" value="{{ $user->type}}">
                                  <option selected>Choose Type</option>
                                  <option value="Customer" {{ $user->type == "Customer" ? 'selected' : '' }}>Customer</option>
                                  <option value="Author" {{ $user->type == "Author" ? 'selected' : '' }}>Author</option>
                                </select>
                                @error('type')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="password_confirmation">Password Confirmation</label>
                                <input type="password" class="form-control" name="password_confirmation" id="password_confirmation" placeholder="Confirm Password" value="{{old('password_confirmation')}}">
                                @error('password_confirmation')
                                    <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                        </div>
                        <div class="col-md-12">
                          <div class="form-group">
                              <label for="address">Address</label>
                              <textarea type="text" class="form-control textarea" name="address" id="address" placeholder="Enter Address" value="">{{ $user->address}}</textarea>
                              @error('address')
                                  <span class="text-danger">{{ $message }}</span>
                              @enderror
                          </div>
                          <div class="form-group">
                            <button class="btn btn-primary text-center btn-block" type="submit">Save</button>
                          </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
      </div>
    </section>
  </div>
  @push('js')
      <script>
        $(document).ready(function () {
            $('#password').keyup(function (e) {
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
                        success: function (response) {
                            if (response.status == 200) {
                                $('#passwordMsg').text('');
                            }
                        },
                        error: function (error) {
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
  <x-select2 />
  @endpush
@endsection
