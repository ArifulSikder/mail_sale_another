
@extends('backend.layouts.master')

@section('title', 'Add Details')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="mb-2 row">
          <div class="col-sm-6">
            <h1 class="m-0">Add Home Details</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a></li>
              <li class="breadcrumb-item active">Add Home Details</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="card">
            <div class="card-header font-weight-bold">Details Add Form</div>
            <div class="card-body">
                <form id="formData">
                    @csrf
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="title">Title</label>
                                <input type="text" class="form-control" name="title" id="title" placeholder="Enter Title" >

                                    <span class="text-danger validate" data-field="title"></span>

                            </div>
                        </div>
                        
                        
                        <div class="col-md-12">
                          <div class="form-group">
                              <label for="description">Description</label>
                              <textarea type="text" class="form-control" name="description" id="editor" placeholder="Enter Description" value=""> </textarea>
                                  <span class="text-danger validate" data-field="description"></span>

                          </div>

                          <div class="col-md-12">
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
                        
                          <div class="form-group">
                            <button class="text-center btn btn-primary btn-block" type="submit">Save</button>
                          </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
      </div>
    </section>
  </div>

  <x-select2 />
@endsection

@section('script')
    <script>
      $(document).ready(function () {
        $("#formData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('store-details') }}",
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
      });  
    </script>    
@endsection
