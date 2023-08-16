@extends('backend.layouts.master')

@section('title', 'About Us')

@section('section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">Coupons</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Coupons</li>
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
                    <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addNew">
                        <i class="fas fa-plus"></i> Add Coupon
                    </button>
                </div>
                <div class="form-group">
                    <input class="form-control" type="search" placeholder="Search By Category Name">
                </div>
            </div>
            <div class="card">
                <div class="card-header">Coupon Table</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 15%">Coupon Name</th>
                                <th scope="col" style="width: 13%">Start Date</th>
                                <th scope="col" style="width: 13%">End Date</th>
                                <th scope="col" style="width: 10%">Coupon Discount</th>
                                <th scope="col" style="width: 10%">Active Status</th>
                                <th scope="col" style="width: 10%">Validity Status</th>
                                <th scope="col" style="width: 12%">Add Date</th>
                                <th scope="col" style="width: 12%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @php
                                $serials = ($coupons->currentpage() - 1) * $coupons->perpage() + 1;
                            @endphp 
                            @foreach($coupons as $coupon)
                                <tr>
                                    <th>{{ $serials++ }}</th>
                                    <td>{{ $coupon->coupon_name }}</td>
                                    <td>{{ $coupon->start_date }}</td>
                                    <td>{{ $coupon->end_date }}</td>
                                    <td>{{ $coupon->coupon_discount }} %</td>
                                        
                                    <td><span
                                            class="badge badge-{{ $coupon->active_status == 0 ? 'danger': 'success' }}">{{ $coupon->active_status == 0 ? 'Inactive': 'Active' }}
                                        </span>
                                    </td>
                                    <td><span
                                        class="badge badge-{{ $coupon->active_status == 0 ? 'danger': 'success' }}">{{ $coupon->active_status == 0 ? 'Invalid': 'Valid' }}
                                    </span></td>
                                    <td>{{ $coupon->created_at->toFormateDate() }}</td>
                                    <td>    
                                        <button type="button" 
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                @if ($coupon->active_status == 0)
                                                   <a href="{{ route('update-coupon-status', ['id' => $coupon->id , 'status' => $coupon->active_status ]) }}" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                @else
                                                    <a href="{{ route('update-coupon-status', ['id' => $coupon->id , 'status' => $coupon->active_status ]) }}" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                @endif
                                                <button type="button"
                                                    data-id="{{ $coupon->id }}"
                                                    data-coupon_name="{{ $coupon->coupon_name }}"
                                                    data-start_date="{{ $coupon->start_date }}"
                                                    data-end_date="{{ $coupon->end_date }}"
                                                    data-coupon_discount="{{ $coupon->coupon_discount }}"
                                                    data-active_status="{{ $coupon->active_status }}"
                                                    class="btn btn-success btn-sm editData btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </button>

                                                <a href="{{ route('delete-coupon',['id' => $coupon->id] ) }}"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                            </div>


                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        {{ $coupons->links() }}
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>


<!-- add coupon -->
<div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Add Coupon</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="formData">
                <div class="modal-body">    
                    <div class="form-group">
                        <label for="coupon_name">Coupon Name</label>
                        <input type="text" class="form-control" name="coupon_name"  placeholder="Enter Coupon Name" >
                        <span class="text-danger validate" data-field="coupon_name"></span>

                    </div>
                    <div class="form-group">
                        <label for="products">Products</label>  <br>
                        <select class="form-control js-example-basic-multiple"  name="products[]" multiple="multiple">
                            @foreach ($products as $product)
                            <option value="{{ $product->name }}">{{ $product->name }}</option>
                            @endforeach
                          </select>
                        <span class="text-danger validate" data-field="products"></span>
                    </div>
                    <div class="form-group">
                        <label for="start_date">Start Date</label>
                        <input type="datetime-local" class="form-control" name="start_date"  >
                        <span class="text-danger validate" data-field="start_date"></span>

                    </div>
                    <div class="form-group">
                        <label for="end_date">End Date</label>
                        <input type="date" class="form-control" name="end_date"  >
                        <span class="text-danger validate" data-field="end_date"></span>

                    </div>
                    <div class="form-group">
                        <label for="coupon_discount">Coupon Discount</label>
                        <input type="number" class="form-control" name="coupon_discount" placeholder="Enter Coupon Discount">
                        <span class="text-danger validate" data-field="coupon_discount"></span>

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
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- edit Coupon -->
<div class="modal fade" id="editCoupon" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Edit Coupon</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form id="editData">
                <div class="modal-body">    
                    <input type="hidden" id="id_e" name="edit_id">
                    <div class="form-group">
                        <label for="coupon_name">Coupon Name</label>
                        <input type="text" class="form-control" name="coupon_name"  id="coupon_name_e" >
                        <span class="text-danger validate_e" data-field="coupon_name"></span>

                    </div>
                    <div class="form-group">
                        <label for="start_date">Start Date</label>
                        <input type="date" class="form-control" name="start_date"  id="start_date_e">
                        <span class="text-danger validate_e" data-field="start_date"></span>

                    </div>
                    <div class="form-group">
                        <label for="end_date">Start Date</label>
                        <input type="date" class="form-control" name="end_date"  id="end_date_e">
                        <span class="text-danger validate_e" data-field="end_date"></span>

                    </div>
                    <div class="form-group">
                        <label for="coupon_discount">Coupon Discount</label>
                        <input type="number" class="form-control" name="coupon_discount" id="coupon_discount_e">
                        <span class="text-danger validate_e" data-field="coupon_discount"></span>

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
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>


@endsection

@section('script')

<script>
    $(document).ready(function () {

            $("#formData").submit(function (e) { 
              e.preventDefault();
              var formdata = new FormData($("#formData")[0]);
              $.ajax({
                  type: "POST",
                  url: "{{ route('store-coupon') }}",
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

           

            $('.editData').click(function (e) {
                e.preventDefault();
                $('#editCoupon').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#coupon_name_e').val($(this).data('coupon_name'));
                $('#start_date_e').val($(this).data('start_date'));
                $('#end_date_e').val($(this).data('end_date'));
                $('#coupon_discount_e').val($(this).data('coupon_discount'));
                $('#active_status_e').val($(this).data('active_status')).trigger('change');
            });

          $("#editData").submit(function (e) { 
                e.preventDefault();
                
                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-coupon') }}",
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
          $(document).ready(function() {
              $('.js-example-basic-multiple').select2();
          });
    });  
  </script>
    
@endsection





