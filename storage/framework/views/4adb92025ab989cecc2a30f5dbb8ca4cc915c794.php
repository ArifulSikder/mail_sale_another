<script src="<?php echo e(asset('backend/ckeditor/ckeditor.js')); ?>"></script>

<script>
    function ckeditor(id) {
        CKEDITOR.replace(id, {
                filebrowserUploadUrl: "<?php echo e(route('ckeditor.upload').'?_token='.csrf_token()); ?>",
                filebrowserUploadMethod: "form"
        });
    }
</script><?php /**PATH C:\laragon\www\mail_sale_another\resources\views/components/ckeditor.blade.php ENDPATH**/ ?>