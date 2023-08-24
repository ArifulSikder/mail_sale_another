<x-app-layout>
    <!-- sign up section start -->
    <section class="sign-up-form">
      <div class="container">
          <div class="content wrapper">
              <div class="my_account_header">
                  <div class="header_title">
                      <h1 class="text-center">My Account</h1>
                  </div>
              </div>
              <div class="my_account_body">
                  <div class="row">
                      <div class="col-6 offset-3">
                          <h3>Submit OPT</h3>
                          <form class="form-one"method="POST" action="{{ route('login') }}" autocomplete="off" >
                              @csrf
                              <div class="mb-3 mt-3">
                                <label for="code">Code</label>
                                <input type="text" class="form-control" id="code" name="otp" autocomplete="off">
                                @error('otp')
                                    <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                              </div>
                              <div class="mb-3">
                                <label for="password">Password *</label>
                                <input type="password" class="form-control shadow-inset" id="password" name="password" required>
                                @error('password')
                                  <strong class="text-danger">{{ $message }}</strong>
                                @enderror
                              </div>
                              <button type="submit" class="btn log-in-button mt-3">Submit</button>
                          </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>
</x-app-layout>

