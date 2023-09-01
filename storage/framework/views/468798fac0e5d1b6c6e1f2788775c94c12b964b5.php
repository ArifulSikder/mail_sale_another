

<?php $__env->startSection('title', 'Add SEO Content'); ?>

<?php $__env->startSection('section'); ?>
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="mb-2 row">
                    <div class="col-sm-6">
                        <h1 class="m-0">Pages List</h1>

                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                            </li>
                            <li class="breadcrumb-item active">Add SEO Content</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="col-lg-12 col-md-12">
                    <div class="card">
                        <div class="card-header">SEO Content Table</div>
                        <div class="body">
                            <div class="card text-sm">
                                <!-- /.card-header -->
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th style="width: 10%">Serial</th>
                                                <th style="width: 20%">Title</th>
                                                <th style="width: 20%">Slug</th>
                                                <th style="width: 20%">Type</th>
                                                <th style="width: 30%">Action</th>
                                            </tr>
                                        </thead>
                                        <?php
                                            $serial = ($pages->currentpage() - 1) * $pages->perpage() + 1;
                                        ?>
                                        <tbody>
                                            <?php $__empty_1 = true; $__currentLoopData = $pages; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); $__empty_1 = false; ?>
                                                <tr>
                                                    <td><?php echo e($serial++); ?></td>
                                                    <td>
                                                        <?php echo e($page->title); ?>

                                                    </td>

                                                    <td>
                                                        <?php echo e($page->slug); ?>

                                                    </td>

                                                    <td>
                                                        <?php if($page->type): ?>
                                                            <?php echo e($page->type); ?>

                                                        <?php else: ?>
                                                            Static Page
                                                        <?php endif; ?>
                                                        
                                                    </td>

                                                    <td>

                                                        <a href="<?php echo e(url('page-delete/' . $page->id)); ?>" id="delete"
                                                            type="button"
                                                            class="btn btn-danger btn-sm rounded-pill btn-rounded text-light">
                                                            <i class="fas fa-trash"></i> Delete
                                                        </a>
                                                        <a href="<?php echo e(url('page-content-update/' . $page->id)); ?>"
                                                            type="button"
                                                            class="btn btn-warning btn-sm rounded-pill btn-rounded text-light">
                                                            Update
                                                        </a>
                                                    </td>
                                                </tr>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); if ($__empty_1): ?>
                                                <tr>
                                                    <td colspan="6" class="text-center">
                                                        <img width="100px"
                                                            src="<?php echo e(asset('backend/assets/images/undraw_void_-3-ggu.svg')); ?>"
                                                            alt="" srcset="">
                                                        <br>
                                                        No result found!
                                                    </td>
                                                </tr>
                                            <?php endif; ?>


                                        </tbody>
                                        <div class="float-right my-2"><?php echo e($pages->links()); ?></div>
                                    </table>

                                    <div class="float-left">
                                        <?php echo e($pages->links()); ?>

                                    </div>
                                </div>
                                <!-- /.card-body -->
                            </div>
                        </div>
                    </div>
                </div>
        </section>

    </div>


<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/seo/indexSeoContent.blade.php ENDPATH**/ ?>