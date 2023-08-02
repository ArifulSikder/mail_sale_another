<aside class="main-sidebar sidebar-dark-primary elevation-4 bg-light-blue">
    <!-- Brand Logo -->
    <a href="{{ url('/') }}" class="text-center brand-link">
        <span class="brand-text font-weight-light">Altab Mail Sale</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- SidebarSearch Form -->
        <div class="mt-2 form-inline">
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
            <ul class="mt-2 nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                data-accordion="true" id="MainMenu">
                <!-- Add icons to the links using the .nav-icon class
                    with font-awesome or any other icon font library -->
                <li class="nav-item {{ request()->is(['dashboard']) ? 'menu-open' : '' }}">
                    <a href="{{ url('dashboard') }}" class="nav-link {{ request()->is(['dashboard']) ? 'active' : '' }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>


                <li class="nav-item {{ request()->is(['category','sub-category','products', 'product-advantages*', 'product-details*','product-description*']) ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is(['category','sub-category','products', 'product-advantages*', 'product-details*','product-description*']) ? 'active' : '' }}">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                            Product
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('category') }}" class="nav-link {{ request()->is(['category']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('sub-category') }}" class="nav-link {{ request()->is(['sub-category']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Sub-category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('products') }}" class="nav-link {{ request()->is(['products', 'product-advantages*', 'product-details*','product-description*']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product</p>
                            </a>
                        </li>
                    
                    </ul>
                </li>

                <!-- HOME PAGE  -->
                <li class="nav-item {{ request()->is(['add-details', 'show-home-details', 'meet-team', 'slider']) ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is(['add-details', 'show-home-details', 'meet-team', 'slider']) ? 'active' : '' }}">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Home-page
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('add-details') }}" class="nav-link {{ request()->is(['add-details']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Add Details</p>
                            </a>
                        </li> 
                        <li class="nav-item">
                            <a href="{{ route('show-details') }}" class="nav-link {{ request()->is(['show-home-details']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Show Details</p>
                            </a>
                        </li>       
                        <li class="nav-item">
                            <a href="{{ route('meet-team') }}" class="nav-link {{ request()->is(['meet-team']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Meet Team</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('top-slider') }}" class="nav-link {{ request()->is(['slider']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Slider</p>
                            </a>
                        </li>           
                    </ul>
                </li>

        

                <li class="nav-header">Settings</li>


                <li class="nav-item {{ request()->is(['create-user','user-list']) ? 'menu-open' : '' }}">
                    <a href="#" class="nav-link {{ request()->is(['create-user', 'user-list']) ? 'active' : '' }}">
                        <i class="nav-icon fas fa-user-shield"></i>
                        <p>
                            User
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('create-user') }}" class="nav-link {{ request()->is(['create-user']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>User Create</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('user-list') }}" class="nav-link {{ request()->is(['user-list']) ? 'active' : '' }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Users List</p>
                            </a>
                        </li>
                    </ul>
                </li>


                <li class="nav-item {{ request()->is(['app-settings']) ? 'menu-open' : '' }}">
                    <a href="{{ route('app-settings') }}" class="nav-link {{ request()->is(['app-settings']) ? 'active' : '' }}">
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
