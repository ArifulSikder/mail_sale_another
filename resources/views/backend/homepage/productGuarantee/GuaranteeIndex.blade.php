@extends('backend.layouts.master')

@section('title', 'Product Guarantee')

@section('section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Product Guarantee</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Product Guarantee</li>
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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addguarntee"><i
                                class="fas fa-plus"></i> Add Product Guarantee</button>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="search" placeholder="Search By Category Name">
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">Product Guarantee Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr >
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 10%">Logo Type</th>
                                    <th scope="col" style="width: 15%">Logo</th>
                                    <th scope="col" style="width: 15%">Title</th>
                                    <th scope="col" style="width: 25%">Short Description</th>
                                    <th scope="col" style="width: 10%">Active Status</th>
                                    <th scope="col" style="width: 10%">Add Date</th>
                                    <th scope="col" style="width: 10%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $serials = ($guarantees->currentpage() - 1) * $guarantees->perpage() + 1;
                                @endphp 
                                @foreach($guarantees as $guarantee)
                                    <tr >
                                        <td>{{ $serials++ }}</td>
                                        <td >
                                            @if ($guarantee->logo_type == 1)
                                                Fontawesome Icon
                                            @else
                                                Image 
                                            @endif
                                        </td>
                                        <td id="icon_size">
                                            @if ($guarantee->logo_type == 1)
                                                {!! $guarantee->logo !!}
                                            @else
                                                <img width="100px" src="{{ $guarantee->logo }}" alt=""> 
                                            @endif
                                        </td>
                                        <td>{{ $guarantee->title }}</td>
                                        <td>{{ $guarantee->short_description }}</td>
                                        <td>
                                            <span
                                            class="badge badge-{{ $guarantee->active_status == 0 ? 'danger': 'success' }}">{{ $guarantee->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                        </td>
                                        <td>{{ $guarantee->created_at->toFormateDate() }}</td>
                                        <td>
                                            <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                @if ($guarantee->active_status == 0)
                                                   <a href="{{ route('update-guarante-status', ['id' => $guarantee->id , 'status' => $guarantee->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-guarante-status', ['id' => $guarantee->id , 'status' => $guarantee->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif

                                                <button type="button" data-id="{{ $guarantee->id }}"
                                                    data-logo_type="{{ $guarantee->logo_type }}"
                                                    data-title="{{ $guarantee->title }}"
                                                    data-short_description="{{ $guarantee->short_description }}"
                                                    data-active_status="{{ $guarantee->active_status }}"
                                                    @if ($guarantee->logo_type == 1)
                                                        data-logo_icon ="{{ $guarantee->logo }}"
                                                    @endif
                                                    class="btn btn-success btn-sm edit_guarantee  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>
                                                

                                                <a href="{{ route('delete-guarantee',['id' => $guarantee->id] ) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                               
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            {{ $guarantees->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- add Product Guarantee -->
        <div class="modal fade" id="addguarntee" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Product Guarantee</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="formData">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="logo_type" class="col-form-label">Logo Type:</label>

                                <select class="form-control select2 logo_type" name="logo_type"
                                    id="logo_type" data-placeholder="Select Logo Type" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="0">Image</option>    
                                    <option value="1">Fontawesome Icon</option>
                                </select>
                                
                                    <span class="text-danger validate" data-field="logo_type"></span>
                                
                            </div>

                            <div class="form-group" id="image"  style='display:none;'>
                                <label for="image_logo" class="col-form-label">Logo As Image:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_logo.png">Preview</span>
                                <input type="file" class="form-control image_logo" id="image_logo" name="image_logo" >
                                    <span class="text-danger validate" data-field="image_logo"></span>
                            </div>
                            <div class="form-group" id="icon_div"  style='display:none;'>
                                <label for="icon_fw" class="col-form-label">Fontawesome Icon: <a href="https://fontawesome.com/v5/search?o=r&m=free" target="blank">Take icon from here!</a></label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_logo.png">Preview</span>
                                <input type="text" class="form-control" id="icon_fw" name="icon_fw" placeholder="Please Input The Icon Tag Here!">
                                    <span class="text-danger validate" data-field="icon_fw"></span>
                            </div>
                            <div id="setIcon">
                                
                            </div>
                            <div>
                                <img class="d-none" src="" id="previewLogo" width="200px" alt="">
                            </div>

                            <div class="form-group">
                                <label for="title" class="col-form-label">Title:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_title.png">Preview</span>
                                <input type="text" class="form-control title" id="title"
                                    name="title" placeholder="Enter Title">

                                    <span class="text-danger validate" data-field="title"></span>

                            </div>
                            <div class="form-group">
                                <label for="short_description" class="col-form-label">Short Description:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_des.png">Preview</span>
                                <textarea class="form-control short_description" id="editor" name="short_description" placeholder="Enter Short Description"></textarea>

                                    <span class="text-danger validate" data-field="short_description"></span>

                            </div>
                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2 active_status" name="active_status"
                                    id="active_status" data-placeholder="Select Active Status" style="width: 100%">
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

        <!-- edit Product Guarantee -->
        <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit  Product Guarantee</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="updateGuarantee">
                        <div class="modal-body">
                            <input type="hidden" id="id_e" name="id_e">
                            <div class="form-group">
                                <label for="logo_type" class="col-form-label">Logo Type:</label>
                                    
                                <select class="form-control select2 logo_type" name="logo_type"
                                    id="logo_type_e" data-placeholder="Select Logo Type" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="0">Image</option>    
                                    <option value="1">Fontawesome Icon</option>
                                </select>
                                
                                    <span class="text-danger validate_e" data-field="name"></span>
                                
                            </div>

                            <div class="form-group" id="image_e"  style='display:none;'>
                                <label for="image_logo" class="col-form-label">Logo As Image:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_logo.png">Preview</span>
                                <input type="file" class="form-control image_logo" id="image_logo_e" name="image_logo" >
                                    <span class="text-danger validate_e" data-field="image_logo"></span>
                            </div>
                            <div class="form-group" id="icon_div_e"  style='display:none;'>
                                <label for="icon_fw_e" class="col-form-label">Fontawesome Icon: <a href="https://fontawesome.com/v5/search?o=r&m=free" target="blank">Go to fontawesome and take icon</a></label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_logo.png">Preview</span>
                                <input type="text" class="form-control" id="icon_fw_e" name="icon_fw" placeholder="Please Input The Icon Tag Here!">
                                    <span class="text-danger validate_e" data-field="icon_fw"></span>
                            </div>
                            <div id="setIcon_e">
                                
                            </div>
                            <div>
                                <img class="d-none" src="" id="previewLogo_e" width="200px" alt="">
                            </div>

                            <div class="form-group">
                                <label for="title" class="col-form-label">Title:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_title.png">Preview</span>
                                <input type="text" class="form-control title" id="title_e"
                                    name="title" placeholder="Enter Title">

                                    <span class="text-danger validate_e" data-field="title"></span>

                            </div>
                            <div class="form-group">
                                <label for="short_description" class="col-form-label">Short Description:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="guarantee_des.png">Preview</span>
                                <textarea class="form-control short_description ckeditor_e" id="editor_e" name="short_description" placeholder="Enter Short Description" ></textarea>

                                    <span class="text-danger validate_e" data-field="short_description"></span>

                            </div>
                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2 active_status" name="active_status"
                                    id="active_status_e" data-placeholder="Select Active Status" style="width: 100%">
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

    </div>
@endsection

@section('script')
    @include('backend.includes.preview')
    
    <script>
        
        $(document).ready(function () {

            // Logo preview
            $("#image_logo").change(function() {
                pleasePreview(this, 'previewLogo');
            });

            $("#image_logo_e").change(function() {
                pleasePreview(this, 'previewLogo_e');
            });
            // ADD DATA
            $("#formData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('store-guarantee') }}",
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

            $('.edit_guarantee').click(function (e) {
                e.preventDefault();
                $('#editmodal').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#logo_type_e').val($(this).data('logo_type')).trigger('change');
                $('#title_e').val($(this).data('title'));
                $('#icon_fw_e').val($(this).data('logo_icon'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
                $('#editor_e').val($(this).data('short_description'));
            });

            // UPDATE DATA 
            $("#updateGuarantee").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#updateGuarantee")[0]);  
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-guarantee') }}",
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

            // ICON OR IMAGE ON CHANGE SELECT 
            $('#logo_type').on('change', function() {
                if ( this.value == '0')
                {
                    $("#image").show();
                }
                else
                {
                    $("#image").hide();
                    $("#image_logo").val("");
                    $("#previewLogo").removeAttr("src");
                    $("#previewLogo").addClass("d-none");

                }
                
                if ( this.value == '1')
                {
                    $("#icon_div").show();
                    $("#icon_fw").keyup(function () {
                        var str = $(this).val();
                            $("#setIcon").html(str);
                            $("#setIcon").removeClass("d-none");
                            $("#setIcon i").addClass("fa-2x border p-3");
                    });
                }
                else
                {
                    $("#icon_div").hide();
                    $("#setIcon").addClass("d-none");
                    $("#icon_fw").val('');   
                }


                
            });

            $('#logo_type_e').on('change', function() {
                if ( this.value == '0')
                {
                    $("#image_e").show();
                }
                else
                {
                    $("#image_e").hide();
                    $("#image_logo_e").val("");
                    $("#previewLogo_e").removeAttr("src");
                    $("#previewLogo_e").addClass("d-none");

                }
                
                if ( this.value == '1')
                {
                    $("#icon_div_e").show();
                    $("#icon_fw_e").keyup(function () {
                        var str = $(this).val();
                            $("#setIcon_e").html(str);
                            $("#setIcon_e").removeClass("d-none");
                            $("#setIcon_e i").addClass("fa-2x border p-3");
                    });
                }
                else
                {
                    $("#icon_div_e").hide();
                    $("#setIcon_e").addClass("d-none");
                    $("#icon_fw_e").val('');   
                }


                
            });

        // icon size 
        $("#icon_size i").addClass("fa-2x border p-3");
                    

        });
        
    </script>

@endsection
