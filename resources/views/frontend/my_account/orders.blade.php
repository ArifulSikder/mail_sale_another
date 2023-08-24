@extends('frontend.my-account')
@section('myAccount')
<div class="">
    {{-- <div class="common_content d-flex align-items-center">
        <a href="./pricing.html" class="btn_2">Browse products</a>
        <p>No order has been made yet.</p>
    </div> --}}



    <div class="table-responsive">
        <table class="table table-bordered">
          <thead>
            <tr>
              <th scope="col">Serial</th>
              <th scope="col">Id</th>
              <th scope="col">Date</th>
              <th scope="col">Customar</th>
              <th scope="col">Total</th>
              <th scope="col">Status</th>
              <th scope="col">Payment</th>
            </tr>
          </thead>
          <tbody>
            @foreach ($orders as $order)
                <tr>
                    <th scope="row">{{ $loop->iteration }}</th>
                    <td>{{ "#A".$order->id + 100 }}</td>
                    <td>{{ $order->created_at->toFormateDate() }}</td>
                    <td>{{ $order->f_name }}</td>
                    <td>${{ $order->total_price }}</td>
                    <td>{{ $order->status }}</td>
                    <td>
                        @if ($order->payment_method == 1)
                            <p>Stripe</p>
                            @else
                            <p>Paypal</p>
                            @endif
                    </td>
                </tr>
            @endforeach
          </tbody>
        </table>
      </div>
</div>
@endsection