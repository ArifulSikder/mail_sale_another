@extends('backend.layouts.master')

@section('title', 'Set Email')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">Set Email</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Set Email</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="my-1 d-flex justify-content-between">
                <div>
                    <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Set Email 
                    </button>
                </div>
                <form action="">
                    <div class="form-group d-flex">
                        <input class="form-control" type="search" placeholder="Search By Username" name="search" value="{{ $search }}">
                        <button class="btn btn-info btn-sm ml-2">Search</button>
                    </div>
                </form> 
            </div>
            <div class="card">
                <div class="card-header">Email Setup Table</div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 10%">MAIL MAILER</th>
                                    <th scope="col" style="width: 10%">MAIL HOST</th>
                                    <th scope="col" style="width: 10%">MAIL PORT</th>
                                    <th scope="col" style="width: 10%">MAIL USERNAME</th>
                                    <th scope="col" style="width: 10%">MAIL PASSWORD</th>
                                    <th scope="col" style="width: 10%">MAIL ENCRYPTION</th>
                                    <th scope="col" style="width: 10%">MAIL FROM ADDRESS</th>
                                    <th scope="col" style="width: 10%">MAIL FROM NAME</th>
                                    <th scope="col" style="width: 10%">Status</th>
                                    <th scope="col" style="width: 10%">Action</th>
                                </tr>   
                            </thead>
                            <tbody>
                                @php
                                    $serials = ($email_data->currentpage() - 1) * $email_data->perpage() + 1;
                                @endphp 
                                @foreach($email_data as $data)
                                    <tr>
                                        <th>{{ $serials++ }}</th>
                                        <td>{{ $data->mailer }}</td>
                                        <td>{{ $data->host }}</td>
                                        <td>{{ $data->port }}</td>
                                        <td>{{ $data->username }}</td>
                                        <td>{{ $data->password }}</td>
                                        <td>{{ $data->encription }}</td>
                                        <td>{{ $data->address }}</td>
                                        <td>{{ $data->name }}</td>
                                        <td><span
                                                class="badge badge-{{ $data->active_status == 0 ? 'danger': 'success' }}">{{ $data->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                        </td>
                                        <td>    
                                            <button type="button" 
                                                    class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                    data-toggle="dropdown">
                                                    Options
                                                </button>
                                                <div class="text-center dropdown-menu bg-light-blue">
                                                    @if ($data->active_status == 0)
                                                    <a href="{{ route('update-email-status', ['id' => $data->id , 'status' => $data->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                    @else
                                                        <a href="{{ route('update-email-status', ['id' => $data->id , 'status' => $data->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                    @endif
                                                    <button type="button" data-email="{{ $data }}"
                                                        class="btn btn-success btn-sm editData btn-block">
                                                        <i class="fas fa-edit"></i> Edit
                                                    </button>
                                                    <a href="{{ route('delete-email', ['id' => $data->id]) }}"
                                                        id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                            class="fas fa-trash"></i> Delete</a>
                                                </div>

                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <div class="float-right my-2">
                        {{ $email_data->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>


<!-- add email data -->
<div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Emaiil Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formData">
                <div class="modal-body">    
                    <div class="form-group">
                        <label for="mailer">MAIL_MAILER</label>
                        <input type="text" class="form-control" name="mailer"  placeholder="Enter MAIL MAILER" >
                        <span class="text-danger validate" data-field="mailer"></span>
                    </div>
                    <div class="form-group">
                        <label for="host">MAIL_HOST</label>
                        <input type="text" class="form-control" name="host"  placeholder="Enter MAIL HOST" >
                        <span class="text-danger validate" data-field="host"></span>
                    </div>
                    <div class="form-group">
                        <label for="port">MAIL_PORT</label>
                        <input type="number" class="form-control" name="port"  placeholder="Enter MAIL PORT" >
                        <span class="text-danger validate" data-field="port"></span>
                    </div>
                    <div class="form-group">
                        <label for="username">MAIL_USERNAME</label>
                        <input type="text" class="form-control" name="username"  placeholder="Enter MAIL USERNAME" >
                        <span class="text-danger validate" data-field="username"></span>
                    </div>
                    <div class="form-group">
                        <label for="password">MAIL_PASSWORD</label>
                        <input type="text" class="form-control" name="password"  placeholder="Enter MAIL PASSWORD" >
                        <span class="text-danger validate" data-field="password"></span>
                    </div>
                    <div class="form-group">
                        <label for="encription">MAIL_ENCRYPTION</label>
                        <input type="text" class="form-control" name="encription"  placeholder="Enter Seller Name" >
                        <span class="text-danger validate" data-field="encription"></span>
                    </div>
                    <div class="form-group">
                        <label for="address">MAIL_FROM_ADDRESS</label>
                        <input type="text" class="form-control" name="address"  placeholder="Enter MAIL FROM ADDRESS" >
                        <span class="text-danger validate" data-field="address"></span>
                    </div>
                    <div class="form-group">
                        <label for="name">MAIL_FROM_NAME</label>
                        <input type="text" class="form-control" name="name"  placeholder="Enter MAIL FROM NAME" >
                        <span class="text-danger validate" data-field="name"></span>
                    </div>
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

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- edit email -->
<div class="modal fade" id="editseller" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Seller</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editData">
                <div class="modal-body">    
                    <div class="form-group">
                        <input type="hidden" id="id_e" name="edit_id">
                        <label for="mailer">MAIL_MAILER</label>
                        <input type="text" class="form-control" name="mailer" id="mailer_e" >
                        <span class="text-danger validate_e" data-field="mailer"></span>
                    </div>
                    <div class="form-group">
                        <label for="host">MAIL_HOST</label>
                        <input type="text" class="form-control" name="host"  id="host_e">
                        <span class="text-danger validate_e" data-field="host"></span>
                    </div>
                    <div class="form-group">
                        <label for="port">MAIL_PORT</label>
                        <input type="number" class="form-control" name="port" id="port_e">
                        <span class="text-danger validate_e" data-field="port"></span>
                    </div>
                    <div class="form-group">
                        <label for="username">MAIL_USERNAME</label>
                        <input type="text" class="form-control" name="username" id="username_e">
                        <span class="text-danger validate_e" data-field="username"></span>
                    </div>
                    <div class="form-group">
                        <label for="password">MAIL_PASSWORD</label>
                        <input type="text" class="form-control" name="password" id="password_e">
                        <span class="text-danger validate_e" data-field="password"></span>
                    </div>
                    <div class="form-group">
                        <label for="encription">MAIL_ENCRYPTION</label>
                        <input type="text" class="form-control" name="encription"  id="encription_e">
                        <span class="text-danger validate_e" data-field="encription"></span>
                    </div>
                    <div class="form-group">
                        <label for="address">MAIL_FROM_ADDRESS</label>
                        <input type="text" class="form-control" name="address" id="address_e">
                        <span class="text-danger validate_e" data-field="address"></span>
                    </div>
                    <div class="form-group">
                        <label for="name">MAIL_FROM_NAME</label>
                        <input type="text" class="form-control" name="name"   id="name_e">
                        <span class="text-danger validate_e" data-field="name"></span>
                    </div>
                    <div class="form-group">
                        <label for="active_status">Active Status</label>
                        <select class="form-control select2" name="active_status" id="active_status_e"
                            data-placeholder="Select Active Status" style="width: 100%">
                            <option value="">Choose Type</option>
                            <option value="0">Inactive</option>
                            <option value="1">Active</option>
                        </select>
                        <span class="text-danger validate_e" data-field="active_status"></span>
                    </div>
                </div>


                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>


@endsection

@section('script')

<script>
    $(document).ready(function () {

            

            $("#formData").submit(function (e) { 
              e.preventDefault();
              var formdata = new FormData($("#formData")[0]);
              $.ajax({
                  type: "POST",
                  url: "{{ route('store-email-data') }}",
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
                    // console.log(response);
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

           

            $('.editData').click(function (e) {
                e.preventDefault();
                $('#editseller').modal('show');
                $('#id_e').val($(this).data('email').id);
                $('#mailer_e').val($(this).data('email').mailer);
                $('#host_e').val($(this).data('email').host);
                $('#port_e').val($(this).data('email').port);
                $('#username_e').val($(this).data('email').username);
                $('#password_e').val($(this).data('email').password);
                $('#encription_e').val($(this).data('email').encription);
                $('#address_e').val($(this).data('email').address);
                $('#name_e').val($(this).data('email').name);
                $('#active_status_e').val($(this).data('email').active_status).trigger('change');
            });

          $("#editData").submit(function (e) { 
                e.preventDefault();
                
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-email-data') }}",
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
                             const errorElement = $('.validate_e[data-field="' + field_name + '"]');
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
    
@endsection





