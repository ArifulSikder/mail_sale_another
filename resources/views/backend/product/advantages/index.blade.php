@extends('backend.layouts.master')

@section('title', 'Advantages')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Product Advantages</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">{{ $product->name }}</li>
                        <li class="breadcrumb-item active">Product Advantages</li>
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
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header">Products Table</div>
                        <div class="card-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col" style="width: 5%">Serial</th>
                                        <th scope="col" style="width: 45%">Advantage Title</th>
                                        <th scope="col" style="width: 15%">Active Status</th>
                                        <th scope="col" style="width: 15%">Add Date</th>
                                        <th scope="col" style="width: 10%">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $serials = ($advantages->currentpage() - 1) * $advantages->perpage() + 1;
                                    @endphp
                                    @foreach($advantages as $advantage)
                                        <tr>
                                            <th scope="row">{{ $serials++ }}</th>
                                            <td>{{ $advantage->title }}</td>
                                            <td><span
                                                    class="badge badge-{{ $advantage->active_status == 0 ? 'danger': 'success' }}">{{ $advantage->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                            </td>
                                            <td>{{ $advantage->created_at->toFormateDate() }}</td>
                                            <td>
                                                <button type="button" class="btn btn-primary btn-sm btn-block editBtn" 
                                                data-id="{{ $advantage->id }}"
                                                data-title="{{ $advantage->title }}"
                                                data-active_status="{{ $advantage->active_status }}"
                                                data-toggle="modal" 
                                                data-target="#editForm">
                                                <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ url('delete-product-advantage/'. $advantage->id) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i>Delete</a>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <div class="float-right my-2">
                                {{ $advantages->links() }}
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <form action="{{ route('store-product-advantage') }}" method="POST">
                        @csrf
                        <input type="hidden" name="product_id" value="{{ $product->id }}">
                        <div class="card">
                            <div class="card-header">
                                <h3>Add Advantage</h3>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="title">Title</label>
                                    <input type="text" class="form-control" name="title" id="title"
                                        placeholder="Enter Product Advantage" value="{{ old('title') }}">
                                    @error('title')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
    
    
                                <div class="form-group">
                                    <label for="active_status">Active Status</label>
                                    <select class="form-control select2" name="active_status" id="active_status"
                                        data-placeholder="Select Active Status" style="width: 100%">
                                        <option selected>Choose Type</option>
                                        <option value="0">Inactive</option>
                                        <option value="1">Active</option>
                                    </select>
                                    @error('active_status')
                                        <span class="text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary"><i class="fas fa-share-square"></i> Save</button>
                            </div>
                        </div>
    
                    </form>
                   
                </div>
            </div>
        </div>
    </section>

</div>

  <!-- Modal -->
  <div class="modal fade" id="editForm" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Product Advantage Edit</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <form id="editData">

            <input type="hidden" name="product_id" value="{{ $product->id }}">
            <input type="hidden" name="id" id="id_e">
            <div class="card">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="title_e">Title</label>
                        <input type="text" class="form-control" name="title" id="title_e"
                            placeholder="Enter Product Advantage" value="{{ old('title') }}">
                        
                        <span class="text-danger" id="msg_title"></span>
                     
                    </div>


                    <div class="form-group">
                        <label for="active_status_e">Active Status</label>
                        <select class="form-control select2" name="active_status" id="active_status_e"
                            data-placeholder="Select Active Status" style="width: 100%">
                            <option selected>Choose Type</option>
                            <option value="0">Inactive</option>
                            <option value="1">Active</option>
                        </select>
                     
                        <span class="text-danger" id="msg_active_status"></span>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary"><i class="fas fa-share-square"></i> Save</button>
                </div>
            </div>

        </form>
      </div>
    </div>
  </div>


@endsection

@section('script')
  <script>
    $(document).ready(function () {
        $(".editBtn").click(function (e) { 
            e.preventDefault();
            
            $('#msg_title').text('');
            $('#msg_active_status').text('');

            $('#id_e').val($(this).data('id'))
            $('#title_e').val($(this).data('title'))
            $('#active_status_e').val($(this).data('active_status')).trigger('change');

        });
        $("form#editData").submit(function (e) {
            e.preventDefault();
            var formData = new FormData($("#editData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('update-product-advantage') }}",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Product Advantage Updated Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {
                    $('#msg_title').text('');
                    $('#msg_active_status').text('');


                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'title') {
                            $('#msg_title').text(error);
                            toastr.error(error)
                        } else if (field_name == 'active_status') {
                            $('#msg_active_status').text(error);
                            toastr.error(error)
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
