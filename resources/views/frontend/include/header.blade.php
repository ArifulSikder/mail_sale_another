    <!-- header section start -->
    <header class="header">
      <!-- Header Top Start -->
      <div class="header-top section">
        <div class="container">
          <div class="header-top-content">
            <div class="row">
              <div class="col-12 d-flex justify-content-end">
                <div class="header-top-links">
                  <!-- Header Links -->
                  <ul class="header-links">
                    <li class="header-social">
                      <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                      <a href="#"><i class="fa-brands fa-instagram"></i></a>
                      <a href="#"><i class="fa-brands fa-twitter"></i></a>
                      <a href="#"><i class="fa-regular fa-envelope"></i></a>
                      <a href="#"><i class="fa-brands fa-pinterest-p"></i></a>
                      <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                    </li>
                        @guest
                          <li><a href="{{ url('login') }}"><i class="fa fa-user-circle-o"></i>Sign Up</a></li>
                        @endguest
                      <li><a href="{{ url('/contact') }}">Contact</a></li>
                  </ul>
                </div><!-- Header Top Links End -->
              </div>
            </div>
          </div>
        </div><!-- Header Top End -->
      </div>

    <!-- Header Start -->
    <div class="header-section section">
        <div class="container">
          <div class="header-middle bg-white">
            <div class="row align-items-center">
              <!-- Header Logo -->
              <div class="header-logo col-md-4 col-sm-4">
                  <a href="{{ url('/') }}" class="logo">
                    <img src="{{ asset('frontend/assets/images/logo.png') }}" alt="Logo">
                  </a>
              </div>
              <!-- Header Banner -->
              <div class=" col-md-8 col-sm-8 text-end">
                  @auth
                  <a href="{{ url('my-account') }}" class="btn btn-danger">My Account</a>
                  @endauth

                  <a href="{{ url('/cart') }}" class="btn btn-danger position-relative">Cart /
                    <span><i class="fa-solid fa-cart-shopping"></i></span>
                    <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger" id="cartSubTag">
                      <strong id="cartSubNum">{{ Cart::count() }}</strong>
                    </span>
                  </a>
              </div>
            </div>
          </div>
        </div>
    </div><!-- Header End -->

    <!-- Menu Section Start -->
    <div class="main-menu">
        <div class="container">
          <div class="header-menu">
           <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ url('/') }}">Home</a>
                  </li>
                  @foreach ($categories as $category)
                  <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" aria-current="page" href="./index.html">
                      {{ $category->name }}
                    </a>
                    <ul class="dropdown-menu">
                    @foreach ($category->subcategories as $subcategory)
                      <li><a class="dropdown-item" href="{{ url("/product/". $subcategory->slug) }}">{{ $subcategory->name }}</a></li>
                    @endforeach
                    </ul>
                  </li>
                  @endforeach
                  <li class="nav-item">
                    <a class="nav-link" href="{{ url('/about-us') }}">About Us</a>
                  </li>
                  @auth
                  <li class="nav-item">
                    <a class="nav-link" href="{{ url('/my-account') }}">My Account</a>
                  </li>
                  @endauth

                  <li class="nav-item">
                    <a class="nav-link" href="{{ url('/contact') }}">Contact Us</a>
                  </li>
                </ul>
              </div>
            </div>
           </nav>
          <div class="header-search float-end">
            <button class="search-btn">
              <i class="fa fa-search"></i>
            </button>
            <div class="search-form">
              <button class="close-btn">
                <i class="fa fa-times"></i>
              </button>
              <input type="text" class="search-input">
            </div>
          </div>
         </div>
        </div>
    </div><!-- Menu Section End -->
  </header>
  <!-- header section end -->
