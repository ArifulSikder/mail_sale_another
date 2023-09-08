

<?php $__env->startSection('title', 'Dashboard'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Users</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a></li>
              <li class="breadcrumb-item active">Users</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="my-1 d-flex justify-content-end">
            <form action="" class="col-4">
                <div class="form-group d-flex">
                    <input class="form-control" type="search" placeholder="Search By Username Or Type" name="search" value="<?php echo e($search); ?>">
                    <button class="btn btn-info btn-sm ml-2">Search</button>
                </div>
            </form> 
        </div>
        <div class="card">
            <div class="card-header">Users Table</div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">Serial</th>
                        <th scope="col">Name/Username</th>
                        <th scope="col">Email</th>
                        <th scope="col">Type</th>
                        <th scope="col">Register Date</th>
                        <th scope="col">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                        <?php
                            $serials = ($users->currentpage() - 1) * $users->perpage() + 1;
                        ?>
                        <?php $__currentLoopData = $users; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $user): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <th scope="row"><?php echo e($serials++); ?></th>
                                <td>
                                    <span class="badge badge-<?php echo e($user->f_name == null ? 'danger' : ''); ?>"><?php echo e($user->f_name == null ? 'Empty' : $user->f_name); ?></span>/ <?php echo e($user->username); ?>

                                </td>
                                <td><?php echo e($user->email); ?></td>
                                <td><?php echo e($user->type); ?></td>
                                <td><?php echo e($user->created_at); ?></td>
                                <td>
                                    <a  href="<?php echo e(url('edit-user/'. $user->id)); ?>" class="btn btn-primary btn-sm">
                                      <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="<?php echo e(url('delete-user/'. $user->id)); ?>" id="delete" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></a>
                                    <a href="<?php echo e(url('user-details/'. $user->id)); ?>"  class="btn btn-success btn-sm"><i class="fas fa-eye"></i></a>
                                </td>
                            </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </tbody>
                  </table>
                </div>
            </div>
      </div>
    </section>
  </div>

<?php $__env->stopSection(); ?>


<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/user/user-list.blade.php ENDPATH**/ ?>