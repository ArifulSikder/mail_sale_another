@extends('backend.layouts.master')

@section('title', 'Dashboard')

@section('section')
<div class="content-wrapper" x-data="{category:  null }">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Category</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Category</li>
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
                        <i class="fas fa-plus"></i> Add Category
                    </button>
                </div>
                <form action="">
                    <div class="form-group d-flex">
                        <input class="form-control" type="search" placeholder="Search By Coupon Name" name="search" value="{{ $search }}">
                        <button class="btn btn-info btn-sm ml-2">Search</button>
                    </div>
                </form> 
            </div>
            <div class="card">
                <div class="card-header">Categories Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Serial</th>
                                <th scope="col">Category Name</th>
                                {{-- <th scope="col">Slug</th> --}}
                                <th scope="col">Active Status</th>
                                <th scope="col">Register Date</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($categories->currentpage() - 1) * $categories->perpage() + 1;
                            @endphp
                            @foreach($categories as $category)
                                <tr>
                                    <th scope="row">{{ $serials++ }}</th>
                                    <td>{{ $category->name }}</td>
                                    {{-- <td>{{ $category->slug }}</td> --}}
                                    <td><span
                                            class="badge badge-{{ $category->active_status == 0 ? 'danger': 'success' }}">{{ $category->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $category->created_at->toFormateDate() }}</td>
                                    <td>

                                        <button type="button" data-toggle="modal" data-target="#editNew"
                                            data-id="{{ $category->id }}"
                                            data-name="{{ $category->name }}"
                                            data-status="{{ $category->active_status }}"
                                            class="btn btn-success btn-sm editData">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                        <a href="{{ url('delete-category/'. $category->id) }}"
                                            id="delete" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>

                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $categories->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>



    <!-- Modal -->
    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name">Category Name</label>
                            <input type="text" class="form-control" name="name" id="name"
                                placeholder="Enter Category Name" value="{{ old('name') }}">

                            <span class="text-danger" id="errors_name"></span>
                        </div>

                        <div class="form-group">
                            <label for="active_status">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option value="">Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>
                            <span class="text-danger" id="errors_status"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- edit -->
    <div class="modal fade" id="editNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>

                <form id="editData">
                    <input type="hidden" name="id" id="id_e">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="name1">Category Name</label>
                            <input type="text" class="form-control" name="name" id="name_e"
                                placeholder="Enter Category Name" value="">

                            <span class="text-danger" id="errors_name_e"></span>
                        </div>

                        <div class="form-group">
                            <label for="active_status1">Active Status</label>
                            <select class="form-control select2" name="active_status" id="active_status_e"
                                data-placeholder="Select Active Status" style="width: 100%">
                                <option value="">Choose Type</option>
                                <option value="0">Inactive</option>
                                <option value="1">Active</option>
                            </select>
                            <span class="text-danger" id="errors_status_e"></span>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection

@section('script')
<script>
    $(document).ready(function () {
        $(".editData").click(function (e) {
            e.preventDefault();

            $('#errors_name_e').text('');
            $('#errors_status_e').text('');

            $("#id_e").val($(this).data('id'));
            $("#name_e").val($(this).data('name'));
            $("#active_status_e").val($(this).data('status')).trigger('change');
        });

        $('.addnew').click(function (e) {
            e.preventDefault();
            $('#errors_name').text('');
            $('#errors_status').text('');
        });



        //add form
        $("form#formData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#formData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('store-category') }}",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Category Added Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {
                    $('#errors_name').text('');
                    $('#errors_status').text('');

                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'name') {
                            $('#errors_name').text(error);
                            toastr.error(error)
                        } else if (field_name == 'active_status') {
                            $('#errors_status').text(error);
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


        //edit form
        $("form#editData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#editData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('update-category') }}",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Category Updated Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {
                    $('#errors_name_e').text('');
                    $('#errors_status_e').text('');

                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'name') {
                            $('#errors_name_e').text(error);
                            toastr.error(error)
                        } else if (field_name == 'active_status') {
                            $('#errors_status_e').text(error);
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
