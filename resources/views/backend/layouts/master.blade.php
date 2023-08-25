<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title')</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- all -->
    <link rel="stylesheet" href="{{ asset('build/assets/app-36dc2d77.css') }} ">
    {{-- custom --}}
    <link rel="stylesheet" href="{{ asset('backend/dist/css/custom.css') }} ">
    {{-- toastr --}}
    <link rel="stylesheet" href="{{ asset('backend/plugins/toastr/toastr.css') }} ">
    {{-- sweetalert2 --}}
    <link rel="stylesheet" href="{{ asset('backend/plugins/sweetalert2/sweetalert2.min.css') }}">
    {{-- summernote --}}
    <link rel="stylesheet" href="{{ asset('backend/plugins/summernote/summernote-bs4.min.css') }}">
    {{-- select2  --}}
    <link rel="stylesheet" href="{{ asset('backend/plugins/select2/css/select2.min.css') }}">
    {{-- tag input --}}
    <link rel="stylesheet" href="{{ asset('backend/plugins/tag-input/css/taginput.css') }}">
    {{-- alpine js  --}}
    <script src="{{ asset('backend/plugins/alpine/alpine.min.js') }}" defer></script>
</head>

<body class="hold-transition sidebar-mini layout-fixed">
    <div id="preloader">
        <div class="load-me">
            <div class="la-ball-running-dots la-2x ball-color">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <!-- Navbar -->
        @include('backend.includes.sidebar')
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        @include('backend.includes.header')

        <!-- Content Wrapper. Contains page content -->

        @yield('section')

        @include('backend.includes.footer')
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="{{ asset('backend/plugins/jquery/jquery.min.js') }}"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="{{ asset('backend/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
        $.widget.bridge('uibutton', $.ui.button)
    </script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('backend/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <!-- daterangepicker -->
    <script src="{{ asset('backend/plugins/moment/moment.min.js') }}"></script>
    <script src="{{ asset('backend/plugins/daterangepicker/daterangepicker.js') }}"></script>
    <!-- Tempusdominus Bootstrap 4 -->
    <script src="{{ asset('backend/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js') }}"></script>
    <!-- Summernote -->
    <script src="{{ asset('backend/plugins/summernote/summernote-bs4.min.js') }}"></script>
    <!-- overlayScrollbars -->
    <script src="{{ asset('backend/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('backend/plugins/adminlte.min.js') }}"></script>
    {{-- apex chart  --}}
    <script src="{{ asset('backend/plugins/apex-chart/apexcharts.min.js') }}"></script>
    {{-- toastr --}}
    <script src="{{ asset('backend/plugins/toastr/toastr.min.js') }}"></script>
    {{-- sweetalert2 --}}
    <script src="{{ asset('backend/plugins/sweetalert2/sweetalert2.min.js') }}"></script>
    {{-- select2  --}}
    <script src="{{ asset('backend/plugins/select2/js/select2.min.js') }}"></script>
    <!-- taginput -->
    <script src="{{ asset('backend/plugins/tag-input/js/taginput.js') }}"></script>


    {{-- menu search jquery --}}
    <script>
        function menuSearch() {

            var filter, item;
            filter = $('#menu-search').val().toUpperCase();
            console.log(filter);
            items = $('#MainMenu').find('a');

            items = items.filter(function(i, item) {
                if ($(item).find("p")[0].innerText.toUpperCase().indexOf(filter) > -1 && $(item).attr('href') !==
                    '#') {
                    return item;
                }
            });
            if (filter !== '') {
                $('#MainMenu').addClass('d-none');
                $('#searchMenu').html('');
                if (items.length > 0) {
                    for (i = 0; i < items.length; i++) {
                        const text = $(items[i]).find('p')[0].innerText;
                        const link = $(items[i]).attr('href');

                        $('#searchMenu').append(
                            `
                            <li class="nav-item has-treeview">
                                  <a href="${link}" class="nav-link">
                                      _ _
                                      <p>
                                          ${text}
                                      </p>
                                  </a>
                              </li>
                            `
                        )
                    }
                }

            } else {

                $('#MainMenu').removeClass('d-none');
                $('#searchMenu').html('');
            }
        }
    </script>

    {{-- custom script --}}
    <script>
        window.onload = function() {
            window.addEventListener("beforeunload", function(e) {
                $('#preloader').fadeIn();
                $('.wrapper,.main-footer').hide();

            });
            $('#preloader').fadeOut();
            $('.wrapper,.main-footer').show();
        };
    </script>

    @if (Session::has('success'))
        <script>
            toastr.success("{{ Session::get('success') }}")
        </script>
    @elseif (!empty(Session::get('error')))
        <script>
            toastr.error("{{ Session::get('error') }}")
        </script>
    @endif

    <script>
        $(document).on("click", "#delete", function(e) {
            e.preventDefault();
            var link = $(this).attr("href");
            const swalWithBootstrapButtons = Swal.mixin({
                customClass: {
                    confirmButton: 'btn btn-success',
                    cancelButton: 'btn btn-danger'
                },
                buttonsStyling: false
            })

            swalWithBootstrapButtons.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Yes, delete it!',
                cancelButtonText: 'No, cancel!',
                reverseButtons: true
            }).then((result) => {
                if (result.isConfirmed) {

                    window.location.href = link;
                    swalWithBootstrapButtons.fire(
                        'Deleted!',
                        'Your file has been deleted.',
                        'success'
                    )
                } else if (
                    /* Read more about handling dismissals below */
                    result.dismiss === Swal.DismissReason.cancel
                ) {
                    swalWithBootstrapButtons.fire(
                        'Cancelled',
                        'Your imaginary file is safe :)',
                        'error'
                    )
                }
            })

        });
    </script>
    {{-- single image preview for insert and update --}}
    <script>
        //preview image user
        function readURL(input) {
            var selectorIdAndClass = $('#previewHolder');
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    selectorIdAndClass.removeClass('d-none');
                    selectorIdAndClass.attr({
                        'src': '',
                        'src': e.target.result,
                    });
                    selectorIdAndClass.css('width', '100px')
                }
                reader.readAsDataURL(input.files[0]);
            } else {
                alert('select a file to see preview');
                selectorIdAndClass.attr('src', '');
            }
        }
        $("#photoUpload").change(function() {
            readURL(this);
        });

        function readURL2(input) {
            var selectorIdAndClass = $('.previewHolder');
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    selectorIdAndClass.removeClass('d-none');
                    selectorIdAndClass.attr({
                        'src': '',
                        'src': e.target.result,
                    });
                    selectorIdAndClass.css('width', '100px')
                }
                reader.readAsDataURL(input.files[0]);
            } else {
                alert('select a file to see preview');
                selectorIdAndClass.attr('src', '');
            }
        }
        $(".photoUpload").change(function() {
            readURL2(this);
        });

        // dynamic  
        function pleasePreview(input, previewId) {
            var selectorIdAndClass = $('#' + previewId);

            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    selectorIdAndClass.removeClass('d-none');
                    selectorIdAndClass.attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            } else {
                alert('Select a file to see the preview');
                selectorIdAndClass.attr('src', '');
            }
        }
    </script>


    <script>
        $(function() {
            $('.textarea').summernote();
            // $('.select2').select2({
            //     placeholder: function() {
            //         $(this).data('placeholder');
            //     }
            // });
        })
    </script>

    <x-select2 />
    @yield('script')
    @stack('js')
</body>

</html>
