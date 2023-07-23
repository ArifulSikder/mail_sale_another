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
                    <h1 class="m-0">Product Description</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">{{ $product->name }}</li>
                        <li class="breadcrumb-item active">Product Description</li>
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
                        <i class="fas fa-plus"></i> Add Description
                    </button>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>

            <div class="card">
                <div class="card-header">Products Description</div>
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
                                $serials = ($productDescriptions->currentpage() - 1) * $productDescriptions->perpage() +
                                1;
                            @endphp
                            @foreach($productDescriptions as $detail)
                                <tr>
                                    <th scope="row">{{ $serials++ }}</th>
                                    <td>{!! Str::limit( $detail->content, 500) !!}</td>
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

                                                <a href="{{ url('delete-Description/'. $detail->id) }}"
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
                        {{ $productDescriptions->links() }}
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
          <h4 class="modal-title">Add Description Form</h4>
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
                    <span class="text-danger" id="errors_status"></span>
                </div>

                <div class="form-group">
                    <label for="content">Content</label>
                    <textarea class="myEditor"  name="content" id="content" cols="30" rows="10"></textarea>
                    <span class="text-danger" id="errors_content"></span>
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
          <h4 class="modal-title">Edit Description Form</h4>
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
                    <span class="text-danger" id="errors_status_e"></span>
                </div>

                <div class="form-group">
                    <label for="content_e">Content</label>
                    <textarea class="myEditor_e"  name="content" id="content_e" cols="30" rows="10"></textarea>
                    <span class="text-danger" id="errors_content_e"></span>
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

@endsection

@section('script')
<script>
    $(document).ready(function () {
        //ck editor 5 
    


        ClassicEditor
            .create( document.querySelector( '.myEditor' ) ,{
                toolbar: {
                    items: [
                        'undo', 'redo',
                        '|', 'heading',
                        '|', 'fontfamily', 'fontsize', 'fontColor', 'fontBackgroundColor',
                        '|', 'bold', 'italic', 'strikethrough', 'subscript', 'superscript', 'code',
                        //'-', // break point
                        '|', 'alignment',
                        'link', 'uploadImage', 'blockQuote', 'codeBlock',
                        '|', 'bulletedList', 'numberedList', 'todoList', 'outdent', 'indent',

                        'Source', 'Save', 'NewPage', 'Preview', 'Print', 'Templates' ,
                        'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', 
                        'Find', 'Replace', 'SelectAll', 'Scayt' ,
                        'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField' ,
                        'Underline', 'Strike',  'CopyFormatting', 'RemoveFormat' ,
                        'CreateDiv', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'Language' ,
                        'Unlink', 'Anchor' ,
                        'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe' ,
                        'Styles', 'Format', 'Font' , 
                        'TextColor', 'BGColor' ,
                        'Maximize', 'ShowBlocks' ,
                        'About' 
                    ],
                    shouldNotGroupWhenFull: true
                }
            })
            .catch( error => {
                console.error( error );
        });

        let editor;
        ClassicEditor
                .create(document.querySelector('#content_e'),{
                    toolbar: {
                    items: [
                        'undo', 'redo',
                        '|', 'heading',
                        '|', 'fontfamily', 'fontsize', 'fontColor', 'fontBackgroundColor',
                        '|', 'bold', 'italic', 'strikethrough', 'subscript', 'superscript', 'code',
                        //'-', // break point
                        '|', 'alignment',
                        'link', 'uploadImage', 'blockQuote', 'codeBlock',
                        '|', 'bulletedList', 'numberedList', 'todoList', 'outdent', 'indent',

                        'Source', 'Save', 'NewPage', 'Preview', 'Print', 'Templates' ,
                        'Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', 
                        'Find', 'Replace', 'SelectAll', 'Scayt' ,
                        'Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField' ,
                        'Underline', 'Strike',  'CopyFormatting', 'RemoveFormat' ,
                        'CreateDiv', 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock', '-', 'BidiLtr', 'BidiRtl', 'Language' ,
                        'Unlink', 'Anchor' ,
                        'Image', 'Flash', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak', 'Iframe' ,
                        'Styles', 'Format', 'Font' , 
                        'TextColor', 'BGColor' ,
                        'Maximize', 'ShowBlocks' ,
                        'About' 
                    ],
                    shouldNotGroupWhenFull: true
                }
                })
                .then(newEditor => {
                    editor = newEditor;
                    // Set the initial value of the editor
                    editor.setData('');
                })
                .catch(error => {
                    console.error(error);
                });

        //add Description
        $('.addnew').click(function (e) { 
            e.preventDefault();
            
            $('#errors_content').text('');
            $('#errors_status').text('');
            
            $('#errors_content_e').text('');
            $('#errors_status_e').text('');
        });
        
        //add form
        $("form#formData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#formData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('add-product-description') }}",
                dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Product Description Added Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {
                    $('#errors_content').text('');
                    $('#errors_status').text('');

                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'content') {
                            $('#errors_content').text(error);
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
        
        $(".editDetail").click(function (e) { 
            e.preventDefault();
            $("#id_e").val($(this).data('id'));
            $("#active_status_e").val($(this).data('active_status')).trigger('change');
            
            if (editor) {
                editor.setData($(this).data('content'))
            }
        });
        //edit form
        $("form#editData").submit(function (e) {
            e.preventDefault();

            var formData = new FormData($("#editData")[0]);
            $.ajax({
                type: "POST",
                url: "{{ route('update-product-description') }}",
                dataType: "json",
                contentType: false,
                processData: false,
                data: formData,
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                success: function (response) {
                    if (response.success == true) {
                        toastr.success("Product Description Updated Successfully!");
                    } else if (response.success == false) {
                        toastr.error("Somentings Went Wrong!");
                    }
                },
                error: function (error) {
                    $('#errors_content_e').text('');
                    $('#errors_status_e').text('');

                    $.each(error.responseJSON.errors, function (field_name, error) {
                        if (field_name == 'content') {
                            $('#errors_content_e').text(error);
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
