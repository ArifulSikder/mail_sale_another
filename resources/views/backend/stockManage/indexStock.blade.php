@extends('backend.layouts.master')

@section('title', 'About Us')

@section('section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Stock Management</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Stock Management</li>
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
                        {{-- <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addNew">
                            <i class="fas fa-plus"></i> Add Stock
                        </button> --}}
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="search" placeholder="Search By Category Name">
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">Stocks Table</div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col" style="width: 5%">Serial</th>
                                    <th scope="col" style="width: 20%">Product Name</th>
                                    <th scope="col" style="width: 15%">Quantity</th>
                                    <th scope="col" style="width: 15%">Average Per Price</th>
                                    <th scope="col" style="width: 15%">Stock Alert</th>
                                    <th scope="col" style="width: 15%">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $serials = ($stocks->currentpage() - 1) * $stocks->perpage() + 1;
                                @endphp
                                @foreach ($stocks as $stock)
                                    <tr>
                                        <th>{{ $serials++ }}</th>
                                        <td>{{ $stock->product->name }}</td>
                                        <td>{{ $stock->quantity }}</td>
                                        <td>{{ $stock->average_per_price }}</td>
                                        <td>
                                            @if ($stock->stock_alert == null)
                                                <span class="text-info">No alert Quantity added</span>
                                            @elseif($stock->quantity <= $stock->stock_alert)    
                                                ({{ $stock->stock_alert }})<span class="text-danger">Low Stock</span> <i class="fas fa-exclamation-triangle text-danger"></i>
                                            @elseif ($stock->quantity >= $stock->stock_alert)
                                                ({{ $stock->stock_alert }})<span class="text-success">Enough Stock</span>
                                            @endif
                                        </td>
                                        <td>
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                <button type="button"
                                                     data-id="{{ $stock->id }}"
                                                     data-stock_alert="{{ $stock->stock_alert }}"
                                                    class="btn btn-danger btn-sm editStock btn-block">
                                                    <i class="fas fa-exclamation-triangle"></i> Add Alert
                                                </button>

                                                <a href="{{ route('delete-stock', ['id' => $stock->id]) }}" id="delete"
                                                    class="btn btn-danger btn-sm btn-block"><i class="fas fa-trash"></i>
                                                    Delete</a>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                        <div class="float-right my-2">
                            {{ $stocks->links() }}
                        </div>
                    </div>
                </div>
            </div>
        </section>

    </div>


    <!-- add stocks -->
    {{-- <div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Stock Product</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="formData">
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="product_id">Product Name</label>
                            <select class="form-control select2" name="product_id" id="product_id"
                                data-placeholder="Select Product" style="width: 100%">
                                <option value="">Select Product</option>
                                @foreach ($products as $product)
                                    <option value="{{ $product->id }}">{{ $product->name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger validate" data-field="product_id"></span>

                        </div>

                        <div class="form-group">
                            <label for="seller_id">Select Seller</label>
                            <select class="form-control select2" name="seller_id" id="seller_id"
                                data-placeholder="Select Seller" style="width: 100%">
                                <option value="">Select Seller</option>
                                @foreach ($sellers as $seller)
                                    <option value="{{ $seller->id }}">{{ $seller->seller_name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger validate" data-field="seller_id"></span>
                        </div>

                        <div class="form-group">
                            <label for="quantity">Product Quantity</label>
                            <input type="number" class="form-control" name="quantity"
                                placeholder="Enter Product Quantity">
                            <span class="text-danger validate" data-field="quantity"></span>
                        </div>

                        <div class="form-group">
                            <label for="stock_date">Stock Date</label>
                            <input type="date" class="form-control" name="stock_date">
                            <span class="text-danger validate" data-field="stock_date"></span>
                        </div>

                        <div class="form-group">
                            <label for="per_price">Price Per Product</label>
                            <input type="number" class="form-control" name="per_price"
                                placeholder="Enter Product Price">
                            <span class="text-danger validate" data-field="per_price"></span>

                        </div>

                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div> --}}

    <!-- edit stock -->
    <div class="modal fade" id="editstock" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog ">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Add Stock Alert Quantity</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="editData">
                    <div class="modal-body">
                        <input type="hidden" id="id_e" name="edit_id">

                        <div class="form-group">
                            <label for="quantity">Stock Alert Quantity</label>
                            <input type="number" class="form-control" name="stock_alert" id="stock_alert_e">
                            <span class="text-danger validate_e" data-field="stock_alert"></span>

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
        $(document).ready(function() {

            // $("#formData").submit(function(e) {
            //     e.preventDefault();
            //     var formdata = new FormData($("#formData")[0]);
            //     $.ajax({
            //         type: "POST",
            //         url: "{{ route('store-stock') }}",
            //         contentType: false,
            //         processData: false,
            //         headers: {
            //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            //         },
            //         data: formdata,
            //         success: function(response) {
            //             if (response.success) {
            //                 toastr.success(response.success);
            //             } else if (response.error) {
            //                 toastr.error(response.error);
            //             }
            //         },
            //         error: function(error) {
            //             $('.validate').text('');
            //             $.each(error.responseJSON.errors, function(field_name, error) {
            //                 const errorElement = $('.validate[data-field="' +
            //                     field_name + '"]');
            //                 if (errorElement.length > 0) {
            //                     errorElement.text(error[0]);
            //                     toastr.error(error);
            //                 }
            //             });
            //         },
            //         complete: function(done) {
            //             if (done.status == 200) {
            //                 window.location.reload();
            //             }
            //         }


            //     });
            // });

            $('.editStock').click(function(e) {
                e.preventDefault();
                $('#editstock').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#stock_alert_e').val($(this).data('stock_alert'));
            });

            $("#editData").submit(function(e) {
                e.preventDefault();

                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-stock-alert') }}",
                    contentType: false,
                    processData: false,
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    data: formdata,
                    success: function(response) {
                        if (response.success) {
                            toastr.success(response.success);
                        } else if (response.error) {
                            toastr.error(response.error);
                        }
                    },
                    error: function(error) {
                        $('.validate').text('');
                        $.each(error.responseJSON.errors, function(field_name, error) {
                            const errorElement = $('.validate_e[data-field="' +
                                field_name + '"]');
                            if (errorElement.length > 0) {
                                errorElement.text(error[0]);
                                toastr.error(error);
                            }
                        });
                    },

                    complete: function(done) {
                        if (done.status == 200) {
                            window.location.reload();
                        }
                    }

                });
            });
        });
    </script>

@endsection
