@extends('backend.layouts.master')

@section('title', 'Dashboard')

@section('section')
<div class="content-wrapper" x-data="{category:  null }">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">FAQ Category</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">FAQ Category</li>
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
                        <i class="fas fa-plus"></i> Add FAQ Category
                    </button>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="card">
                <div class="card-header">Categories Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">Serial</th>
                                <th scope="col">Category Title</th>
                                <th scope="col">Category Logo</th>
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
                                    <td>{{ $category->category_title }}</td>
                                    <td><img style="width: 60px" src="{{ $category->category_logo }}" alt=""></td>
                                    <td><span
                                            class="badge badge-{{ $category->active_status == 0 ? 'danger': 'success' }}">{{ $category->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $category->created_at->toFormateDate() }}</td>
                                    <td>

                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                @if ($category->active_status == 0)
                                                   <a href="{{ route('update-faq-status', ['id' => $category->id , 'status' => $category->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-faq-status', ['id' => $category->id , 'status' => $category->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif
                                                <button type="button" data-id="{{ $category->id }}"
                                                    data-title="{{ $category->category_title }}"
                                                    data-short_description="{{ $category->category_logo }}"
                                                    data-active_status="{{ $category->active_status }}"
                                                    class="btn btn-success btn-sm editfaq  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-faq-category',['id' => $category->id] ) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>

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



    <!-- add -->
    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add FAQ Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="category_title">Category Title</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_cat_title.png">Preview</span>
                            <input type="text" class="form-control" name="category_title" id="category_title"
                                placeholder="Enter Category Title" >

                                <span class="text-danger validate" data-field="category_title"></span>
                        </div>
                        <div class="form-group">
                            <label for="category_logo" class="col-form-label">Category Logo:</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_logo.png">Preview</span>
                            <input type="file" class="form-control photo" id="category_logo" name="category_logo">

                                <span class="text-danger validate" data-field="category_logo"></span>
                        </div>

                        <div>
                            <img class="d-none" src="" id="preview_cat_logo" width="200px" alt="">
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
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- edit -->
    <div class="modal fade" id="editdata" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit FAQ Category</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="updateData">
                    <div class="modal-body">
                        <input type="hidden" id="id_e" name="edit_id">
                        <div class="form-group">
                            <label for="category_title">Category Title</label>
                            <input type="text" class="form-control" name="category_title" id="category_title_e"
                                placeholder="Enter Category Title" >
                                <span class="text-danger validate_e" data-field="category_title"></span>
                        </div>
                        <div class="form-group">
                            <label for="category_logo" class="col-form-label">Category Logo:</label>
                            <input type="file" class="form-control photo" id="category_logo_e" name="category_logo">
                                <span class="text-danger validate_e" data-field="category_logo"></span>
                        </div>

                        <div>
                            <img class="d-none" src="" id="preview_cat_logo_e" width="200px" alt="">
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
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection

@section('script')
@include('backend.includes.preview')
<script>

    $(document).ready(function () {
        //Category Logo Preview
        $("#category_logo").change(function() {
            pleasePreview(this, 'preview_cat_logo');
        });
        $("#category_logo_e").change(function() {
            pleasePreview(this, 'preview_cat_logo_e');
        });

        //add form
        $("#formData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#formData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('store-faq-category') }}",
                // dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
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

        
        $('.editfaq').click(function (e) {
            e.preventDefault();
            $('#editdata').modal('show');
            $('#id_e').val($(this).data('id'));
            $('#category_title_e').val($(this).data('title'));
            $('#active_status_e').val($(this).data('active_status')).trigger('change');
        });

        // UPDATE DATA 
        $("#updateData").submit(function (e) { 
            e.preventDefault();
            var formdata = new FormData($("#updateData")[0]);  
            $.ajax({
                type: "POST",
                url: "{{ route('update-faq-category') }}",
                contentType: false,
                processData: false,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                data: formdata,
                success: function (response) {
                    console.log(response);
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
