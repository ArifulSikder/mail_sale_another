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
                        <button type="button" class="btn btn-success " data-toggle="modal" data-target="#addNew">
                            <i class="fas fa-plus"></i> Add Stock
                        </button>
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
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">
                                                <button type="button" data-id="{{ $stock->id }}"
                                                    data-product_id="{{ $stock->product_id }}"
                                                    data-seller_id="{{ $stock->seller_id }}"
                                                    data-quantity="{{ $stock->quantity }}"
                                                    data-stock_date="{{ $stock->stock_date }}"
                                                    data-per_price="{{ $stock->per_price }}"
                                                    class="btn btn-success btn-sm editData btn-block">
                                                    <i class="fas fa-edit"></i> Edit
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
    <div class="modal fade" id="addNew" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
    </div>

    <!-- edit stock -->
    <div class="modal fade" id="editstock" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Stock</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form id="editData">
                    <div class="modal-body">
                        <input type="hidden" id="id_e" name="edit_id">

                        <div class="form-group">
                            <label for="product_id_e">Product Name</label>
                            <select class="form-control select2" name="product_id" id="product_id_e"
                                data-placeholder="Select Product" style="width: 100%">
                                <option value="">Select Product</option>
                                @foreach ($products as $product)
                                    <option value="{{ $product->id }}">{{ $product->name }}</option>
                                @endforeach
                            </select>
                            <span class="text-danger validate_e" data-field="product_name"></span>

                        </div>

                        <div class="form-group">
                            <label for="seller_id">Select Seller</label>
                            <select class="form-control select2" name="seller_id" id="seller_id_e"
                                data-placeholder="Select Seller" style="width: 100%">
                                <option value="">Select Seller</option>
                                @foreach ($sellers as $seller)
                                    <option value="{{ $seller->id }}">{{ $seller->seller_name }}</option>
                                @endforeach

                            </select>
                            <span class="text-danger validate_e" data-field="seller_id"></span>
                        </div>

                        <div class="form-group">
                            <label for="quantity">Product Quantity</label>
                            <input type="number" class="form-control" name="quantity" id="quantity_e">
                            <span class="text-danger validate_e" data-field="quantity"></span>

                        </div>

                        <div class="form-group">
                            <label for="stock_date">Stock Date</label>
                            <input type="date" class="form-control" name="stock_date" id="stock_date_e">
                            <span class="text-danger validate_e" data-field="stock_date"></span>
                        </div>

                        <div class="form-group">
                            <label for="per_price">Price Per Product</label>
                            <input type="number" class="form-control" name="per_price" id="per_price_e"
                                placeholder="Enter Product Price">
                            <span class="text-danger validate_e" data-field="per_price"></span>

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

            $("#formData").submit(function(e) {
                e.preventDefault();
                var formdata = new FormData($("#formData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('store-stock') }}",
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
                            const errorElement = $('.validate[data-field="' +
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

            $('.editData').click(function(e) {
                e.preventDefault();
                $('#editstock').modal('show');
                $('#id_e').val($(this).data('id'));
                $('#product_id_e').val($(this).data('product_id')).trigger('change');
                $('#seller_id_e').val($(this).data('seller_id')).trigger('change');
                $('#quantity_e').val($(this).data('quantity'));
                $('#stock_date_e').val($(this).data('stock_date'));
                $('#per_price_e').val($(this).data('per_price'));
            });

            $("#editData").submit(function(e) {
                e.preventDefault();

                var formdata = new FormData($("#editData")[0]);
                $.ajax({
                    type: "POST",
                    url: "{{ route('update-stock') }}",
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
