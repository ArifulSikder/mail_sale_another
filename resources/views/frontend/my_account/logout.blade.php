@section('myAccount')
    <div class="tab-pane fade" id="v-pills-logout" role="tabpanel" aria-labelledby="v-pills-logout-tab" tabindex="0">
        <p>
            <span class="green_title">
                <i class="fa-solid fa-check"></i>
                Are you sure you want to log out?
            </span>
            <span class="link"><a href="{{ url('logout') }}">Confirm and log out</a></span>
        </p>

        <p>Hello <b>{{ Auth::user()->username }}</b> (not <b>{{ Auth::user()->username }}</b>?
            <span class="link"><a href="{{ url('logout') }}">Log out</a></span>)
        </p>
        <p>From your account dashboard you can view your <span class="link"><a href="#">recent orders</a></span>,
            manage your <span class="link"><a href="#">shipping and billing addresses</a></span>,
            and <span class="link"><a href="#">edit your password and account
                    details</a></span>.</p>

        <div class="common_button">
            <button class="btn">Dashboard</button>
            <button class="btn">Orders</button>
            <button class="btn">Downloads</button>
            <button class="btn">Addresses</button>
            <button class="btn">Account details</button>
        </div>
    </div>
@endsection
