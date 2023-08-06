
@extends('backend.layouts.master')

@section('title', 'Dashboard')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="mb-2 row">
          <div class="col-sm-6">
            <h1 class="m-0">Edit Business Policy</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a></li>
              <li class="breadcrumb-item active">Edit Business Policy</li>
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
            <div class="card-header font-weight-bold">Edit Form</div>
            <div class="card-body">
                <form id="editData">
                    @csrf
                    <div class="row">
                        <input type="hidden" name="id" value="{{ $policy->id }}">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="policy_type">Business Policy Type</label>
                                <select class="form-control select2" name="policy_type" id="policy_type"
                                    data-placeholder="Select Type" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="1" @selected($policy->policy_type == 1)>Refund Policy</option>
                                    <option value="2" @selected($policy->policy_type == 2)>Privacy Policy</option>
                                    <option value="3" @selected($policy->policy_type == 3)>Terms Of Service</option>
                                    <option value="4" @selected($policy->policy_type == 4)>Disclaimer</option>
                                </select>
                                <span class="text-danger validate" data-field="policy_type"></span>
                            </div>
                        </div>
                        
                        
                        <div class="col-md-12">
                          <div class="form-group">
                              <label for="description">Description</label>
                              <textarea type="text" class="form-control" name="description" id="editor" placeholder="Enter Description" > {{ $policy->description }} </textarea>
                                  <span class="text-danger validate" data-field="description"></span>

                          </div>

                          <div class="col-md-12">
                            <div class="form-group">
                                <label for="active_status">Active Status</label>
                                <select class="form-control select2" name="active_status" id="active_status"
                                    data-placeholder="Select Active Status" style="width: 100%">
                                    <option value="">Choose Type</option>
                                    <option value="0" @selected($policy->active_status == 0)>Inactive</option>
                                    <option value="1" @selected($policy->active_status == 1)>Active</option>
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
        $("#editData").submit(function (e) { 
                e.preventDefault();
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-business-policy') }}",
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
