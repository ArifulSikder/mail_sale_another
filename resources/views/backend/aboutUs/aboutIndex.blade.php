@extends('backend.layouts.master')

@section('title', 'About Us')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">About Us</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">About Us</li>
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
                        <i class="fas fa-plus"></i> Add About Us
                    </button>
                </div>
                <form action="">
                    <div class="form-group d-flex">
                        <input class="form-control" type="search" placeholder="Search By Description" name="search" value="{{ $search }}">
                        <button class="btn btn-info btn-sm ml-2">Search</button>
                    </div>
                </form> 
            </div>
            <div class="card">
                <div class="card-header">About Us Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 50%">Description</th>
                                <th scope="col" style="width: 15%">Active Status</th>
                                <th scope="col" style="width: 15%">Add Date</th>
                                <th scope="col" style="width: 15%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($aboutUs->currentpage() - 1) * $aboutUs->perpage() + 1;
                            @endphp 
                            @foreach($aboutUs as $about)
                                <tr>
                                    <th>{{ $serials++ }}</th>
                                    <td>{!! Str::words($about->description, 15, '....')  !!}
                                         @if (Str::of($about->description)->wordCount() > 15)
                                        <a style="cursor: pointer;" class="editdes" data-description="{{ $about ->description }}">
                                            See More
                                        </a>
                                        @endif</td>
                                        
                                    <td><span
                                            class="badge badge-{{ $about->active_status == 0 ? 'danger': 'success' }}">{{ $about->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $about->created_at->toFormateDate() }}</td>
                                    <td>    
                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                @if ($about->active_status == 0)
                                                   <a href="{{ route('update-about-status', ['id' => $about->id , 'status' => $about->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-about-status', ['id' => $about->id , 'status' => $about->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif
                                                <button type="button"
                                                    data-id="{{ $about->id }}"
                                                    data-description="{{ $about->description }}"
                                                    data-active_status="{{ $about->active_status }}"
                                                    class="btn btn-success btn-sm editData btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-about-us', ['id' => $about->id]) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>


                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $aboutUs->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>


<!-- add about us -->
<div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add About Us</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formData">
                <div class="modal-body">    
                    <div class="form-group">
                        <label for="description">Description</label>
                        <span type="button" class="float-right px-2 bg-success text-light preview"
                              data-name="about_us.png">Preview</span>
                        <textarea type="text" class="form-control" name="description" id="editor" placeholder="Enter Description" value=""> </textarea>
                            <span class="text-danger validate" data-field="description"></span>
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

<!-- edit about us -->
<div class="modal fade" id="editabout" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit About Us</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editData">
                <div class="modal-body">
                    <input type="hidden" id="id_e" name="edit_e">

                    <div class="form-group">
                        <label for="description">Description</label>
                        <span type="button" class="float-right px-2 bg-success text-light preview"
                              data-name="about_us.png">Preview</span>
                        <textarea type="text" class="form-control" name="description" id="editor_e" placeholder="Enter Description" value=""> </textarea>
                            <span class="text-danger validate_e" data-field="description"></span>

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

{{-- show Description  --}}
<div class="modal fade" id="showdes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Show Description</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
                <div class="modal-body">

                    <div class="form-group" >
                        <label for="description">Description</label>

                        <p id="description"></p>

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
@include('backend.includes.preview')
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
                  url: "{{ route('store-about-us') }}",
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
                $("#description").html($(this).data('description'));
            });

          $('.editData').click(function (e) {
                e.preventDefault();
                $('#editabout').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
                CKEDITOR.instances['editor_e'].setData($(this).data('description'));
            });

          $("#editData").submit(function (e) { 
                e.preventDefault();
                
                CKEDITOR.instances.editor_e.updateElement();
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-about-us') }}",
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





