<nav class="main-header navbar navbar-expand navbar-white navbar-light">
  <!-- Left navbar links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>
    <li class="nav-item d-none d-sm-inline-block">
      <a href="index3.html" class="nav-link">Home</a>
    </li>
    <li class="nav-item d-none d-sm-inline-block">
      <a href="#" class="nav-link">Contact</a>
    </li>
  </ul>

  <!-- Right navbar links -->
  <ul class="navbar-nav ml-auto">
    <!-- Navbar Search -->
    
    <li class="nav-item">
      <div class="dropdown">
          <a href="#" class="nav-link nav-link-profile  pt-0" data-toggle="dropdown">
              <img style="height: 35px; width: 34px;" class="profile-user-img img-fluid img-circle"
                  src="https://picsum.photos/200"
                  alt="https://picsum.photos/200">
              <span class="logged-name text-info"><span class="hidden-md-down"></span></span>
          </a>
          <div class="dropdown-menu dropdown-menu-right bg-light-blue text-white">
              <ul class="list-unstyled user-profile-nav list-group ">
                  <li class="list-group-item bg-light-blue">
                      <p class="p-0">Mr Noyon</p>
                      <small class="p-0">
                          Admin
                      </small>
                  </li>
                  <li class="list-group-item bg-light-blue">
                      <a href="#"><i class="far fa-user"></i>
                          Profile
                      </a>
                  </li>
                  <li class="list-group-item bg-light-blue">
                      <a href="<?php echo e(url('logout')); ?>" class="text-danger"
                          onclick="event.preventDefault();
                                       document.getElementById('logout-form').submit();">
                          <i class="icon ion-power"></i> Log Out
                      </a>
                      <form id="logout-form" action="<?php echo e(url('logout')); ?>" method="POST" class="d-none">
                          <?php echo csrf_field(); ?>
                      </form>
                  </li>
              </ul>
          </div>
      </div>
  </li>
    <!-- Messages Dropdown Menu -->
    
  </ul>
</nav><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/includes/header.blade.php ENDPATH**/ ?>