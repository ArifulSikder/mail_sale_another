@extends('backend.layouts.master')

@section('title', 'Dashboard')

@section('section')
<div class="content-wrapper" x-data="{category:  null }">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">FAQ Question</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">FAQ Question</li>
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
                        <i class="fas fa-plus"></i> Add FAQ Question
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
                                <th scope="col">Questions</th>
                                <th scope="col">Answers</th>
                                <th scope="col">Active Status</th>
                                <th scope="col">Register Date</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($faqs->currentpage() - 1) * $faqs->perpage() + 1;
                            @endphp
                            @foreach($faqs as $faq)
                                <tr>
                                    <th scope="row">{{ $serials++ }}</th>
                                    <td>{{ $faq->faqCategory->category_title }}</td>
                                    <td>{{ $faq->question }}</td>
                                    <td>{{ $faq->answer }}</td>
                                    <td><span
                                            class="badge badge-{{ $faq->active_status == 0 ? 'danger': 'success' }}">{{ $faq->active_status == 0 ? 'Inactive': 'Active' }}</span>
                                    </td>
                                    <td>{{ $faq->created_at->toFormateDate() }}</td>
                                    <td>

                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="dropdown-menu text-center bg-light-blue">
                                                @if ($faq->active_status == 0)
                                                   <a href="{{ route('update-question-status', ['id' => $faq->id , 'status' => $faq->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-question-status', ['id' => $faq->id , 'status' => $faq->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif
                                                <button type="button" data-id="{{ $faq->id }}"
                                                    data-category_id="{{ $faq->category_id }}"
                                                    data-category_title="{{ $faq->category_title }}"
                                                    data-question="{{ $faq->question }}"
                                                    data-answer="{{ $faq->answer }}"
                                                    data-active_status="{{ $faq->active_status }}"
                                                    class="btn btn-success btn-sm editfaq  btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-faq-question',['id' => $faq->id] ) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>

                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $faqs->links() }}
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
                            <label for="category_id">Category Title</label>
                            <select class="form-control select2" name="category_id" id="category_id"
                                data-placeholder="Select Category Title" style="width: 100%">
                                <option value="">Select Category Title</option>
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->category_title }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger validate" data-field="category_id"></span>
                        </div>
                        <div class="form-group">
                            <label for="question">Question</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_ques.png">Preview</span>
                            <textarea class="form-control" name="question" id="question" cols="30" rows="3" placeholder="Enter Question?"></textarea>
                                <span class="text-danger validate" data-field="question"></span>
                        </div>
                        <div class="form-group">
                            <label for="answer">Answer</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_ans.png">Preview</span>
                            <textarea class="form-control" name="answer" id="answer" cols="30" rows="3" placeholder="Enter Answer"></textarea>
                                <span class="text-danger validate" data-field="answer"></span>
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
                    <h5 class="modal-title" id="exampleModalLabel">Edit FAQ Question</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="updateData">
                    <div class="modal-body">
                        <input type="hidden" id="id_e" name="edit_id">
                        <div class="form-group">
                            <label for="category_id">Category Title</label>
                            <select class="form-control select2" name="category_id" id="category_id_e"
                                data-placeholder="Select Category Title" style="width: 100%">
                                <option value="">Select Category Title</option>
                                @foreach($categories as $category)
                                    <option value="{{ $category->id }}">{{ $category->category_title }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger validate_e" data-field="category_id"></span>
                        </div>
                        <div class="form-group">
                            <label for="question">Question</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_ques.png">Preview</span>
                            <textarea class="form-control" name="question" id="question_e" cols="30" rows="3" placeholder="Enter Question?"></textarea>
                                <span class="text-danger validate_e" data-field="question"></span>
                        </div>
                        <div class="form-group">
                            <label for="answer">Answer</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_ans.png">Preview</span>
                            <textarea class="form-control" name="answer" id="answer_e" cols="30" rows="3" placeholder="Enter Answer"></textarea>
                                <span class="text-danger validate_e" data-field="answer"></span>
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

        //add form
        $("#formData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#formData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('store-faq-question') }}",
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
            $('#question_e').val($(this).data('question'));
            $('#answer_e').val($(this).data('answer'));
            $('#category_id_e').val($(this).data('category_id')).trigger('change');
            $('#active_status_e').val($(this).data('active_status')).trigger('change');
        });

        // UPDATE DATA 
        $("#updateData").submit(function (e) { 
            e.preventDefault();
            var formdata = new FormData($("#updateData")[0]);  
            $.ajax({
                type: "POST",
                url: "{{ route('update-faq-question') }}",
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
