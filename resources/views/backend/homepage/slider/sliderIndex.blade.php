@extends('backend.layouts.master')

@section('title', 'Meet Team')

@section('section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Add New Slider</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Slider</li>
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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addslider"><i
                                class="fas fa-plus"></i> Add New Slider</button>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="search" placeholder="Search By Category Name">
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">Slider Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 10%">Background Photo</th>
                                    <th scope="col" style="width: 10%">Title</th>
                                    <th scope="col" style="width: 25%">Short Description</th>
                                    <th scope="col" style="width: 10%">Photo Alt</th>
                                    <th scope="col" style="width: 10%">Subcategory</th>
                                    <th scope="col" style="width: 10%">Active Status</th>
                                    <th scope="col" style="width: 10%">Add Date</th>
                                    <th scope="col" style="width: 10%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $serials = ($sliders->currentpage() - 1) * $sliders->perpage() + 1;
                                @endphp 
                                @foreach($sliders as $slider)
                                    <tr>
                                        <td>{{ $serials++ }}</td>
                                        <td> <img width="100px" src="{{ $slider->background_photo }}" alt=""> </td>
                                        <td>{{ $slider->title }}</td>
                                        <td>{{ $slider->short_description }}</td>
                                        <td>{{ $slider->photo_alt }}</td>
                                        <td>{{ $slider->category->name }}</td>
                                        <td>
                                            <span
                                            class="badge badge-{{ $slider->active_status == 0 ? 'danger': 'success' }}">{{ $slider->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                        </td>
                                        <td>{{ $slider->created_at->toFormateDate() }}</td>
                                        <td>
                                            <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                @if ($slider->active_status == 0)
                                                   <a href="{{ route('update-slider-status', ['id' => $slider->id , 'status' => $slider->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-slider-status', ['id' => $slider->id , 'status' => $slider->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif
                                                <button type="button" data-id="{{ $slider->id }}"
                                                    data-title="{{ $slider->title }}"
                                                    data-short_description="{{ $slider->short_description }}"
                                                    data-photo_alt="{{ $slider->photo_alt }}"
                                                    data-subcategory_id="{{ $slider->subcategory_id }}"
                                                    data-active_status="{{ $slider->active_status }}"
                                                    class="btn btn-success btn-sm editslider  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-slider',['id' => $slider->id] ) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                               
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            {{ $sliders->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- add slider -->
        <div class="modal fade" id="addslider" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add New Slider</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="formData">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="title" class="col-form-label">Title:</label>
    
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_title.png">Preview</span>

                                <input type="text" class="form-control title" id="title" name="title"
                                    placeholder="Enter Title">
                                
                                    <span class="text-danger validate" data-field="title"></span>
                            </div>

                            <div class="form-group">
                                <label for="subcategory_id">Subcategory Name</label>
                                <select class="form-control select2 subcategory" name="subcategory_id" id="subcategory_id"
                                    style="width: 100%" data-placeholder="Select Category">
                                    <option value="" selected>Select Subcategory</option>
                                    @foreach($subcategories as $sub)
                                        <option value="{{ $sub->id }}">{{ $sub->name }}</option>
                                    @endforeach
                                </select>
                                <span class="text-danger validate"  data-field="subcategory_id"></span>
                            </div>

                            <div class="form-group">
                                <label for="background_photo" class="col-form-label">Background Photo:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_bg.png">Preview</span>
                                <input type="file" class="form-control photo" id="background_photo" name="background_photo">

                                    <span class="text-danger validate" data-field="background_photo"></span>
                            </div>
                            <div>
                                <img class="d-none" src="" id="previewBackground_photo" width="200px" alt="">
                            </div>

                            <div class="form-group">
                                <label for="short_description" class="col-form-label">Short Description:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_des.png">Preview</span>
                                <textarea class="form-control short_description" id="short_description" name="short_description" placeholder="Enter The Short Description"></textarea>

                                    <span class="text-danger validate" data-field="short_description"></span>
                            </div>

                            

                            <div class="form-group">
                                <label for="photo_alt" class="col-form-label">Photo Alternative:</label>
                                <input type="text" class="form-control photo_alt" id="photo_alt"
                                    name="photo_alt" placeholder="Enter Photo Alternative">

                                    <span class="text-danger validate" data-field="photo_alt"></span>
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

        <!-- edit slider -->
        <div class="modal fade" id="editslider" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Slider</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="updateSlider">
                        <div class="modal-body">
                            <input type="hidden" id="id_e" name="edit_id">
                            <div class="form-group">
                                <label for="title" class="col-form-label">Title:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_title.png">Preview</span>
                                <input type="text" class="form-control title" id="title_e" name="title"
                                    placeholder="Enter Title">
                                
                                    <span class="text-danger validate_e" data-field="title"></span>
                            </div>

                            <div class="form-group">
                                <label for="subcategory_id">Subcategory Name</label>
                                <select class="form-control select2 subcategory" name="subcategory_id" id="subcategory_id_e"
                                    style="width: 100%" data-placeholder="Select Category">
                                    <option value="" selected>Select Subcategory</option>
                                    @foreach($subcategories as $sub)
                                        <option value="{{ $sub->id }}">{{ $sub->name }}</option>
                                    @endforeach
                                </select>
                                <span class="text-danger validate_e"  data-field="subcategory_id"></span>
                            </div>

                            <div class="form-group">
                                <label for="background_photo" class="col-form-label">Background Photo:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_bg.png">Preview</span>
                                <input type="file" class="form-control photo" id="background_photo_e" name="background_photo">

                                    <span class="text-danger validate_e" data-field="background_photo"></span>
                            </div>
                            
                            <div>
                                <img class="d-none" src="" id="previewBackground_photo_e" width="200px" alt="">
                            </div>

                            <div class="form-group">
                                <label for="short_description" class="col-form-label">Short Description:</label>
                                <span type="button" class="bg-success text-light px-2 float-right preview"
                                    data-name="slider_des.png">Preview</span>
                                <textarea class="form-control short_description" id="short_description_e" name="short_description" placeholder="Enter The Short Description"></textarea>

                                    <span class="text-danger validate_e" data-field="short_description"></span>
                            </div>

                            


                            <div class="form-group">
                                <label for="photo_alt" class="col-form-label">Photo Alternative:</label>
                                <input type="text" class="form-control photo_alt" id="photo_alt_e"
                                    name="photo_alt" placeholder="Enter Photo Alternative">

                                    <span class="text-danger validate_e" data-field="photo_alt"></span>
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
            //backgorund photo preview
            $("#background_photo").change(function() {
                pleasePreview(this, 'previewBackground_photo');
            });

            $("#background_photo_e").change(function() {
                pleasePreview(this, 'previewBackground_photo_e');
            });

            // ADD DATA
            $("#formData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('store-slider') }}",
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

            $('.editslider').click(function (e) {
                e.preventDefault();
                $('#editslider').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#title_e').val($(this).data('title'));
                $('#subcategory_id_e').val($(this).data('subcategory_id')).trigger('change');
                $('#short_description_e').val($(this).data('short_description'));
                $('#photo_alt_e').val($(this).data('photo_alt'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
            });

            // UPDATE DATA 
            $("#updateSlider").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#updateSlider")[0]);  
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-slider') }}",
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
