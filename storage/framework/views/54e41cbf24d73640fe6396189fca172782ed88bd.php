<script>
    $(function () {
        
        $('.select2').select2({
            theme: "bootstrap4",
            placeholder: function() {
                $(this).data('placeholder');
            }
        });

    });
</script>
<?php /**PATH C:\laragon\www\altab_mail_sell\resources\views/components/select2.blade.php ENDPATH**/ ?>