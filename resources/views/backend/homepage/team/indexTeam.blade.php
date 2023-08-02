@extends('backend.layouts.master')

@section('title', 'Meet Team')

@section('section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Meat Team</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Meet Team</li>
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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addteam"><i
                                class="fas fa-plus"></i> Add Team Member</button>
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="search" placeholder="Search By Category Name">
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">Team Member Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 8%">Photo</th>
                                    <th scope="col" style="width: 15%">Name</th>
                                    <th scope="col" style="width: 15%">Designation</th>
                                    <th scope="col" style="width: 10%">Description</th>
                                    <th scope="col" style="width: 8%">Active Status</th>
                                    <th scope="col" style="width: 7%">Add Date</th>
                                    <th scope="col" style="width: 20%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $serials = ($members->currentpage() - 1) * $members->perpage() + 1;
                                @endphp 
                                @foreach($members as $member)
                                    <tr>
                                        <td>{{ $serials++ }}</td>
                                        <td> <img width="100px" src="{{ $member->photo }}" alt=""> </td>
                                        <td>{{ $member->name }}</td>
                                        <td>{{ $member->designation }}</td>
                                        <td>{{ $member->description }}</td>
                                        <td>
                                            <span
                                            class="badge badge-{{ $member->active_status == 0 ? 'danger': 'success' }}">{{ $member->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                        </td>
                                        <td>{{ $member->created_at->toFormateDate() }} $</td>
                                        <td>
                                            <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                <button type="button" data-id="{{ $member->id }}"
                                                    data-name="{{ $member->name }}"
                                                    data-designation="{{ $member->designation }}"
                                                    data-description="{{ $member->description }}"
                                                    data-active_status="{{ $member->active_status }}"
                                                    class="btn btn-success btn-sm edit_team  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-team',['id' => $member->id] ) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i>Delete</a>
                                                

                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                               
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            {{ $members->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- add member -->
        <div class="modal fade" id="addteam" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Add Team Member</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="formData">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="recipient-name" class="col-form-label">Name:</label>
                                <input type="text" class="form-control name" id="recipient-name" name="name"
                                    placeholder="Enter Member Name">
                                
                                    <span class="text-danger validate" data-field="name"></span>
                                
                            </div>
                            <div class="form-group">
                                <label for="photo" class="col-form-label">Photo:</label>
                                <input type="file" class="form-control photo" id="photo" name="photo">
                                    <span class="text-danger validate" data-field="photo"></span>
                            </div>
                            <div class="form-group">
                                <label for="designation" class="col-form-label">Designation:</label>
                                <input type="text" class="form-control designation" id="designation"
                                    name="designation" placeholder="Enter Member Designation">

                                    <span class="text-danger validate" data-field="designation"></span>

                            </div>
                            <div class="form-group">
                                <label for="description" class="col-form-label">Description:</label>
                                <textarea class="form-control description" id="description" name="description" placeholder="Enter Description"></textarea>

                                    <span class="text-danger validate" data-field="description"></span>

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

        <!-- edit member -->
        <div class="modal fade" id="editmodal" tabindex="-1" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">EDIT Team Member</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form id="updateTeam">
                        @csrf
                        <div class="modal-body">
                            <input type="hidden" id="id_e" name="edit_id">
                            <div class="form-group">
                                <label for="name_e" class="col-form-label">Name:</label>
                                <input type="text" class="form-control" id="name_e"  name="name" >

                                    <span class="text-danger validate_e" data-field="name"></span>

                            </div>
                            <div class="form-group">
                                <label for="photo_e" class="col-form-label">Photo:</label>
                                <input type="file" class="form-control" id="photo_e" name="photo">

                                    <span class="text-danger validate_e" data-field="photo"></span>

                            </div>
                            <div class="form-group">
                                <label for="designation_e" class="col-form-label">Designation:</label>
                                <input type="text" class="form-control " id="designation_e" name="designation"
                                    placeholder="Enter Member Designation ">
 
                                    <span class="text-danger validate_e" data-field="designation"></span>

                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">Description:</label>
                                <textarea class="form-control " id="description_e" name="description" ></textarea>

                                    <span class="text-danger validate_e" data-field="description"></span>

                            </div>
                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2 " name=" active_status" id="active_status_e"
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
                            <button type="submit" class="btn btn-primary">Update</button>
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

            // ADD DATA
            $("#formData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('store-team') }}",
                    contentType: false,
                    processData: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formdata,
                    success: function (response) {
                        if (response.success) {
                            toastr.success(response.success);
                            $("#addteam").modal('hide');
                            $("#addteam").find('input').val("");
                            $("#addteam").find('textarea').val("");
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

            $('.edit_team').click(function (e) {
                e.preventDefault();
                $('#editmodal').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#name_e').val($(this).data('name'));
                $('#designation_e').val($(this).data('designation'));
                $('#description_e').val($(this).data('description'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
            });

            // UPDATE DATA 
            $("#updateTeam").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#updateTeam")[0]);  
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-team') }}",
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
                            $("#editmodal").modal('hide');      
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
