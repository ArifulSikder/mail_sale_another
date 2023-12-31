@extends('backend.layouts.master')

@section('title', 'SMS Templete')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">SMS Templete</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">SMS Templete</li>
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
                    <button type="button" class="btn btn-success myProduct" data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Add SMS Templete </button>
                </div>
                <form action="" class="col-4">
                    <div class="form-group d-flex">
                        <input class="form-control" type="search" placeholder="Search By Templete Name" name="search" value="{{ $search }}">
                        <button class="btn btn-info btn-sm ml-2">Search</button>
                    </div>
                </form> 
            </div>
            <div class="card">
                <div class="card-header">Home Details</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 10%">Templete Name</th>
                                <th scope="col" style="width: 15%">Subject</th>
                                <th scope="col" style="width: 25%">Message</th>
                                <th scope="col" style="width: 15%">Visit Link</th>
                                <th scope="col" style="width: 10%">Active Status</th>
                                <th scope="col" style="width: 10%">Add Date</th>
                                <th scope="col" style="width: 10%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($templetes->currentpage() - 1) * $templetes->perpage() + 1;
                            @endphp 
                            @foreach($templetes as $templete)
                                <tr>
                                    <th>{{ $serials++ }}</th>
                                    <td>{{ $templete->templete_name }}</td>
                                    <td>{{ $templete->subject }}</td>
                                    <td>{!! Str::words($templete->message, 10, '....')  !!}
                                        @if (Str::of($templete->message)->wordCount() > 10)
                                           <a  class="editdes" style="cursor: pointer;" data-message="{{ $templete ->message }}">
                                               See More
                                           </a>
                                       @endif
                                   </td>
                                    <td>{{ $templete->visit_link }}</td>
                                    <td><span
                                            class="badge badge-{{ $templete->active_status == 0 ? 'danger': 'success' }}">{{ $templete->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $templete->created_at->toFormateDate() }}</td>
                                    <td>    
                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                @if ($templete->active_status == 0)
                                                   <a href="{{ route('update-templete-status', ['id' => $templete->id , 'status' => $templete->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-templete-status', ['id' => $templete->id , 'status' => $templete->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif
                                                <button type="button"
                                                    data-id="{{ $templete->id }}"
                                                    data-templete_name="{{ $templete->templete_name }}"
                                                    data-subject="{{ $templete->subject }}"
                                                    data-visit_link="{{ $templete->visit_link }}"
                                                    data-message="{{ $templete->message }}"
                                                    data-active_status="{{ $templete->active_status }}"
                                                    class="btn btn-success btn-sm editData  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-templete', ['id' => $templete->id]) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                            </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $templetes->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>


<!-- add templete -->
<div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add SMS Templete</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formData">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="templete_name">Templete Name</label>
                        <input type="text" class="form-control" name="templete_name" id="templete_name" placeholder="Enter Templete Name" >
                            <span class="text-danger validate" data-field="templete_name"></span>
                    </div>

                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" name="subject" id="subject" placeholder="Enter Subject" >
                            <span class="text-danger validate" data-field="subject"></span>
                    </div>

                    <div class="form-group">
                        <label for="visit_link">Visit Link</label>
                        <input type="text" class="form-control" name="visit_link" id="visit_link" placeholder="Input Visit Link Here.." >
                            <span class="text-danger validate" data-field="visit_link"></span>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea type="text" class="form-control" name="message" id="editor"> </textarea>
                            <span class="text-danger validate" data-field="message"></span>

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

<!-- edit templete -->
<div class="modal fade" id="editTemplete" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Home Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editData">
                <div class="modal-body">
                    <input type="hidden" name="edit_id" id="id_e">
                    <div class="form-group">
                        <label for="templete_name">Templete Name</label>
                        <input type="text" class="form-control" name="templete_name" id="templete_name_e" placeholder="Enter Templete Name" >
                            <span class="text-danger validate_e" data-field="templete_name"></span>
                    </div>

                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" name="subject" id="subject_e" placeholder="Enter Subject" >
                            <span class="text-danger validate_e" data-field="subject"></span>
                    </div>

                    <div class="form-group">
                        <label for="visit_link">Visit Link</label>
                        <input type="text" class="form-control" name="visit_link" id="visit_link_e" placeholder="Input Visit Link Here.." >
                            <span class="text-danger validate_e" data-field="visit_link"></span>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea type="text" class="form-control" name="message" id="editor_e"> </textarea>
                            <span class="text-danger validate_e" data-field="message"></span>

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

<!--- show Message  -->
<div class="modal fade" id="showdes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Show Message</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
                <div class="modal-body">
                    <div class="form-group" >
                        <label for="message">Message</label>
                        <div id="message"></div>
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
        </div>
    </div>
</div>

@endsection

@section('script')
@include('components.ckeditor')

<script>
    $(document).ready(function () {
            // ck editor 
            ckeditor("editor")
            ckeditor("editor_e")

            $("#formData").submit(function (e) { 
              e.preventDefault();
              
              CKEDITOR.instances.editor.updateElement();
              var formdata = new FormData($("#formData")[0]);
              $.ajax({
                  type: "POST",
                  url: "{{ route('store-sms-templete') }}",
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

            $('.editdes').click(function (e) {
                e.preventDefault();
                $('#showdes').modal('show');
                $("#message").html($(this).data('message'));
            });

          $('.editData').click(function (e) {
                e.preventDefault();
                $('#editTemplete').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#templete_name_e').val($(this).data('templete_name'));
                $('#subject_e').val($(this).data('subject'));
                $('#visit_link_e').val($(this).data('visit_link'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
                CKEDITOR.instances['editor_e'].setData($(this).data('message'));
            });

          $("#editData").submit(function (e) { 
                e.preventDefault();
                
                CKEDITOR.instances.editor_e.updateElement();
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-sms-templete') }}",
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
    
@endsection





