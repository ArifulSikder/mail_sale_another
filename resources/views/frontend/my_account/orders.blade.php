@extends('frontend.my-account')
@section('myAccount')
<div class="">
    {{-- <div class="common_content d-flex align-items-center">
        <a href="./pricing.html" class="btn_2">Browse products</a>
        <p>No order has been made yet.</p>
    </div> --}}



    <div class="table-responsive">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Serial</th>
              <th scope="col">Id</th>
              <th scope="col">Date</th>
              <th scope="col">Customar</th>
              <th scope="col">Total</th>
              <th scope="col">Status</th>
              <th scope="col">Payment</th>
              <th scope="col">Action</th>
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
                            <span>Stripe</span>
                            @else
                            <span>Paypal</span>
                            @endif
                    </td>
                    <td>
                        <a href="" id="delete" class="btn btn-danger btn-sm btn-block"><i class="fas fa-trash"></i></a>
                    </td>
                </tr>
            @endforeach
          </tbody>
        </table>
      </div>
</div>
@endsection