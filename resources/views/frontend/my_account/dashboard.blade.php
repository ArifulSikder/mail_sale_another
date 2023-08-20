@extends('frontend.my-account')
@section('myAccount')
    <div class="tab-pane fade show active" id="v-pills-dboard" role="tabpanel" aria-labelledby="v-pills-dboard-tab"
        tabindex="0">
        <p>Hello <b>{{ Auth::user()->username }}</b> (not <b>{{ Auth::user()->username }}</b>?
            <span class="link">
                <a href="{{ url('logout') }}">Log out</a>
            </span>)
        </p>
        <p>From your account dashboard you can view your <span class="link"><a href="#">recent orders</a></span>,
            manage your <span class="link"><a href="#">shipping and billing addresses</a></span>, and <span
                class="link"><a href="#">edit your password and account
                    details</a></span>.</p>
        <div class="common_button">
            <a href="" class="btn">Orders</a>
            <a href="" class="btn">Downloads</a>
            <a href="" class="btn">Addresses</a>
            <a href="" class="btn">Account details</a>
        </div>
    </div>
@endsection
