<aside class="main-sidebar sidebar-dark-primary elevation-4 bg-light-blue">
    <!-- Brand Logo -->
    <a href="<?php echo e(url('/')); ?>" target="_blank" class="text-center brand-link">
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
                <li class="nav-item <?php echo e(request()->is(['dashboard']) ? 'menu-open' : ''); ?>">
                    <a href="<?php echo e(url('dashboard')); ?>" class="nav-link <?php echo e(request()->is(['dashboard']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>

                <!-- Product  Management  -->
                <li class="nav-item <?php echo e(request()->is(['stocks', 'sellers', 'coupons', 'category','sub-category','products', 'product-advantages*', 'product-details*','product-description*', 'purchase', 'subcategory-description*']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['stocks', 'sellers', 'coupons', 'category','sub-category','products', 'product-advantages*', 'product-details*','product-description*', 'purchase', 'subcategory-description*']) ? 'active' : ''); ?>">
                        <i class="nav-icon fab fa-product-hunt"></i>
                        <p>
                            Product Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('sellers')); ?>" class="nav-link <?php echo e(request()->is(['sellers']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Add Seller</p>
                            </a>
                        </li>   
                        <li class="nav-item">
                            <a href="<?php echo e(route('purchase')); ?>" class="nav-link <?php echo e(request()->is(['purchase']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Purchase</p>
                            </a>
                        </li>  
                        <li class="nav-item">
                            <a href="<?php echo e(route('stocks')); ?>" class="nav-link <?php echo e(request()->is(['stocks']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Stock</p>
                            </a>
                        </li>  
                        <li class="nav-item">
                            <a href="<?php echo e(route('coupons')); ?>" class="nav-link <?php echo e(request()->is(['coupons']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Add Coupon</p>
                            </a>
                        </li>  
                        <li class="nav-item">
                            <a href="<?php echo e(route('category')); ?>" class="nav-link <?php echo e(request()->is(['category']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('sub-category')); ?>" class="nav-link <?php echo e(request()->is(['sub-category', 'subcategory-description*']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Sub-category</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('products')); ?>" class="nav-link <?php echo e(request()->is(['products', 'product-advantages*', 'product-details*','product-description*']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Products</p>
                            </a>
                        </li>
                       
                    </ul>
                </li>

                <li class="nav-item <?php echo e(request()->is(['orders']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['orders']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-copy"></i>
                        <p>
                            Sales
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('orders')); ?>" class="nav-link <?php echo e(request()->is(['orders']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Orders</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- HOME PAGE  -->
                <li class="nav-item <?php echo e(request()->is(['home-details', 'meet-team', 'slider', 'product-guarantee' ]) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['shome-details', 'meet-team', 'slider', 'product-guarantee']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-home"></i>
                        <p>
                            Home-page
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('home-details')); ?>" class="nav-link <?php echo e(request()->is(['home-details']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Home Details</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('product-guarantee')); ?>" class="nav-link <?php echo e(request()->is(['product-guarantee']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Product Guarantee</p>
                            </a>
                        </li>        
                        <li class="nav-item">
                            <a href="<?php echo e(route('meet-team')); ?>" class="nav-link <?php echo e(request()->is(['meet-team']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Meet Team</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('top-slider')); ?>" class="nav-link <?php echo e(request()->is(['slider']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Slider</p>
                            </a>
                        </li>              
                    </ul>
                </li>

                
                <!-- About us  -->
                <li class="nav-item <?php echo e(request()->is(['show-about-us']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['show-about-us']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            About Us
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('show-about-us')); ?>" class="nav-link <?php echo e(request()->is(['show-about-us']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>About Us</p>
                            </a>
                        </li>              
                    </ul>
                </li>

                <!-- CUSTOMER CONTACT  -->
                <li class="nav-item <?php echo e(request()->is(['customer-contact', 'show-individual-message*', 'send-mail-index', 'show-individual-sent*']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['customer-contact', 'show-individual-message*', 'send-mail-index', 'show-individual-sent*']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-envelope"></i>
                        <p>
                            Customer Contact
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('customer-contact')); ?>" class="nav-link <?php echo e(request()->is(['customer-contact', 'show-individual-message*', 'send-mail-index', 'show-individual-sent*']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Inbox</p>    
                            </a>
                        </li>       
                    </ul>
                </li>

                <!-- SEO  -->
                <li class="nav-item <?php echo e(request()->is('add-seo-pages','pages-list','page-content-update*') ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is('add-seo-pages','pages-list','page-content-update*') ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-globe-africa"></i>
                        <p>
                            SEO Pages
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(url('add-seo-pages')); ?>" class="nav-link <?php echo e(request()->is('add-seo-pages') ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Add Seo Page</p>    
                            </a>
                        </li>       
                        <li class="nav-item">
                            <a href="<?php echo e(url('pages-list')); ?>" class="nav-link <?php echo e(request()->is('pages-list','page-content-update*') ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Pages List</p>    
                            </a>
                        </li>       
                    </ul>
                </li>

                <!-- REPORT  -->
                <li class="nav-item <?php echo e(request()->is('sales-report', 'order-report', 'revenue-report') ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is('sales-report', 'order-report', 'revenue-report') ? 'active' : ''); ?>">
                        <i class="nav-icon far fa-file-alt"></i>
                        <p>
                            Reports
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('sales-report')); ?>" class="nav-link <?php echo e(request()->is('sales-report') ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Sales Report</p>    
                            </a>
                        </li>       
                        <li class="nav-item">
                            <a href="<?php echo e(route('order-report')); ?>" class="nav-link <?php echo e(request()->is('order-report') ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Order Report</p>    
                            </a>
                        </li> 
                        <li class="nav-item">
                            <a href="<?php echo e(route('revenue-report')); ?>" class="nav-link <?php echo e(request()->is('revenue-report') ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Revenue</p>    
                            </a>
                        </li>       
                    </ul>
                </li>

                <li class="nav-header">Settings</li>

                <!-- USER -->
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

                <!-- PAYMENT API -->
                <li class="nav-item <?php echo e(request()->is(['pay-api-list']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['pay-api-list']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-dollar-sign"></i>
                        <p>
                            Payment API
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('pay-api-list')); ?>" class="nav-link <?php echo e(request()->is(['pay-api-list']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>API List</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <!-- Settings -->
                <li class="nav-item <?php echo e(request()->is(['add-business-policy', 'show-business-policy', 'sms-templete', 'set-email']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['add-business-policy', 'show-business-policy', 'sms-templete', 'set-email']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-cog"></i>
                        <p>
                            Settings
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('add-business-policy')); ?>" class="nav-link <?php echo e(request()->is(['add-business-policy']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Add Business Policy</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('show-business-policy')); ?>" class="nav-link <?php echo e(request()->is(['show-business-policy']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Show Business Policy</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo e(route('sms-templete')); ?>" class="nav-link <?php echo e(request()->is(['sms-templete']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>SMS Templete</p>
                            </a>
                        </li>  
                        <li class="nav-item">
                            <a href="<?php echo e(route('set-email')); ?>" class="nav-link <?php echo e(request()->is(['set-email']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Set Email</p>
                            </a>
                        </li> 
                    </ul>
                </li>

                <!-- FAQ -->
                <li class="nav-item <?php echo e(request()->is(['faq-management', 'add-faq-question*']) ? 'menu-open' : ''); ?>">
                    <a href="#" class="nav-link <?php echo e(request()->is(['faq-management', 'add-faq-question*']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-question"></i>
                        <p>
                            FAQ Management
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo e(route('faq-management')); ?>" class="nav-link <?php echo e(request()->is(['faq-management', 'add-faq-question*']) ? 'active' : ''); ?>">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Categories & Questions</p>
                            </a>
                        </li>

                    </ul>
                </li>

                <!-- APP SETUPS -->
                <li class="nav-item <?php echo e(request()->is(['app-settings']) ? 'menu-open' : ''); ?>">
                    <a href="<?php echo e(route('app-settings')); ?>" class="nav-link <?php echo e(request()->is(['app-settings']) ? 'active' : ''); ?>">
                        <i class="nav-icon fas fa-sliders-h"></i>
                        <p>
                            App Setup
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/includes/sidebar.blade.php ENDPATH**/ ?>