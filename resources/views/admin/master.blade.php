<!doctype html>
<html lang="en" data-layout="vertical" data-topbar="light" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="disable">


<!-- Mirrored from themesbrand.com/velzon/html/material/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 13 Jun 2024 09:07:22 GMT -->
<head>

    <meta charset="utf-8" />
    <title>Dashboard | Velzon - Admin & Dashboard Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Premium Multipurpose Admin & Dashboard Template" name="description" />
    <meta content="Themesbrand" name="author" />

    <!-- App favicon -->
    <link rel="shortcut icon" href="{{ asset('/') }}admin/assets/images/favicon.ico">

    <!-- multi.js css -->
    <link rel="stylesheet" type="text/css" href="{{ asset('/') }}admin/assets/libs/multi.js/multi.min.css" />

    <!-- jsvectormap css -->
    <link href="{{ asset('/') }}admin/assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css" />

    <!--Swiper slider css-->
    <link href="{{ asset('/') }}admin/assets/libs/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css" />

    <!-- gridjs css -->
    <link rel="stylesheet" href="{{ asset('/') }}admin/assets/libs/gridjs/theme/mermaid.min.css">
    <!-- quill css -->
    <link href="{{ asset('/') }}admin/assets/libs/quill/quill.core.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/libs/quill/quill.bubble.css" rel="stylesheet" type="text/css" />
    <link href="{{ asset('/') }}admin/assets/libs/quill/quill.snow.css" rel="stylesheet" type="text/css" />

    <!--- FONT-ICONS CSS -->
    <link href="{{ asset('/') }}admin/assets/plugins/icons/icons.css" rel="stylesheet" />

    <!-- Layout config Js -->
    <script src="{{ asset('/') }}admin/assets/js/layout.js"></script>
    <!-- Bootstrap Css -->
    <link href="{{ asset('/') }}admin/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Icons Css -->
    <link href="{{ asset('/') }}admin/assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <!-- App Css-->
    <link href="{{ asset('/') }}admin/assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <!-- custom Css-->
    <link href="{{ asset('/') }}admin/assets/css/custom.min.css" rel="stylesheet" type="text/css" />


</head>

<body>

<!-- Begin page -->
<div id="layout-wrapper">

    @include('admin.include.header')

    <!-- removeNotificationModal -->
    <div id="removeNotificationModal" class="modal fade zoomIn" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close" id="NotificationModalbtn-close"></button>
                </div>
                <div class="modal-body">
                    <div class="mt-2 text-center">
                        <lord-icon src="https://cdn.lordicon.com/gsqxdxog.json" trigger="loop" colors="primary:#f7b84b,secondary:#f06548" style="width:100px;height:100px"></lord-icon>
                        <div class="mt-4 pt-2 fs-15 mx-4 mx-sm-5">
                            <h4>Are you sure ?</h4>
                            <p class="text-muted mx-4 mb-0">Are you sure you want to remove this Notification ?</p>
                        </div>
                    </div>
                    <div class="d-flex gap-2 justify-content-center mt-4 mb-2">
                        <button type="button" class="btn w-sm btn-light" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn w-sm btn-danger" id="delete-notification">Yes, Delete It!</button>
                    </div>
                </div>

            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- ========== App Menu ========== -->
        <div class="app-menu navbar-menu">
            <!-- LOGO -->
            <div class="navbar-brand-box">
                <!-- Dark Logo-->
                <a href="index.html" class="logo logo-dark">
                    <span class="logo-sm">
                        <img src="{{ asset('/') }}admin/assets/images/logo-sm.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="{{ asset('/') }}admin/assets/images/logo-dark.png" alt="" height="17">
                    </span>
                </a>
                <!-- Light Logo-->
                <a href="index.html" class="logo logo-light">
                    <span class="logo-sm">
                        <img src="{{ asset('/') }}admin/assets/images/logo-sm.png" alt="" height="22">
                    </span>
                    <span class="logo-lg">
                        <img src="{{ asset('/') }}admin/assets/images/logo-light.png" alt="" height="17">
                    </span>
                </a>
                <button type="button" class="btn btn-sm p-0 fs-20 header-item float-end btn-vertical-sm-hover" id="vertical-hover">
                    <i class="ri-record-circle-line"></i>
                </button>
            </div>

            @include('admin.include.left-sidebar')

            <div class="sidebar-background"></div>
        </div>

    <!-- Left Sidebar End -->
    <!-- Vertical Overlay-->
    <div class="vertical-overlay"></div>

    <!-- ============================================================== -->
    <!-- Start right Content here -->
    <!-- ============================================================== -->
    <div class="main-content">

        <div class="page-content">
            @yield('body')
            <!-- container-fluid -->
        </div>
        <!-- End Page-content -->

        @include('admin.include.footer')
    </div>
    <!-- end main content-->

</div>
<!-- END layout-wrapper -->



<!--start back-to-top-->
<button onclick="topFunction()" class="btn btn-danger btn-icon" id="back-to-top">
    <i class="ri-arrow-up-line"></i>
</button>
<!--end back-to-top-->

<!--preloader-->
<div id="preloader">
    <div id="status">
        <div class="spinner-border text-primary avatar-sm" role="status">
            <span class="visually-hidden">Loading...</span>
        </div>
    </div>
</div>

<div class="customizer-setting d-none d-md-block">
    <div class="btn-info rounded-pill shadow-lg btn btn-icon btn-lg p-2" data-bs-toggle="offcanvas" data-bs-target="#theme-settings-offcanvas" aria-controls="theme-settings-offcanvas">
        <i class='mdi mdi-spin mdi-cog-outline fs-22'></i>
    </div>
</div>

<!-- Theme Settings -->
@include('admin.include.right-sidebar')

<!-- JAVASCRIPT -->
<script src="{{ asset('/') }}admin/assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="{{ asset('/') }}admin/assets/libs/simplebar/simplebar.min.js"></script>
<script src="{{ asset('/') }}admin/assets/libs/node-waves/waves.min.js"></script>
<script src="{{ asset('/') }}admin/assets/libs/feather-icons/feather.min.js"></script>
<script src="{{ asset('/') }}admin/assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
<script src="{{ asset('/') }}admin/assets/js/plugins.js"></script>

<!-- apexcharts -->
<script src="{{ asset('/') }}admin/assets/libs/apexcharts/apexcharts.min.js"></script>

<!-- Vector map-->
<script src="{{ asset('/') }}admin/assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
<script src="{{ asset('/') }}admin/assets/libs/jsvectormap/maps/world-merc.js"></script>

<!--Swiper slider js-->
<script src="{{ asset('/') }}admin/assets/libs/swiper/swiper-bundle.min.js"></script>

<!-- Dashboard init -->
<script src="{{ asset('/') }}admin/assets/js/pages/dashboard-ecommerce.init.js"></script>

<!--datatable js-->

<script src="{{ asset('/') }}admin/assets/js/pages/datatables.init.js"></script>

<!-- quill js -->
<script src="{{ asset('/') }}admin/assets/libs/quill/quill.min.js"></script>

<!-- multi.js -->
<script src="{{ asset('/') }}admin/assets/libs/multi.js/multi.min.js"></script>
<!-- autocomplete js -->
<script src="{{ asset('/') }}admin/assets/libs/%40tarekraafat/autocomplete.js/autoComplete.min.js"></script>

<!-- init js -->
<script src="{{ asset('/') }}admin/assets/js/pages/form-advanced.init.js"></script>
<!-- input spin init -->
<script src="{{ asset('/') }}admin/assets/js/pages/form-input-spin.init.js"></script>
<!-- input flag init -->
<script src="{{ asset('/') }}admin/assets/js/pages/flag-input.init.js"></script>

<!-- ckeditor -->
<script src="{{ asset('/') }}admin/assets/libs/%40ckeditor/ckeditor5-build-classic/build/ckeditor.js"></script>

<script src="{{ asset('/') }}admin/assets/js/pages/select2.init.js"></script>
<!-- init js -->
<script src="{{ asset('/') }}admin/assets/js/pages/form-editor.init.js"></script>

<!-- gridjs js -->
<script src="{{ asset('/') }}admin/assets/libs/gridjs/gridjs.umd.js"></script>
<!-- gridjs init -->
<script src="{{ asset('/') }}admin/assets/js/pages/gridjs.init.js"></script>

<!-- App js -->
<script src="{{ asset('/') }}admin/assets/js/app.js"></script>
</body>

</html>
