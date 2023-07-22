<aside class="main-sidebar sidebar-dark-primary elevation-4 bg-light-blue">
    <!-- Brand Logo -->
    <a href="<?php echo e(url('/')); ?>" class="brand-link text-center">
        <span class="brand-text font-weight-light">Altab Mail Sale</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- SidebarSearch Form -->
        <div class="form-inline mt-2">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search"
                    id="menu-search" onkeyup="menuSearch()">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="true"
                id="searchMenu">

            </ul>
            <ul class="nav nav-pills nav-sidebar flex-column mt-2" data-widget="treeview" role="menu"
                data-accordion="true" id="MainMenu">
                <!-- Add icons to the links using the .nav-icon class
                    with font-awesome or any other icon font library -->
                <li class="nav-item <?php echo e(request()->is(['dashboard']) ? 'menu-open' : ''); ?>">
                    <a href="<?php echo e(url('dashboard')); ?>" class="nav-link <?php echo e(request()->is(['dashboard']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>


                <li class="nav-item <?php echo e(request()->is(['category','sub-category','products', 'product-advantages*', 'product-details*','product-description*']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['category','sub-category','products', 'product-advantages*', 'product-details*','product-description*']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                            Product
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('category')); ?>" class="nav-link <?php echo e(request()->is(['category']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('sub-category')); ?>" class="nav-link <?php echo e(request()->is(['sub-category']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Sub-category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('products')); ?>" class="nav-link <?php echo e(request()->is(['products', 'product-advantages*', 'product-details*','product-description*']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product</p>
                            </a>
                        </li>
                    
                    </ul>
                </li>

                <li class="nav-header">Settings</li>


                <li class="nav-item <?php echo e(request()->is(['create-user','user-list']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['create-user', 'user-list']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-user-shield"></i>
                        <p>
                            User
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('create-user')); ?>" class="nav-link <?php echo e(request()->is(['create-user']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>User Create</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('user-list')); ?>" class="nav-link <?php echo e(request()->is(['user-list']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Users List</p>
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="nav-item <?php echo e(request()->is(['app-settings']) ? 'menu-open' : ''); ?>">
                    <a href="<?php echo e(route('app-settings')); ?>" class="nav-link <?php echo e(request()->is(['app-settings']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-cog"></i>
                        <p>
                            App Settings
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<?php /**PATH C:\laragon\www\altab_mail_sell\resources\views/backend/includes/sidebar.blade.php ENDPATH**/ ?>