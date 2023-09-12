@extends('backend.layouts.master')

@section('title', 'Invoice')

@section('section')
<link rel="stylesheet" href="{{ asset('backend/dist/css/invoice/style.css') }}">
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Orders</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Invoice</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="invoice-1 invoice-content">
              <div class="container">
                  <div class="row">
                      <div class="col-lg-12">
                          <div class="invoice-inner clearfix">
                              <div class="invoice-info clearfix" id="invoice_wrapper">
                                  <div class="invoice-headar">
                                      <div class="row g-0">
                                          <div class="col-sm-6">
                                              <div class="invoice-logo">
                                                  <!-- logo started -->
                                                  <div class="logo">
                                                      <img style="height: 60px" src="{{ asset($setting->logo) }}" alt="logo">
                                                  </div>
                                                  <!-- logo ended -->
                                              </div>
                                          </div>
                                          <div class="col-sm-6 invoice-id">
                                              <div class="info">
                                                  <h1 class="color-white inv-header-1">Invoice</h1>
                                                  <p class="color-white mb-1">Invoice Number <span>{{ "#A".$order->id + 100 }}</span></p>
                                                  <p class="color-white mb-0">Invoice Date <span>{{ \Carbon\Carbon::parse(now())->format('d M Y')}}</span></p>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="invoice-top">
                                      <div class="row">
                                          <div class="col-sm-6">
                                              <div class="invoice-number mb-30">
                                                  <h4 class="inv-title-1">Invoice To</h4>
                                                  <h2 class="name mb-10">{{ $order->f_name ? $order->f_name : '' }} {{ $order->l_name ? $order->l_name : '' }} </h2>
                                                  <p class="invo-addr-1">
                                                      {{ $order->company_name ? $order->company_name : '' }} <br/>
                                                      {{ $order->email ? $order->email : '' }} <br/>
                                                      {{ $order->phone ? $order->phone : '' }} <br/>
                                                      {{ $order->address ? $order->address : '' }} <br/>
                                                  </p>
                                              </div>
                                          </div>
                                          <div class="col-sm-6">
                                              <div class="invoice-number mb-30">
                                                  <div class="invoice-number-inner">
                                                      <h4 class="inv-title-1">Invoice From</h4>
                                                      <h2 class="name mb-10">Pvaeshop</h2>
                                                      <p class="invo-addr-1">
                                                        Pvaeshop group LTD  <br/>
                                                          {{ $setting->email ? $setting->email : '' }} <br/>
                                                          {{ $setting->phone ? $setting->phone : '' }} <br/>
                                                          {{ $setting->address ? $setting->address : '' }}  <br/>
                                                      </p>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="invoice-center">
                                      <div class="table-responsive">
                                          <table class="table mb-0 table-striped invoice-table">
                                              <thead class="bg-active">
                                              <tr class="tr">
                                                  <th>No.</th>
                                                  <th class="pl0 text-start">Item Description</th>
                                                  <th class="text-center">Price</th>
                                                  <th class="text-center">Quantity</th>
                                                  <th class="text-end">Amount</th>
                                              </tr>
                                              </thead>
                                              <tbody>
                                                @foreach($products as $product)
                                                  <tr class="tr">
                                                    <td>
                                                        <div class="item-desc-1">
                                                            <span>01</span>
                                                        </div>
                                                    </td>
                                                    <td class="pl0">{{ $product->product->name }}</td>
                                                    <td class="text-center">${{ $product->sales_price }}</td>
                                                    <td class="text-center">{{ $product->product_quantity }}</td>
                                                    <td class="text-end">${{ $product->sales_price * $product->product_quantity }}</td>
                                                  </tr>
                                                @endforeach
                                                  <tr class="tr2">
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td class="text-center">SubTotal</td>
                                                    <td class="text-end">${{ $order->total_price }}</td>
                                                  </tr>
                                                  <tr class="tr2">
                                                    <td></td>
                                                    <td></td>
                                                    <td></td>
                                                    <td class="text-center f-w-600 active-color">Grand Total</td>
                                                    <td class="f-w-600 text-end active-color">${{ $order->total_price }}</td>
                                                  </tr>
                                              </tbody>
                                          </table>
                                      </div>
                                  </div>
                                  <div class="invoice-bottom">
                                      <div class="row">
                                          <div class="col-lg-6 col-md-8 col-sm-7">
                                              {{-- <div class="mb-30 dear-client">
                                                  <h3 class="inv-title-1">Terms & Conditions</h3>
                                                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been typesetting industry. Lorem Ipsum</p>
                                              </div> --}}
                                              <div>

                                                <form id="formData">
                                                  <input type="hidden" value="{{ $order->id }}" name="id">
                                                  <label for="">Status: </label> <br> 
                                                  <select class="form-control select2 status" name="status"
                                                    id="status" style="width: 50%">
                                                    <option value="Pending" @selected($order->status == 'Pending')>Pending</option>
                                                    <option value="Shipped" @selected($order->status == 'Shipped')>Shipped</option>
                                                    <option value="Canceled" @selected($order->status == 'Canceled')>Canceled</option>
                                                    <option value="Completed" @selected($order->status == 'Completed')>Completed</option>
                                                  </select>
                                                  <button class="btn btn-warning btn-sm"><i class="fas text-white fa-check"></i></button>
                                                </form>
                                                
                                              </div>
                                              
                                          </div>
                                          <div class="col-lg-6 col-md-4 col-sm-5">
                                              <div class="mb-30 payment-method">
                                                  <h3 class="inv-title-1">Payment Method</h3>
                                                  <ul class="payment-method-list-1 text-14">
                                                      <li><strong>Account No:</strong> 00 123 647 840</li>
                                                      <li><strong>Account Name:</strong> Jhon Doe</li>
                                                      <li><strong>Branch Name:</strong> xyz</li>
                                                  </ul>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="invoice-contact clearfix">
                                      <div class="row g-0">
                                          <div class="col-lg-9 col-md-11 col-sm-12">
                                              <div class="contact-info">
                                                  <a href="tel:+55-4XX-634-7071"><i class="fa fa-phone"></i> {{ $setting->phone ? $setting->phone : '' }}</a>
                                                  <a href="tel:info@themevessel.com"><i class="fa fa-envelope"></i> {{ $setting->email ? $setting->email : '' }}</a>
                                                  <a href="tel:info@themevessel.com" class="mr-0 d-none-580"><i class="fa fa-map-marker"></i> {{ $setting->address ? $setting->address : '' }}</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="invoice-btn-section clearfix d-print-none">
                                  <a href="javascript:window.print()" class="btn btn-lg btn-print">
                                      <i class="fa fa-print"></i> Print Invoice
                                  </a>
                                  <a id="invoice_download_btn" href="{{ route('download-invoice-pdf', ['id' => $order->id]) }}" class="btn btn-lg btn-download btn-theme">
                                      <i class="fa fa-download"></i> Download Invoice
                                  </a>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
        </div>
    </section>

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
                  url: "{{ route('update-invoice') }}",
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
