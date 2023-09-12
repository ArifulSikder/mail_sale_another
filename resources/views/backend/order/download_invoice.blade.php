
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="{{ asset('backend/dist/css/invoice/style.css') }}">

</head>
<body>

    <div class="invoice-1 invoice-content">
        <div class="container">
            <div class="row justify-content-center">
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

                                        <div>
                                            <label for="" >Status: </label> <span class="badge badge-warning"> {{ $order->status }}</span>
                                        </div>
                                          
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Invoice 1 end -->


    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    
</body>
</html>