@extends('backend.layouts.master')

@section('title', 'Product')

@section('section')
<style>
    .ck-editor__editable {
    min-height: 400px !important;
}
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Product Details ({{ $product->name }})</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">{{ $product->name }}</li>
                        <li class="breadcrumb-item active">Product Details</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="d-flex justify-content-between my-1">
                <div>
                    <button type="button" class="btn btn-success addnew" data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Add Details
                    </button>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>

            <div class="card">
                <div class="card-header">Products Details</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 40%">Content</th>
                                <th scope="col" style="width: 8%">Active Status</th>
                                <th scope="col" style="width: 10%">Add Date</th>
                                <th scope="col" style="width: 10%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($productDetails->currentpage() - 1) * $productDetails->perpage() +
                                1;
                            @endphp
                            @foreach($productDetails as $detail)
                                <tr>
                                    <th scope="row">{{ $serials++ }}</th>
                                    <td>{!! Str::words($detail->content, 20, '....')  !!}
                                        @if (Str::of($detail->content)->wordCount() > 20)
                                           <a  class="editdes" style="cursor: pointer;" data-description="{{ $detail ->content }}">
                                               See More
                                           </a>
                                       @endif
                                    </td>
                                    <td>
                                        <span
                                            class="badge badge-{{ $detail->active_status == 0 ? 'danger': 'success' }}">{{ $detail->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $detail->created_at->toFormateDate() }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">

                                                <a data-toggle="modal" data-target="#editNew"
                                                    class="btn btn-info btn-sm btn-block editDetail"
                                                    
                                                    data-id="{{ $detail->id }}"
                                                    data-content="{{ $detail->content }}"
                                                    data-active_status="{{ $detail->active_status }}"> <i class="fas fa-edit"></i> Edit</a>

                                                <a href="{{ url('delete-details/'. $detail->id) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>

                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $productDetails->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</section>

<div class="modal fade" id="addNew">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Add Details Form</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="formData">
            <input type="hidden" name="product_id" value="{{ $product->id }}">
            <div class="modal-body">
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

                <div class="form-group">
                    <label for="content">Product Details</label>
                    <textarea type="text" class="form-control" name="content" id="editor" placeholder="Enter Details" > </textarea>
                    <span class="text-danger validate" data-field="content"></span>

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
  <!-- /.modal -->
{{-- edit form  --}}
  <div class="modal fade" id="editNew">
    <div class="modal-dialog modal-xl">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Edit Details Form</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="editData">
            <input type="hidden" name="id" id="id_e">
            <input type="hidden" name="product_id" value="{{ $product->id }}">
            <div class="modal-body">
                <div class="form-group">
                    <label for="active_status_e">Active Status</label>
                    <select class="form-control select2" name="active_status" id="active_status_e"
                        data-placeholder="Select Active Status" style="width: 100%">
                        <option value="">Choose Type</option>
                        <option value="0">Inactive</option>
                        <option value="1">Active</option>
                    </select>
                    <span class="text-danger validate_e" data-field="active_status"></span>

                </div>

                <div class="form-group">
                    <label for="content_e">Content</label>
                    <<textarea type="text" class="form-control" name="content" id="editor_e" placeholder="Enter Description" > </textarea>
                    <span class="text-danger validate_e" data-field="content"></span>

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Save</button>
            </div>
        </form>
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
  <!-- /.modal -->


  
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
@include('backend.includes.preview')
@include('components.ckeditor')
@section('script')
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
                  url: "{{ route('add-product-details') }}",
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

          $('.editDetail').click(function (e) {
                e.preventDefault();
                $('#id_e').val($(this).data('id'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
                CKEDITOR.instances['editor_e'].setData($(this).data('content'));
          });

          $("#editData").submit(function (e) { 
                e.preventDefault();
                
                CKEDITOR.instances.editor_e.updateElement();
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-product-details') }}",
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
