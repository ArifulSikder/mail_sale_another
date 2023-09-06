

<?php $__env->startSection('title', 'Show Business Polices'); ?>

<?php $__env->startSection('section'); ?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="mb-2 row">
                <div class="col-sm-6">
                    <h1 class="m-0">Business Policy</h1>

                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="<?php echo e(url('dashboard')); ?>">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Business Policy</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="my-1 d-flex justify-content-between">
                <div>
                    <a href="<?php echo e(route('add-business-policy')); ?>" class="btn btn-success" >
                        <i class="fas fa-plus"></i> Add Business Policy
                    </a>
                </div>
                <form action="">
                    <div class="form-group d-flex">
                        <input class="form-control" type="search" placeholder="Search By Policy Type" name="search" value="">
                        <button class="btn btn-info btn-sm ml-2">Search</button>
                    </div>
                </form> 
            </div>
            <div class="card">
                <div class="card-header">Home Details</div>
                <div class="card-body">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 5%">Serial</th>
                                <th scope="col" style="width: 10%">Policy Type</th>
                                <th scope="col" style="width: 50%">Description</th>
                                <th scope="col" style="width: 10%">Active Status</th>
                                <th scope="col" style="width: 10%">Add Date</th>
                                <th scope="col" style="width: 15%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                $serials = ($polices->currentpage() - 1) * $polices->perpage() + 1;
                            ?> 
                            <?php $__currentLoopData = $polices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $policy): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <tr>
                                    <th><?php echo e($serials++); ?></th>
                                    <td>
                                        <?php if($policy->policy_type == 1): ?>
                                            <span>Refund Policy</span>
                                        <?php elseif($policy->policy_type == 2): ?>
                                            <span>Privacy Policy</span>
                                        <?php elseif($policy->policy_type == 3): ?>
                                            <span>Terms Of Service</span>
                                        <?php elseif($policy->policy_type == 4): ?>
                                            <span>Disclaimer</span>
                                        <?php endif; ?>
                                        
                                    </td>

                                    <td><?php echo Str::words($policy->description, 15, ' ....'); ?> <?php if(Str::of($policy->description)->wordCount() > 15): ?>
                                        <a href="" class="editdes" data-description="<?php echo e($policy->description); ?>">
                                            See More
                                        </a>
                                    <?php endif; ?> 
                                    <td><span
                                            class="badge badge-<?php echo e($policy->active_status == 0 ? 'danger': 'success'); ?>"><?php echo e($policy->active_status == 0 ? 'Inactive': 'Active'); ?></span>
                                    </td>
                                    <td><?php echo e($policy->created_at->toFormateDate()); ?></td>
                                    <td>
                                        <div class="dropdown">
                                            <button type="button"
                                                class="btn btn-primary btn-sm rounded-pill btn-rounded dropdown-toggle"
                                                data-toggle="dropdown">
                                                Options
                                            </button>
                                            <div class="text-center dropdown-menu bg-light-blue">

                                                <?php if($policy->active_status == 0): ?>
                                                   <a href="<?php echo e(route('update-policy-status', ['id' => $policy->id , 'status' => $policy->active_status ])); ?>" class="btn btn-success btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Active</a> 
                                                <?php else: ?>
                                                    <a href="<?php echo e(route('update-policy-status', ['id' => $policy->id , 'status' => $policy->active_status ])); ?>" class="btn btn-danger btn-sm btn-block"><i class="fas fa-angle-double-right"></i> Inactive</a> 
                                                <?php endif; ?>

                                                <a href="<?php echo e(route('edit-business-policy', $policy->id)); ?>" class="btn btn-success btn-sm btn-block">
                                                    <i class="fas fa-edit"></i> Edit
                                                </a>

                                                <a href="<?php echo e(route('delete-business-policy', $policy->id)); ?>"
                                                    id="delete" class="btn btn-danger btn-sm btn-block"><i
                                                        class="fas fa-trash"></i> Delete</a>
                                                

                                            </div>
                                        </div>


                                    </td>
                                </tr>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </tbody>
                    </table>
                    <div class="float-right my-2">
                        <?php echo e($polices->links()); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>


  
</div>


<div class="modal fade" id="showdes" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Show Description</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
                <div class="modal-body">

                    <div class="form-group" >
                        <label for="description">Description</label>
                        <p id="description"></p>

                    </div>




                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
        </div>
    </div>
</div>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('script'); ?>
    <script>
    $(document).ready(function () {
        $('.editdes').click(function (e) {
                e.preventDefault();
                $('#showdes').modal('show');
                $("#description").html($(this).data('description'));
        });
    });
</script>
<?php $__env->stopSection(); ?>






<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/homepage/businessPolicy/indexPolices.blade.php ENDPATH**/ ?>