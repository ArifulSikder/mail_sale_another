

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
                        <div class="body">
                            <h4 class="p-2">Static Pages Slug: </h4>
                            <div class="d-flex p-2">
                                <p>| home |</p>
                                <p>| product |</p>
                                <p>| faq |</p>
                                <p>| about us |</p>
                                <p>| disclaimer |</p>
                                <p>| terms of service |</p>
                                <p>| privacy policy |</p>
                                <p>| refund policy |</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">Add Seo Content</div>
                    <div class="card-body">
                        <form method="POST" action="<?php echo e(route('store-seo-content')); ?>" enctype="multipart/form-data">
                            <?php echo csrf_field(); ?>
                            <div class="modal-body row">

                                <div class="form-group col-md-4">
                                    <label for="title">Title</label>
                                    <input type="text" class="form-control" id="title" name="title"
                                        placeholder="Enter Title" value="<?php echo e(old('title')); ?>">

                                    <?php $__errorArgs = ['title'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="slug">Slug</label>
                                    <input type="text" class="form-control" id="slug" name="slug"
                                        placeholder="Enter Slug" value="<?php echo e(old('slug')); ?>">

                                    <?php $__errorArgs = ['slug'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="author">Author</label>
                                    <input type="text" class="form-control" id="author" name="author"
                                        placeholder="Enter Author" value="<?php echo e(old('author')); ?>">

                                    <?php $__errorArgs = ['author'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="keywords">Keywords</label>
                                    <div class="myContainer"></div>
                                    <input type="text" class="form-control inputTags" hidden id="keywords"
                                        name="keywords" placeholder="Enter Keywords" value="<?php echo e(old('keywords')); ?>">

                                    <?php $__errorArgs = ['keywords'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="published_time">Published Time</label>
                                    <input type="datetime-local" class="form-control" id="published_time"
                                        name="published_time" placeholder="Enter Published Time"
                                        value="<?php echo e(old('published_time')); ?>">

                                    <?php $__errorArgs = ['published_time'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="modified_time">Modified Time</label>
                                    <input type="datetime-local" class="form-control" id="modified_time"
                                        name="modified_time" placeholder="Enter Modified Time"
                                        value="<?php echo e(old('modified_time')); ?>">

                                    <?php $__errorArgs = ['modified_time'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="expiration_time">Expiration Time</label>
                                    <input type="datetime-local" class="form-control" id="expiration_time"
                                        name="expiration_time" placeholder="Enter Expiration Time"
                                        value="<?php echo e(old('expiration_time')); ?>">

                                    <?php $__errorArgs = ['expiration_time'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="section">Section</label>
                                    <input type="text" class="form-control" id="section" name="section"
                                        placeholder="Enter Section" value="<?php echo e(old('section')); ?>">

                                    <?php $__errorArgs = ['section'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="canonical">Canonical</label>
                                    <input type="text" class="form-control" id="canonical" name="canonical"
                                        placeholder="Enter Canonical" value="<?php echo e(old('canonical')); ?>">

                                    <?php $__errorArgs = ['canonical'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="og_locale">Og Locale</label>
                                    <input type="text" class="form-control" id="og_locale" name="og_locale"
                                        placeholder="Enter Og Locale" value="<?php echo e(old('og_locale')); ?>">

                                    <?php $__errorArgs = ['og_locale'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="og_url">Og Url</label>
                                    <input type="text" class="form-control" id="og_url" name="og_url"
                                        placeholder="Enter Og Url" value="<?php echo e(old('og_url')); ?>">

                                    <?php $__errorArgs = ['og_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>


                                <div class="form-group col-md-4">
                                    <label for="og_type">Og Type</label>
                                    <input type="text" class="form-control" id="og_type" name="og_type"
                                        placeholder="Enter Og Type" value="<?php echo e(old('og_type')); ?>">

                                    <?php $__errorArgs = ['og_type'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>



                                <div class="form-group col-md-4">
                                    <label for="image_url">Image Url</label>
                                    <input type="text" class="form-control" id="image_url" name="image_url"
                                        placeholder="Enter Image Url" value="<?php echo e(old('image_url')); ?>">

                                    <?php $__errorArgs = ['image_url'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>


                                <div class="form-group col-md-4">
                                    <label for="link_img_size">Link Image Size</label>
                                    <input type="number" class="form-control" id="link_img_size" name="link_img_size"
                                        placeholder="Enter Link Image Size" value="<?php echo e(old('link_img_size')); ?>">

                                    <?php $__errorArgs = ['link_img_size'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="image_height">Image Height</label>
                                    <input type="number" class="form-control" id="image_height" name="image_height"
                                        placeholder="Enter Image Height" value="<?php echo e(old('image_height')); ?>">

                                    <?php $__errorArgs = ['image_height'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>


                                <div class="form-group col-md-4">
                                    <label for="image_width">Image Width</label>
                                    <input type="number" class="form-control" id="image_width" name="image_width"
                                        placeholder="Enter Image Width" value="<?php echo e(old('image_width')); ?>">

                                    <?php $__errorArgs = ['image_width'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>


                                <div class="form-group col-md-4">
                                    <label for="twitter_side">Twitter Side</label>
                                    <input type="text" class="form-control" id="twitter_side" name="twitter_side"
                                        placeholder="Enter Twitter Side" value="<?php echo e(old('twitter_side')); ?>">

                                    <?php $__errorArgs = ['twitter_side'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>




                                <div class="form-group col-md-4">
                                    <label for="image">Image</label>
                                    <input type="file" class="form-control photoUpload" id="image" name="image"
                                        placeholder="Choose Image">

                                    <?php $__errorArgs = ['image'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    <div>
                                        <img src="" class="previewHolder" alt="">
                                    </div>
                                </div>


                                <div class="form-group col-md-12">
                                    <label for="ckeditor">Description</label>
                                    <textarea type="text" class="form-control textEditor" id="ckeditor" name="description"
                                        placeholder="Enter Description"><?php echo e(old('description')); ?></textarea>

                                    <?php $__errorArgs = ['description'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="invalid-feedback d-block" role="alert">
                                            <strong><?php echo e($message); ?></strong>
                                        </span>
                                    <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                </div>

                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary btn-block">Submit</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </section>

        <?php $__env->startPush('js'); ?>
        <?php echo $__env->make('components.ckeditor', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
            <script>
                $(document).ready(function() {
                    ckeditor('ckeditor');
                    //for tag name
                    $('.myContainer').TagsInput({
                        tagInputPlaceholder: 'Enter Your Tag Name ',
                        tagHiddenInput: $('.inputTags'),
                        tagContainerBorderColor: '#d3d3d3',
                        tagBackgroundColor: '#222',
                        tagColor: '#fff',
                        tagBorderColor: '#688eac'
                    });

                    // for slug 
                    function Slug(Text) {
                        return Text.toLowerCase().replace(/ /g, '-').replace(/[^\w-]+/g, '');
                    }

                    $('#name_e').keyup(function(e) {
                        e.preventDefault();

                        var slug = $(this).val();
                        $('#slug_e').val(Slug(slug));
                    });

                    $('#title').keyup(function(e) {
                        e.preventDefault();

                        var slug = $(this).val();
                        $('#slug').val(Slug(slug));
                    });
                });
            </script>
        <?php $__env->stopPush(); ?>
    </div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('backend.layouts.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/backend/seo/addSeoContent.blade.php ENDPATH**/ ?>