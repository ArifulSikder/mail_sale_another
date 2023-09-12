@extends('frontend.my-account')
@section('myAccount')
<div class="">
    {{-- <div class="common_content d-flex align-items-center">
        <a href="./pricing.html" class="btn_2">Browse products</a>
        <p>No order has been made yet.</p>
    </div> --}}


    <h3 class="text-center text-danger fw-bold">Orders</h3>
    <div class="table-responsive">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col" class="text-danger">Serial</th>
              <th scope="col" class="text-danger">Id</th>
              <th scope="col" class="text-danger">Date</th>
              <th scope="col" class="text-danger">Status</th>
              <th scope="col" class="text-danger">Payment</th>
              <th scope="col" class="text-danger">Amount</th>
            </tr>
          </thead>
          <tbody>
            @php
                $total = 0;
            @endphp
            @foreach ($orders as $order)
                <tr>
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ "#A".$order->id + 100 }}</td>
                    <td>{{ $order->created_at->toFormateDate() }}</td>
                    <td>{{ $order->status }}</td>
                    <td>
                        @if ($order->payment_method == 1)
                          <p>Stripe</p>
                        @else
                          <p>Paypal</p>
                        @endif
                    </td>
                    <td class="text-end">${{ $order->total_price }}</td>

                </tr>
                @php
                  $total +=$order->total_price ;
                @endphp
            @endforeach
                <tr>
                  <td colspan="10" class="text-end"><strong class="text-danger">Total</strong> = ${{ $total }}</td>
                </tr>
          </tbody>
        </table>
      
      </div>
</div>
@endsection