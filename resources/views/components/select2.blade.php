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
