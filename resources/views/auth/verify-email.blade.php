<x-app-layout>
    <!-- sign up section start -->
    <section class="sign-up-form">
      <div class="container">
          <div class="content wrapper">
              <div class="my_account_header">
                  <div class="header_title">
                      <h1 class="text-center">Submit OPT</h1>
                  </div>
              </div>
              <div class="my_account_body">
                <p class="text-danger text-center">Please Check Your Email.</p>
                  <div class="row">
                      <div class="col-6 offset-3">
                          <form class="form-one"method="POST" action="{{ route('submit-opt') }}" autocomplete="off" >
                              @csrf
                              <input type="hidden" name="email" value="{{ session('email') }}">
                              <div class="mb-3 mt-3">
                                <label for="code">OTP Code</label>
                                <input type="number" class="form-control" id="code" name="otp" autocomplete="off">
                                @error('otp')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                              </div>
                              <button type="submit" class="btn log-in-button mt-3">Submit</button>
                          </form>
                          <p class="text-danger">
                            @if (session()->has('message'))
                                {{ session()->get('message') }}
                            @endif
                          </p>

                          <form class="form-one"method="POST" action="{{ route('re-send-otp') }}" autocomplete="off" >
                            @csrf
                            <input type="hidden" name="email" value="{{ session('email') }}">
                            <button type="submit" class="btn log-in-button mt-3">Re-send OTP</button>
                        </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
</x-app-layout>

