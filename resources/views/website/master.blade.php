<!DOCTYPE html>
<html lang="en">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Ecommerce Two</title>
    <meta name="keywords" content="Marketplace ecommerce responsive HTML5 Template" />
    <meta name="description" content="Wolmart is powerful marketplace &amp; ecommerce responsive Html5 Template.">
    <meta name="author" content="D-THEMES">
    <!-- Favicon -->
    @include('website.include.link')
    <!-- WebFont.js -->
    <script>
        WebFontConfig = {
            google: { families: ['Poppins:400,600,500,700,800', 'Zeyada: 400'] }
        };
        (function (d) {
            var wf = d.createElement('script'), s = d.scripts[0];
            wf.src = '{{asset('/')}}website/assets/js/webfont.js';
            wf.async = true;
            s.parentNode.insertBefore(wf, s);
        })(document);
    </script>
</head>
<body class="home">
<div class="page-wrapper">
    <h1 class="d-none">Ecommerce Two</h1>
    <!-- Start of Header -->
    @include('website.include.header')
    <!-- End of Header -->

    <!-- Start of Main -->
    @yield('body')
    <!-- End of Main -->

    <!-- Start of Footer -->
    @include('website.include.footer')
    <!-- End of Footer -->
</div>
<!-- End of Page-wrapper -->
<!-- Start of Sticky Footer -->
<!-- End of Sticky Footer -->
<!-- Start of Scroll Top -->
<a id="scroll-top" class="scroll-top" href="#top" title="Top" role="button"> <i class="w-icon-angle-up"></i> <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 70 70"> <circle id="progress-indicator" fill="transparent" stroke="#000000" stroke-miterlimit="10" cx="35" cy="35" r="34" style="stroke-dasharray: 16.4198, 400;"></circle> </svg> </a>
<!-- End of Scroll Top -->
<!-- Start of Mobile Menu -->
<div class="mobile-menu-wrapper">
    <div class="mobile-menu-overlay"></div>
    <!-- End of .mobile-menu-overlay -->
    <a href="#" class="mobile-menu-close"><i class="close-icon"></i></a>
    <!-- End of .mobile-menu-close -->
    <div class="mobile-menu-container scrollable">
        <form action="#" method="get" class="input-wrapper">
            <input type="text" class="form-control" name="search" autocomplete="off" placeholder="Search"
                   required />
            <button class="btn btn-search" type="submit">
                <i class="w-icon-search"></i>
            </button>
        </form>
        <!-- End of Search Form -->
        <div class="tab">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <a href="#main-menu" class="nav-link active">Main Menu</a>
                </li>
                <li class="nav-item">
                    <a href="#categories" class="nav-link">Categories</a>
                </li>
            </ul>
        </div>
        <div class="tab-content">
            <div class="tab-pane active" id="main-menu">
                <ul class="mobile-menu">
                    <li><a href="{{route('home')}}">Home</a></li>
                </ul>
            </div>
            <div class="tab-pane dropdown" id="categories">
                <ul class="mobile-menu">
                    @foreach($categories as $category)
                        <li>
                            <a href="{{route('shop',['id' => $category->id])}}">{{$category->name}}
                                @if(count($category->subCategory) > 0)
                                @endif
                            </a>

                            @if(count($category->subCategory) > 0)
                                <ul class="inner-sub-category">
                                    @foreach($category->subCategory as $subCategory)
                                        <li><a href="{{route('sub-category-shop', ['id' => $subCategory->id])}}">{{$subCategory->name}}</a></li>
                                    @endforeach
                                </ul>
                            @endif
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End of Mobile Menu -->
<!-- Start of Newsletter popup -->
    <div class="newsletter-popup mfp-hide">
        <div class="newsletter-content">
            <h4 class="text-uppercase font-weight-normal ls-50">Get Up to<span class="text-primary">25% Off</span></h4>
            <h2 class="ls-50">Sign up to Wolmart</h2>
            <p class="text-light ls-10">Subscribe to the Ecommerce market newsletter to
                receive updates on special offers.</p>
            <form action="#" method="get" class="input-wrapper input-wrapper-inline input-wrapper-round">
                <input type="email" class="form-control email font-size-md" name="email" id="email2"
                       placeholder="Your email address" required="">
                <button class="btn btn-dark" type="submit">SUBMIT</button>
            </form>
            <div class="form-checkbox d-flex align-items-center">
                <input type="checkbox" class="custom-checkbox" id="hide-newsletter-popup" name="hide-newsletter-popup"
                       required="">
                <label for="hide-newsletter-popup" class="font-size-sm text-light">Don't show this popup again.</label>
            </div>
        </div>
    </div>
<!-- End of Newsletter popup -->
<!-- Start of Quick View -->
<!-- End of Quick view -->
<!-- Plugin JS File -->
<script src="{{ asset('/') }}website/assets/js/bootstrap.min.js"></script>
<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/jquery/jquery.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/sticky/sticky.js"></script>
<script src="{{asset('/')}}website/assets/vendor/parallax/parallax.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/jquery.plugin/jquery.plugin.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/zoom/jquery.zoom.js"></script>
<script src="{{asset('/')}}website/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/jquery.countdown/jquery.countdown.min.js"></script>
<script src="{{asset('/')}}website/assets/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="{{ asset('/')}}website/assets/js/jquery-3.7.1.js"></script>
<!-- Main Js -->
<script src="{{asset('/')}}website/assets/js/main.min.js"></script>
<script>
    function checkCustomerEmail(email) {
        $.ajax({
            type: "GET",
            url: "{{route('check-customer-email')}}",
            data: {email: email},
            DataType: "JSON",
            success: function (response) {
                $('#emailError').text(response.message);
            }
        });
    }
</script>
</body>
</html>
