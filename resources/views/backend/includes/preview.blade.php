   <div class="modal fade myPreviewImage" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
       aria-hidden="true">
       <div class="modal-dialog modal-xl">
           <div class="modal-content">
               <div class="modal-header">
                   <h5 class="modal-title h4" id="myLargeModalLabel">Your Given Informations Location!</h5>
                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                       <span aria-hidden="true">×</span>
                   </button>
               </div>
               <div class="modal-body">
                   <img id="myPreviewImage" class="img-fluid" src="" alt="previewImage">
               </div>
               <div class="modal-footer">
                   <button type="button" class="close btn btn-danger" data-dismiss="modal" aria-label="Close">
                       Close
                   </button>
               </div>
           </div>
       </div>
   </div>



   {{-- preview image ajax request for every page --}}
   <script>
       $(document).ready(function() {
           $('.preview').click(function(e) {
               e.preventDefault();
               var name = $(this).data('name');

               $.ajax({
                   type: "GET",
                   url: "{{ route('preview-image') }}",
                   data: {
                       name: name
                   },
                   success: function(response) {
                       $('#myPreviewImage').attr('src', response);
                       $('.myPreviewImage').modal('show');
                   }
               });
           });
       });
   </script>
