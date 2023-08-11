@extends('backend.layouts.master')

@section('title', 'Dashboard')

@section('section')
<div class="content-wrapper" x-data="{category:  null }">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">{{ $category->category_title }}</h1>

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
            
            <div class="row">
                <div class="col-12" id="accordion">

                            @forelse ($faqs as $faq)
                                <div class="card card-primary card-outline">
                                    <div class="card-header row" >
                                        <div class="col-6">
                                            <h4 class="card-title w-100 text-primary">
                                                <a class="" data-toggle="collapse" href="#{{str_replace(' ', '_', $faq->faqCategory->category_title)}}{{ $faq->id }}">{{ $loop->iteration }}. {{ $faq->question }}</a>
                                            </h4>
                                        </div>
                                        <div class="col-6 ">
                                            <div class="row text-center">
                                                <div class="col-4"></div>
                                                <div class="col-2">
                                                    <button type="button" data-id="{{ $faq->id }}"
                                                        data-question="{{ $faq->question }}"
                                                        data-answer="{{ $faq->answer }}"
                                                        data-active_status="{{ $faq->active_status }}"
                                                        class="btn btn-success btn-sm edit_ques">
                                                        <i class="fas fa-edit"></i>
                                                    </button>
                                                </div>
                                                <div class="col-2">
                                                    <a href="{{ route('delete-faq-question', ['id' => $faq->id]) }}"
                                                        id="delete" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                                                </div>
                                                <div class="col-2">
                                                   @if ($faq->active_status == 0)
                                                        <a href="{{ route('update-question-status', ['id' => $faq->id , 'status' => $faq->active_status ]) }}" class=""><span class="badge badge-danger">Inactivated</span></a> 
                                                    @else
                                                        <a href="{{ route('update-question-status', ['id' => $faq->id , 'status' => $faq->active_status ]) }}"><span class="badge badge-success">Activated</span></a>
                                                        
                                                    @endif
                                                </div>
                                                <div class="col-2">
                                                    <a class="" data-toggle="collapse" href="#{{str_replace(' ', '_', $faq->faqCategory->category_title)}}{{ $faq->id }}"><i class="fas fa-chevron-down"></i></a>
                                                </div>
                                                
                                            </div>
                                        </div>
                                        
                                        
                                        
                                    </div>
                                    
                                    <div id="{{str_replace(' ', '_', $faq->faqCategory->category_title)}}{{ $faq->id }}" class="collapse" data-parent="#accordion">
                                        <div class="card-body">
                                            {{ $faq->answer }}
                                        </div>
                                    </div>
                                </div>
                            @empty
                                <div class="card text-white bg-danger" >
                                    <div class="card-header">
                                         <p class="text-center m-0">No Question Added Yet</p>
                                    </div>
                                </div>
                            @endforelse
                    </div>
                    
            </div>

            
            
        </div>
    </section>



    <!-- add -->
    <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
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
                            <select  class="form-control select2" name="category_id" id="category_id"
                                data-placeholder="Select Category Title" style="width: 100%">
                                <option value="">Select Category Title</option>
                                <option selected  value="{{ $category->id }}">{{ $category->category_title }}</option>
                            </select>
                            <span class="text-danger validate" data-field="category_id"></span>
                        </div>
                        <div class="form-group">
                            <label for="question">Question</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_ques.png">Preview</span>
                            <textarea class="form-control" name="question" id="editor" cols="30" rows="3" placeholder="Enter Question?"></textarea>
                                <span class="text-danger validate" data-field="question"></span>
                        </div>
                        <div class="form-group">
                            <label for="answer">Answer</label>
                            <span type="button" class="bg-success text-light px-2 float-right preview"
                                data-name="faq_ans.png">Preview</span>
                            <textarea class="form-control" name="answer" id="editor_e" cols="30" rows="3" placeholder="Enter Answer"></textarea>
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
        <div class="modal-dialog modal-lg" role="document">
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
                            <label for="category_id_e">Category Title</label>
                            <select class="form-control select2" name="category_id" id="category_id_e"
                                data-placeholder="Select Category Title" style="width: 100%">
                                <option value="">Select Category Title</option>
                                <option  value="{{ $category->id }}" selected>{{ $category->category_title }}</option>
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

        
        $('.edit_ques').click(function (e) {
            e.preventDefault();
            $('#editdata').modal('show');
            $('#id_e').val($(this).data('id'));
            $('#question_e').val($(this).data('question'));
            $('#answer_e').val($(this).data('answer'));
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
