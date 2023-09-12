
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <style>
        
.table {
    color: #535353;
}

.invoice-content {
    font-family: 'Poppins', sans-serif;
    color: #535353;
    font-size: 14px;
}

.container {
    max-width: 1120px;
    margin: 0 auto;
}

.invoice-content a {
    text-decoration: none;
}

.invoice-content .img-fluid {
    max-width: 100% !important;
    height: auto;
}

.invoice-content .form-control:focus {
    box-shadow: none;
}

.invoice-content h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
    font-family: 'Poppins', sans-serif;
    color: #535353;
}

/** BTN LG **/
.btn-lg {
    font-size: 15px;
    height: 50px;
    padding: 0 35px;
    line-height: 50px;
    border-radius: 3px;
    color: #ffffff;
    border: none;
    margin: 3px;
}

.btn-lg {
    display: inline-block;
    vertical-align: middle;
    -webkit-appearance: none;
    text-transform: capitalize;
    transition: all 0.3s linear;
    z-index: 1;
    position: relative;
    overflow: hidden;
    text-align: center;
}

.btn-lg:hover {
    color: #ffffff;
}

.btn-lg:hover:after {
    transform: perspective(200px) scaleX(1.05) rotateX(0deg) translateZ(0);
    transition: transform 0.9s linear, transform 0.4s linear;
}

.btn-lg:after {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    content: "";
    transform: perspective(200px) scaleX(0.1) rotateX(90deg) translateZ(-10px);
    transform-origin: bottom center;
    transition: transform 0.9s linear, transform 0.4s linear;
    z-index: -1;
}

.btn-check:focus+.btn, .btn:focus {
    outline: 0;
    box-shadow: none;
}

.btn-download {
    background: #2565cc!important;
}

.btn-download:after {
    background: #1e59b7;
}

.btn-print{
    background: #2b2a2a;
}

.btn-print:after {
    background: #1d1c1c;
}

.invoice-content .f-w-600 {
    font-weight: 600 !important;
}

.invoice-content .text-13 {
    font-size: 13px;
}

.invoice-content .invoice-table th:first-child,
.invoice-content .invoice-table td:first-child {
    text-align: left;
}

.invoice-content .color-white {
    color: #fff !important;
}

.invoice-content .inv-header-1 {
    text-transform: uppercase;
    font-weight: 700;
    font-size: 24px;
    color: #262525;
}

.invoice-content .inv-header-2 {
    text-transform: uppercase;
    font-weight: 600;
    font-size: 20px;
}

.invoice-content .inv-title-1 {
    font-weight: 500;
    font-size: 16px;
}

.invoice-content .invo-addr-1 {
    font-size: 15px;
    margin-bottom: 20px;
}

.invoice-content .item-desc-1 {
    text-align: left;
}

.invoice-content .item-desc-1 span {
    display: block;
}

.invoice-content .item-desc-1 small {
    display: block;
}

.invoice-content .important-notes-list-1 {
    font-size: 13px !important;
    padding-left: 15px;
    margin-bottom: 15px;
}

.invoice-content .important-notes-list-1 li {
    margin-bottom: 5px;
}

.invoice-content .bank-transfer-list-1 {
    font-size: 13px !important;
    padding-left: 0px;
}

.invoice-content .important-notes {
    font-size: 12px !important;
}

.invoice-content .invoice-btn-section {
    text-align: center;
    margin-top: 30px;
}

table th{
    font-weight: 500;
}

/** Invoice 1 Start **/
.invoice-1 {
    padding: 30px 0;
    background: #fff6f6;
}

.invoice-1 .mb-30 {
    margin-bottom: 30px;
}

.invoice-1 .invoice-info {
    background: #fff;
    position: relative;
}

.invoice-1 .name{
    font-size: 18px;
    margin-bottom: 5px;
    text-transform: uppercase;
    color: #262525;
    font-weight: 500;
}

.invoice-1 .mb-10{
    margin-bottom: 10px;
}

.invoice-1 .invoice-headar {
    height: 125px;
    margin-bottom: 25px;
    background-image: linear-gradient(to bottom, #ffffff, #f3f3f3);
}

.invoice-1 .invoice-headar p span{
    float: right;
}

.invoice-1 .invoice-number-inner{
    max-width: 200px;
    margin-left: auto;
}

.invoice-1 .invoice-id .info{
    max-width: 200px;
    margin:0 50px 0 auto;
    padding: 34px 0;
}

.invoice-1 .invoice-id{
    border-radius: 0 0 0 200px;
    z-index: 0;
    background-image: linear-gradient(to bottom, #ffb400, #ff8a00);
}

.invoice-1 .payment-method-list-1{
    padding: 0;
}

.invoice-1 .item-desc-1 span {
    font-size: 14px;
    font-weight: 500;
}

.invoice-1 .payment-method{
    max-width: 200px;
    margin-left: auto;
}

.invoice-1 .payment-method ul {
    list-style: none;
}

.invoice-1 .payment-method ul li strong{
    font-weight: 500;
}

.invoice-1 .table-striped > tbody > tr:nth-of-type(odd) {
    --bs-table-accent-bg: rgb(255 255 255 / 5%);
    color: var(--bs-table-striped-color);
}

.invoice-1 table th {
    font-weight: 500;
    text-transform: uppercase;
}

.invoice-1 .invoice-top {
    padding: 40px 50px 10px;
    font-size: 15px;
}

.invoice-1 .inv-title-1{
    color: #ffb400;
    margin-bottom: 5px;
}

.invoice-1 .invoice-logo{
    padding: 50px;
}

.invoice-1 .invoice-logo img {
    height: 25px;
}

.invoice-1 .table-section {
    text-align: center;
}

.invoice-1 .invoice-center {
    padding: 0 50px 40px;
}

.invoice-1 .table > :not(caption) > * > * {
    padding: 13px 30px;
}

.invoice-1 .table > :not(caption) > * > * {
    background-color: var(--bs-table-bg);
    border-bottom-width: 0;
}

.invoice-1 .table .pl0{
    padding-left: 0;
}

.invoice-1 .table td.pl0{
    padding-left: 0;
}

.invoice-1 .table td, .invoice-1 .table th {
    vertical-align: middle;
    border: none !important;
}

.invoice-1 .table td {
    font-size: 15px;
    color: #555;
}

.invoice-1 p{
    font-size: 14px;
}

.invoice-1 .invoice-info-buttom .table .invoice-1 .invoice-info-buttom .table tr, .table tr {
    border: 1px solid #e9ecef;
}

.invoice-1 .caption-top {
    caption-side: top;
    text-align: right;
    margin-bottom: 0;
}

.invoice-1 .invoice-bottom {
    padding: 0 50px 10px;
}

.invoice-1 .bg-active {
    background-image: linear-gradient(to bottom, #ffb400, #ff8a00) !important;
    color: #fff!important;
}

.invoice-1 .active-color{
    color: #ffb400!important;
}

.invoice-1 .invoice-bottom h3 {
    margin-bottom: 7px;
}

.invoice-1 .contact-info {
    padding: 30px 50px;
    border-radius: 0 100px 0 0;
    background-image: linear-gradient(to bottom, #f3f3f3, #ffffff);
}

.invoice-1 .contact-info a {
    margin-right: 20px;
    color: #535353;
    font-size: 14px;
}

.invoice-1 .contact-info .mr-0{
    margin-right: 0;
}

.invoice-1 .inv-header-1 {
    font-weight: 600;
}

.invoice-1 .invoice-contact::after {
    position: absolute;
    bottom: 0;
    right: 0;
    width: 30%;
    height: 30px;
    border-radius: 50px 0 0 0;
    z-index: 0;
    background-image: linear-gradient(to bottom, #ffb400, #ff8a00);
}

/** MEDIA **/
@media (max-width: 992px) {
    .invoice-1 {
        padding: 30px 0;
    }
}

@media (max-width: 768px) {
    .invoice-1 .table > :not(caption) > * > * {
        padding: 15px 10px;
    }

    .invoice-1.invoice-content .color-white {
        color: #262525!important;
    }

    .invoice-1 .payment-method {
        margin: 0 auto 30px 0;
    }

    .invoice-1 .invoice-top {
        padding: 30px 30px 0;
    }

    .invoice-1 .contact-info {
        padding: 30px;
        border-radius: 0;
    }

    .invoice-1 .invoice-center {
        padding: 0 30px 30px;
    }

    .invoice-1 .invoice-contact::after {
        display: none;
    }

    .invoice-1 .invoice-bottom {
        padding: 0 30px;
    }

    .invoice-1 .invoice-id {
        background: transparent;
    }

    .invoice-1 .invoice-logo {
        padding: 0;
        margin-bottom: 10px;
    }

    .invoice-1 .invoice-headar {
        height: auto;
        margin-bottom: 0;
        padding: 30px;
    }

    .invoice-1 .invoice-id .info {
        margin: 0 auto 0 15px;
        padding: 0;
    }

    .invoice-1 .invoice-number-inner {
        margin: 0 auto 0 0;
    }
}

@media (max-width: 580px){
    .invoice-1 .invoice-id .info {
        margin: 0 auto 0 15px;
    }

    .invoice-1 .invoice-id .info {
        margin: 0 auto 0 0;
    }

    .invoice-1 .d-none-580{
        display: none!important;
    }
}
/** Invoice 1 end **/


/** Print **/
@media print {
    .col-sm-12 {
        width: 100%;
    }

    .col-sm-11 {
        width: 91.66666667%;
    }

    .col-sm-10 {
        width: 83.33333333%;
    }

    .col-sm-9 {
        width: 75%;
    }

    .col-sm-8 {
        width: 66.66666667%;
    }

    .col-sm-7 {
        width: 58.33333333%;
    }

    .col-sm-6 {
        width: 50%;
    }

    .col-sm-5 {
        width: 41.66666667%;
    }

    .col-sm-4 {
        width: 33.33333333%;
    }

    .col-sm-3 {
        width: 25%;
    }

    .col-sm-2 {
        width: 16.66666667%;
    }

    .col-sm-1 {
        width: 8.33333333%;
    }

    .text-end {
        text-align: right !important;
    }

    .invoice-1 {
        padding: 0;
        background: #fff;
    }

    .invoice-1 .invoice-inner {
        background: #f8f8f8;
    }

    .invoice-1 .container {
        padding: 0px;
    }

    .invoice-1 .invoice-info {
        box-shadow: none;
        margin: 0px;
    }


    .invoice-1 .invoice-headar {
        background: #f3f3f3;
    }

    .invoice-1 .inv-title-1 {
        color: #535353;
    }

    .invoice-content .color-white {
        color: #262525!important;
    }

    .invoice-1 .bg-active {
        background: #f3f3f3!important;
        color: #262525!important;
    }

    .invoice-1 .contact-info {
        background: #f3f3f3;
    }

    .invoice-1 .active-color {
        color: #262525!important;
    }

 

}

    </style>

</head>
<body>
<?php
$products = App\Models\PurchaseProduct::where('order_id', $order_data['order_id'])->get();
?>
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
                                                <img style="height: 60px" src="<?php echo e(asset($setting->logo)); ?>" alt="logo">
                                            </div>
                                            <!-- logo ended -->
                                        </div>
                                    </div>
                                    <div class="col-sm-6 invoice-id">
                                        <div class="info">
                                            <h1 class="color-white inv-header-1">Invoice</h1>
                                            <p class="color-white mb-1">Invoice Number <span><?php echo e("#A".$order_data['order_id'] + 100); ?></span></p>
                                            <p class="color-white mb-0">Invoice Date <span><?php echo e(\Carbon\Carbon::parse(now())->format('d M Y')); ?></span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="invoice-top">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="invoice-number mb-30">
                                            <h4 class="inv-title-1">Invoice To</h4>
                                            <h2 class="name mb-10"><?php echo e($order_data['order']['f_name']); ?> <?php echo e($order_data['order']['l_name']); ?> </h2>
                                            <p class="invo-addr-1">
                                                <?php echo e($order_data['order']['company_name']); ?><br/>
                                                <?php echo e($order_data['order']['email']); ?> <br/>
                                                <?php echo e($order_data['order']['phone']); ?> <br/>
                                                <?php echo e($order_data['order']['address']); ?> <br/>
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
                                                    <?php echo e($setting->email ? $setting->email : ''); ?> <br/>
                                                    <?php echo e($setting->phone ? $setting->phone : ''); ?> <br/>
                                                    <?php echo e($setting->address ? $setting->address : ''); ?>  <br/>
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
                                          <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $product): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <tr class="tr">
                                              <td>
                                                  <div class="item-desc-1">
                                                      <span>01</span>
                                                  </div>
                                              </td>
                                              <td class="pl0"><?php echo e($product->product->name); ?></td>
                                              <td class="text-center">$<?php echo e($product->sales_price); ?></td>
                                              <td class="text-center"><?php echo e($product->product_quantity); ?></td>
                                              <td class="text-end">$<?php echo e($product->sales_price * $product->product_quantity); ?></td>
                                            </tr>
                                          <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <tr class="tr2">
                                              <td></td>
                                              <td></td>
                                              <td></td>
                                              <td class="text-center">SubTotal</td>
                                              <td class="text-end">$<?php echo e($order_data['order']['total_price']); ?> <br/>
                                              </td>
                                            </tr>
                                            <tr class="tr2">
                                              <td></td>
                                              <td></td>
                                              <td></td>
                                              <td class="text-center f-w-600 active-color">Grand Total</td>
                                              <td class="f-w-600 text-end active-color">$<?php echo e($order_data['order']['total_price']); ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="invoice-bottom">
                                <div class="row">
                                    <div class="col-lg-6 col-md-8 col-sm-7">
                                        <div class="mb-30 dear-client">
                                            <h3 class="inv-title-1">Terms & Conditions</h3>
                                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been typesetting industry. Lorem Ipsum</p>
                                        </div>
                                        <div>

                                        <div>
                                            <label for="" >Status: </label> <span class="badge badge-warning"> <?php echo e($order_data['order']['status']); ?></span>
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
                                            <a href="tel:+55-4XX-634-7071"><i class="fa fa-phone"></i> <?php echo e($setting->phone ? $setting->phone : ''); ?></a>
                                            <a href="tel:info@themevessel.com"><i class="fa fa-envelope"></i> <?php echo e($setting->email ? $setting->email : ''); ?></a>
                                            <a href="tel:info@themevessel.com" class="mr-0 d-none-580"><i class="fa fa-map-marker"></i> <?php echo e($setting->address ? $setting->address : ''); ?></a>
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
</html><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/frontend/mail/orderDone.blade.php ENDPATH**/ ?>