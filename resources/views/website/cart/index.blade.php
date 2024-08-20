<!DOCTYPE html>
<html lang="en">


<!-- Mirrored from portotheme.com/html/wolmart/demo3.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 13 Jun 2024 21:00:01 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">

    <title>Wolmart - Marketplace HTML5 Template</title>

    <meta name="keywords" content="Marketplace ecommerce responsive HTML5 Template" />
    <meta name="description" content="Wolmart is powerful marketplace &amp; ecommerce responsive Html5 Template.">
    <meta name="author" content="D-THEMES">

    <!-- Favicon -->
    <link rel="icon" type="image/png" href="{{asset('/')}}website/assets/images/icons/favicon.png">

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

    <link rel="preload" href="{{asset('/')}}website/assets/vendor/fontawesome-free/webfonts/fa-regular-400.woff2" as="font" type="font/woff2"
          crossorigin="anonymous">
    <link rel="preload" href="{{asset('/')}}website/assets/vendor/fontawesome-free/webfonts/fa-solid-900.woff2" as="font" type="font/woff2"
          crossorigin="anonymous">
    <link rel="preload" href="{{asset('/')}}website/assets/vendor/fontawesome-free/webfonts/fa-brands-400.woff2" as="font" type="font/woff2"
          crossorigin="anonymous">
    <link rel="preload" href="{{asset('/')}}website/assets/fonts/wolmart87d5.woff?png09e" as="font" type="font/woff" crossorigin="anonymous">

    <!-- Vendor CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}website/assets/vendor/fontawesome-free/css/all.min.css">
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="{{asset('/')}}website/assets/vendor/swiper/swiper-bundle.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}website/assets/vendor/animate/animate.min.css">
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}website/assets/vendor/magnific-popup/magnific-popup.min.css">

    <!-- Default CSS -->
    <link rel="stylesheet" type="text/css" href="{{asset('/')}}website/assets/css/style.min.css">
</head>

<body class="home">
<div class="page-wrapper">
    <!-- Start of Header -->
    <header class="header">
        <div class="header-top">
            <div class="container">
                <div class="header-left">
                    <p class="welcome-msg">Welcome to Wolmart Store.</p>
                </div>
                <div class="header-right">
                    <div class="dropdown">
                        <a href="#currency">USD</a>
                        <div class="dropdown-box">
                            <a href="#USD">USD</a>
                            <a href="#EUR">EUR</a>
                        </div>
                    </div>
                    <!-- End of DropDown Menu -->

                    <div class="dropdown">
                        <a href="#language"><img src="{{asset('/')}}website/assets/images/flags/eng.png" alt="ENG Flag" width="14"
                                                 height="8" class="dropdown-image" /> ENG</a>
                        <div class="dropdown-box">
                            <a href="#ENG">
                                <img src="{{asset('/')}}website/assets/images/flags/eng.png" alt="ENG Flag" width="14" height="8"
                                     class="dropdown-image" />
                                ENG
                            </a>
                            <a href="#FRA">
                                <img src="{{asset('/')}}website/assets/images/flags/fra.png" alt="FRA Flag" width="14" height="8"
                                     class="dropdown-image" />
                                FRA
                            </a>
                        </div>
                    </div>
                    <!-- End of Dropdown Menu -->
                    <span class="divider d-lg-show"></span>
                    <a href="blog.html" class="d-lg-show">Blog</a>
                    <a href="contact-us.html" class="d-lg-show">Contact Us</a>
                    <a href="my-account.html" class="d-lg-show">My Account</a>

                    @if(Session::get('customerId'))
                        <a href="{{route('customer.logout')}}"><i class="w-icon-account"></i>Sign Out</a>
                        <span class="delimiter d-lg-show">/</span>
                        <a href="">{{ Session::get('customerName') }}</a>
                    @else
                        <a href="{{route('customer.login')}}" class="d-lg-show login sign-in"><i class="w-icon-account"></i>Sign In</a>
                        <span class="delimiter d-lg-show">/</span>
                        <a href="{{route('customer.register')}}" class="ml-0 d-lg-show login register">Register</a>
                    @endif

                </div>
            </div>
        </div>
        <!-- End of Header Top -->

        <div class="header-middle">
            <div class="container">
                <div class="header-left mr-md-4">
                    <a href="#" class="mobile-menu-toggle  w-icon-hamburger" aria-label="menu-toggle">
                    </a>
                    <a href="{{route('home')}}" class="logo ml-lg-0">
                        <img src="{{asset('/')}}website/assets/images/demos/demo3/header-logo.png" alt="logo" width="144" height="45" />
                    </a>
                    <form method="get" action="#" class="header-search hs-expanded hs-round d-none d-md-flex input-wrapper">
                        <div class="select-box">
                            <select id="category" name="category" class="pb-0">
                                <option value="">All Categories</option>
                                <option value="4">Fashion</option>
                                <option value="5">Furniture</option>
                                <option value="6">Shoes</option>
                                <option value="7">Sports</option>
                                <option value="8">Games</option>
                                <option value="9">Computers</option>
                                <option value="10">Electronics</option>
                                <option value="11">Kitchen</option>
                                <option value="12">Clothing</option>
                            </select>
                        </div>
                        <input type="text" class="form-control" name="search" id="search"
                               placeholder="Search in..." required />
                        <button class="btn btn-search" type="submit"><i class="w-icon-search"></i>
                        </button>
                    </form>
                </div>
                <div class="header-right ml-4">
                    <div class="header-call d-xs-show d-lg-flex align-items-center">
                        <a href="tel:#" class="w-icon-call"></a>
                        <div class="call-info d-lg-show">
                            <h4 class="chat font-weight-normal font-size-md text-normal ls-normal text-light mb-0">
                                <a href="https://portotheme.com/cdn-cgi/l/email-protection#6241" class="text-capitalize">Call Us Now</a> :</h4>
                            <a href="tel:#" class="phone-number font-weight-bolder ls-50">0(800)123-456</a>
                        </div>
                    </div>
                    <a class="wishlist label-down link d-xs-show" href="wishlist.html">
                        <i class="w-icon-heart"></i>
                        <span class="wishlist-label d-lg-show">Wishlist</span>
                    </a>
                    <a class="compare label-down link d-xs-show" href="compare.html">
                        <i class="w-icon-compare"></i>
                        <span class="compare-label d-lg-show">Compare</span>
                    </a>
                    <div class="dropdown cart-dropdown cart-offcanvas mr-0 mr-lg-2">
                        <div class="cart-overlay"></div>
                        <a href="#" class="cart-toggle label-down link">
                            <i class="w-icon-cart">
                                <span class="cart-count">{{count(Cart::content())}}</span>
                            </i>
                            <span class="cart-label">Cart</span>
                        </a>
                        <div class="dropdown-box">
                            <div class="cart-header">
                                <span>Shopping Cart</span>
                                <a href="#" class="btn-close">Close<i class="w-icon-long-arrow-right"></i></a>
                            </div>

                            @php($sum=0)
                            @foreach(Cart::content() as $item)
                                <div class="products">
                                    <div class="product product-cart">
                                        <div class="product-detail">
                                            <a href="" class="product-name">{{$item->name}}<br></a>
                                            <div class="price-box">
                                                <span class="product-quantity">{{$item->qty}}</span>
                                                <span class="product-price">{{$item->price}}</span>
                                            </div>
                                        </div>
                                        <figure class="product-media">
                                            <a href="">
                                                <img src="{{asset($item->options->image)}}" alt="product" height="84" width="94" />
                                            </a>
                                        </figure>
                                        <button class="btn btn-link btn-close" aria-label="button">
                                            <i class="fas fa-times"></i>
                                        </button>
                                    </div>
                                </div>
                                <div class="cart-total">
                                    <label>Subtotal:</label>
                                    <span class="price">{{$item->price * $item->qty}}</span>
                                </div>
                                @php($sum = $sum + ($item->price * $item->qty))
                            @endforeach
                            <div class="cart-total">
                                <label>Total:</label>
                                <span class="price">Tk. {{$sum}}</span>
                            </div>

                            <div class="cart-action">
                                <a href="{{route('cart.index')}}" class="btn btn-dark btn-outline btn-rounded">View Cart</a>
                                <a href="{{route('checkout')}}" class="btn btn-primary  btn-rounded">Checkout</a>
                            </div>
                        </div>
                        <!-- End of Dropdown Box -->
                    </div>
                </div>
            </div>
        </div>
        <!-- End of Header Middle -->

        <div class="header-bottom sticky-content fix-top sticky-header">
            <div class="container">
                <div class="inner-wrap">
                    <div class="header-left">
                        <div class="dropdown category-dropdown has-border" data-visible="true">
                            <a href="#" class="text-white category-toggle" role="button" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="true" data-display="static"
                               title="Browse Categories">
                                <i class="w-icon-category"></i>
                                <span>All Categories</span>
                            </a>

                            <div class="dropdown-box">
                                <ul class="menu vertical-menu category-menu">
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
                        <nav class="main-nav">
                            <ul class="menu active-underline">
                                <li class="active">
                                    <a href="demo3.html">Home</a>
                                </li>
                                <li>
                                    <a href="shop-banner-sidebar.html">Shop</a>

                                    <!-- Start of Megamenu -->
                                    <ul class="megamenu">
                                        <li>
                                            <h4 class="menu-title">Shop Pages</h4>
                                            <ul>
                                                <li><a href="shop-banner-sidebar.html">Banner With Sidebar</a></li>
                                                <li><a href="shop-boxed-banner.html">Boxed Banner</a></li>
                                                <li><a href="shop-fullwidth-banner.html">Full Width Banner</a></li>
                                                <li><a href="shop-horizontal-filter.html">Horizontal Filter<span
                                                            class="tip tip-hot">Hot</span></a></li>
                                                <li><a href="shop-off-canvas.html">Off Canvas Sidebar<span
                                                            class="tip tip-new">New</span></a></li>
                                                <li><a href="shop-infinite-scroll.html">Infinite Ajax Scroll</a>
                                                </li>
                                                <li><a href="shop-right-sidebar.html">Right Sidebar</a></li>
                                                <li><a href="shop-both-sidebar.html">Both Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <h4 class="menu-title">Shop Layouts</h4>
                                            <ul>
                                                <li><a href="shop-grid-3cols.html">3 Columns Mode</a></li>
                                                <li><a href="shop-grid-4cols.html">4 Columns Mode</a></li>
                                                <li><a href="shop-grid-5cols.html">5 Columns Mode</a></li>
                                                <li><a href="shop-grid-6cols.html">6 Columns Mode</a></li>
                                                <li><a href="shop-grid-7cols.html">7 Columns Mode</a></li>
                                                <li><a href="shop-grid-8cols.html">8 Columns Mode</a></li>
                                                <li><a href="shop-list.html">List Mode</a></li>
                                                <li><a href="shop-list-sidebar.html">List Mode With Sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <h4 class="menu-title">Product Pages</h4>
                                            <ul>
                                                <li><a href="product-variable.html">Variable Product</a></li>
                                                <li><a href="product-featured.html">Featured &amp; Sale</a></li>
                                                <li><a href="product-accordion.html">Data In Accordion</a></li>
                                                <li><a href="product-section.html">Data In Sections</a></li>
                                                <li><a href="product-swatch.html">Image Swatch</a></li>
                                                <li><a href="product-extended.html">Extended Info</a>
                                                </li>
                                                <li><a href="product-without-sidebar.html">Without Sidebar</a></li>
                                                <li><a href="product-video.html">360<sup>o</sup> &amp; Video<span
                                                            class="tip tip-new">New</span></a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <h4 class="menu-title">Product Layouts</h4>
                                            <ul>
                                                <li><a href="product-default.html">Default<span
                                                            class="tip tip-hot">Hot</span></a></li>
                                                <li><a href="product-vertical.html">Vertical Thumbs</a></li>
                                                <li><a href="product-grid.html">Grid Images</a></li>
                                                <li><a href="product-masonry.html">Masonry</a></li>
                                                <li><a href="product-gallery.html">Gallery</a></li>
                                                <li><a href="product-sticky-info.html">Sticky Info</a></li>
                                                <li><a href="product-sticky-thumb.html">Sticky Thumbs</a></li>
                                                <li><a href="product-sticky-both.html">Sticky Both</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <!-- End of Megamenu -->
                                </li>
                                <li>
                                    <a href="vendor-dokan-store.html">Vendor</a>
                                    <ul>
                                        <li>
                                            <a href="vendor-dokan-store-list.html">Store Listing</a>
                                            <ul>
                                                <li><a href="vendor-dokan-store-list.html">Store listing 1</a></li>
                                                <li><a href="vendor-wcfm-store-list.html">Store listing 2</a></li>
                                                <li><a href="vendor-wcmp-store-list.html">Store listing 3</a></li>
                                                <li><a href="vendor-wc-store-list.html">Store listing 4</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="vendor-dokan-store.html">Vendor Store</a>
                                            <ul>
                                                <li><a href="vendor-dokan-store.html">Vendor Store 1</a></li>
                                                <li><a href="vendor-wcfm-store-product-grid.html">Vendor Store 2</a>
                                                </li>
                                                <li><a href="vendor-wcmp-store-product-grid.html">Vendor Store 3</a>
                                                </li>
                                                <li><a href="vendor-wc-store-product-grid.html">Vendor Store 4</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="blog.html">Blog</a>
                                    <ul>
                                        <li><a href="blog.html">Classic</a></li>
                                        <li><a href="blog-listing.html">Listing</a></li>
                                        <li>
                                            <a href="blog-grid-3cols.html">Grid</a>
                                            <ul>
                                                <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                                <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                                <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                                <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="blog-masonry-3cols.html">Masonry</a>
                                            <ul>
                                                <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                                <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                                <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                                <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="blog-mask-grid.html">Mask</a>
                                            <ul>
                                                <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                                <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="post-single.html">Single Post</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="about-us.html">Pages</a>
                                    <ul>

                                        <li><a href="about-us.html">About Us</a></li>
                                        <li><a href="become-a-vendor.html">Become A Vendor</a></li>
                                        <li><a href="contact-us.html">Contact Us</a></li>
                                        <li><a href="faq.html">FAQs</a></li>
                                        <li><a href="error-404.html">Error 404</a></li>
                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                        <li><a href="wishlist.html">Wishlist</a></li>
                                        <li><a href="cart.html">Cart</a></li>
                                        <li><a href="checkout.html">Checkout</a></li>
                                        <li><a href="my-account.html">My Account</a></li>
                                        <li><a href="compare.html">Compare</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="elements.html">Elements</a>
                                    <ul>
                                        <li><a href="element-accordions.html">Accordions</a></li>
                                        <li><a href="element-alerts.html">Alert &amp; Notification</a></li>
                                        <li><a href="element-blog-posts.html">Blog Posts</a></li>
                                        <li><a href="element-buttons.html">Buttons</a></li>
                                        <li><a href="element-cta.html">Call to Action</a></li>
                                        <li><a href="element-icons.html">Icons</a></li>
                                        <li><a href="element-icon-boxes.html">Icon Boxes</a></li>
                                        <li><a href="element-instagrams.html">Instagrams</a></li>
                                        <li><a href="element-categories.html">Product Category</a></li>
                                        <li><a href="element-products.html">Products</a></li>
                                        <li><a href="element-tabs.html">Tabs</a></li>
                                        <li><a href="element-testimonials.html">Testimonials</a></li>
                                        <li><a href="element-titles.html">Titles</a></li>
                                        <li><a href="element-typography.html">Typography</a></li>

                                        <li><a href="element-vendors.html">Vendors</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="header-right">
                        <a href="#" class="d-xl-show"><i class="w-icon-map-marker mr-1"></i>Track Order</a>
                        <a href="#"><i class="w-icon-sale"></i>Daily Deals</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- End of Header -->
    <!-- Start of Main -->
    <main class="main cart">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb shop-breadcrumb bb-no">
                    <li class="active"><a href="cart.html">Shopping Cart</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                    <li><a href="order.html">Complete Order</a></li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->

        <!-- Start of PageContent -->
        <div class="page-content">
            <div class="container">
                <div class="row gutter-lg mb-10">
                    <div class="col-lg-8 pr-lg-4 mb-6">
                        <table class="shop-table cart-table">
                            <thead>
                            <h4 class="text-center text-primary">{{Session('message')}}</h4>
                            <tr>
                                <th class="product-name"><span class="text-dark font-weight-bold">Product</span></th>
                                <th class="product-name"><span class="text-dark font-weight-bold">Name</span></th>
                                <th class="product-price"><span>Price</span></th>
                                <th class="product-quantity"><span>Quantity</span></th>
                                <th class="product-subtotal"><span>Subtotal</span></th>
                            </tr>
                            </thead>
                            @php($sum=0)
                            @foreach($products as $product)
                                <tbody>
                                <tr>
                                    <td class="product-thumbnail">
                                        <div class="p-relative">
                                            <a href="product-default.html">
                                                <figure><img src="{{ asset($product->options->image) }}" alt="product" width="300" height="338"></figure>
                                                <form class="remove-item" action="{{ route('cart.destroy',$product->rowId) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-close"><i class="fas fa-times"></i></button>
                                                </form>
                                            </a>
                                        </div>
                                    </td>

                                    <td class="product-details">
                                        <span class="name">{{$product->name}}</span>
                                        <br>
                                        <span class="color">Color: {{ $product->options->color }}</span><br>
                                        <span class="size">Size: {{ $product->options->size }}</span>
                                    </td>
                                    <td class="product-price"><span class="amount">TK. {{$product->price}}</span></td>

                                    <td class="product-quantity">
                                        <form action="{{ route('cart.update',$product->rowId) }}" method="post">
                                            @csrf
                                            @method('PUT')
                                            <div class="input-group">
                                                <input type="text" class="form-control" value="{{ $product->qty }}" name="qty">
                                                <button type="submit" class="btn btn-rounded btn-primary">Updt</button>
                                            </div>
                                        </form>
                                    </td>
                                    <td class="product-subtotal">
                                        <span class="amount">{{ $product->price*$product->qty }}</span>
                                    </td>
                                </tr>
                                </tbody>
                                @php( $sum = $sum + ($product->price*$product->qty) )
                            @endforeach
                        </table>
                        <form class="coupon">
                            <h5 class="title coupon-title font-weight-bold text-uppercase">Coupon Discount</h5>
                            <input type="text" class="form-control mb-4" placeholder="Enter coupon code here..." required />
                            <button class="btn btn-dark btn-outline btn-rounded">Apply Coupon</button>
                        </form>
                    </div>
                    <div class="col-lg-4 sticky-sidebar-wrapper">
                        <div class="sticky-sidebar">
                            <div class="cart-summary mb-4">
                                <h3 class="cart-title text-uppercase">Cart Totals</h3>
                                <div class="cart-subtotal d-flex align-items-center justify-content-between">
                                    <label class="ls-25 text-dark font-weight-bold">Subtotal</label>
                                    <span>{{ round($sum) }}</span>
                                </div>

                                <hr class="divider">
                                <div class="order-total d-flex justify-content-between align-items-center">
                                    <label class="text-dark font-weight-bold">Tax(15%)</label>
                                    <span class="ls-50">{{ $tax = round( ($sum * 0.15) ) }}</span>
                                </div>
                                <div class="order-total d-flex justify-content-between align-items-center">
                                    <label class="text-dark font-weight-bold">Shipping</label>
                                    <span class="ls-50">{{ $shipping = 100 }}</span>
                                </div>

                                <hr class="divider mb-6">
                                <div class="order-total d-flex justify-content-between align-items-center">
                                    <label class="text-dark font-weight-bold">Total</label>
                                    <span class="ls-50">{{  $grandTotal = $sum + $tax + $shipping }}</span>
                                </div>
                                <a href="{{route('checkout')}}" class="btn btn-block btn-primary btn-icon-right btn-rounded  btn-checkout">Proceed to checkout<i class="w-icon-long-arrow-right"></i></a>
                                <a href="{{route('home')}}" class="btn btn-block btn-dark btn-icon-left btn-shopping btn-rounded"><i class="w-icon-long-arrow-left"></i>Continue Shopping</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End of PageContent -->
    </main>
    <!-- End of Main -->
    <!-- Start of Footer -->
    <footer class="footer footer-dark appear-animate">
        <div class="container">
            <div class="footer-top">
                <div class="row">
                    <div class="col-lg-4 col-sm-6">
                        <div class="widget widget-about">
                            <a href="demo3.html" class="logo-footer">
                                <img src="{{asset('/')}}website/assets/images/demos/demo3/footer-logo.png" alt="logo-footer" width="145"
                                     height="45" />
                            </a>
                            <div class="widget-body">
                                <p class="widget-about-title">Got Question? Call us 24/7</p>
                                <a href="tel:18005707777" class="widget-about-call">1-800-570-7777</a>
                                <p class="widget-about-desc">Register now to get updates on pronot get up icons
                                    & coupons ster now toon.
                                </p>

                                <div class="social-icons social-icons-colored">
                                    <a href="#" class="social-icon social-facebook w-icon-facebook"></a>
                                    <a href="#" class="social-icon social-twitter w-icon-twitter"></a>
                                    <a href="#" class="social-icon social-instagram w-icon-instagram"></a>
                                    <a href="#" class="social-icon social-youtube w-icon-youtube"></a>
                                    <a href="#" class="social-icon social-pinterest w-icon-pinterest"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="widget">
                            <h3 class="widget-title">Company</h3>
                            <ul class="widget-body">
                                <li><a href="about-us.html">About Us</a></li>
                                <li><a href="#">Team Member</a></li>
                                <li><a href="#">Career</a></li>
                                <li><a href="contact-us.html">Contact Us</a></li>
                                <li><a href="#">Affilate</a></li>
                                <li><a href="#">Order History</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="widget">
                            <h4 class="widget-title">My Account</h4>
                            <ul class="widget-body">
                                <li><a href="#">Track My Order</a></li>
                                <li><a href="cart.html">View Cart</a></li>
                                <li><a href="login.html">Sign In</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="wishlist.html">My Wishlist</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="widget">
                            <h4 class="widget-title">Customer Service</h4>
                            <ul class="widget-body">
                                <li><a href="#">Payment Methods</a></li>
                                <li><a href="#">Money-back guarantee!</a></li>
                                <li><a href="#">Product Returns</a></li>
                                <li><a href="#">Support Center</a></li>
                                <li><a href="#">Shipping</a></li>
                                <li><a href="#">Term and Conditions</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-middle">
                <div class="widget widget-category">
                    <div class="category-box">
                        <h6 class="category-name">Consumer Electric:</h6>
                        <a href="#">TV Television</a>
                        <a href="#">Air Condition</a>
                        <a href="#">Refrigerator</a>
                        <a href="#">Washing Machine</a>
                        <a href="#">Audio Speaker</a>
                        <a href="#">Security Camera</a>
                        <a href="#">View All</a>
                    </div>
                    <div class="category-box">
                        <h6 class="category-name">Clothing & Apparel:</h6>
                        <a href="#">Men's T-shirt</a>
                        <a href="#">Dresses</a>
                        <a href="#">Men's Sneacker</a>
                        <a href="#">Leather Backpack</a>
                        <a href="#">Watches</a>
                        <a href="#">Jeans</a>
                        <a href="#">Sunglasses</a>
                        <a href="#">Boots</a>
                        <a href="#">Rayban</a>
                        <a href="#">Acccessories</a>
                    </div>
                    <div class="category-box">
                        <h6 class="category-name">Home, Garden & Kitchen:</h6>
                        <a href="#">Sofa</a>
                        <a href="#">Chair</a>
                        <a href="#">Bed Room</a>
                        <a href="#">Living Room</a>
                        <a href="#">Cookware</a>
                        <a href="#">Utensil</a>
                        <a href="#">Blender</a>
                        <a href="#">Garden Equipments</a>
                        <a href="#">Decor</a>
                        <a href="#">Library</a>
                    </div>
                    <div class="category-box">
                        <h6 class="category-name">Health & Beauty:</h6>
                        <a href="#">Skin Care</a>
                        <a href="#">Body Shower</a>
                        <a href="#">Makeup</a>
                        <a href="#">Hair Care</a>
                        <a href="#">Lipstick</a>
                        <a href="#">Perfume</a>
                        <a href="#">View all</a>
                    </div>
                    <div class="category-box">
                        <h6 class="category-name">Jewelry & Watches:</h6>
                        <a href="#">Necklace</a>
                        <a href="#">Pendant</a>
                        <a href="#">Diamond Ring</a>
                        <a href="#">Silver Earing</a>
                        <a href="#">Leather Watcher</a>
                        <a href="#">Rolex</a>
                        <a href="#">Gucci</a>
                        <a href="#">Australian Opal</a>
                        <a href="#">Ammolite</a>
                        <a href="#">Sun Pyrite</a>
                    </div>
                    <div class="category-box">
                        <h6 class="category-name">Computer & Technologies:</h6>
                        <a href="#">Laptop</a>
                        <a href="#">iMac</a>
                        <a href="#">Smartphone</a>
                        <a href="#">Tablet</a>
                        <a href="#">Apple</a>
                        <a href="#">Asus</a>
                        <a href="#">Drone</a>
                        <a href="#">Wireless Speaker</a>
                        <a href="#">Game Controller</a>
                        <a href="#">View all</a>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="footer-left">
                    <p class="copyright">Copyright © 2021 Wolmart Store. All Rights Reserved.</p>
                </div>
                <div class="footer-right">
                    <span class="payment-label mr-lg-8">We're using safe payment for</span>
                    <figure class="payment">
                        <img src="{{asset('/')}}website/assets/images/payment.png" alt="payment" width="159" height="25" />
                    </figure>
                </div>
            </div>
        </div>
    </footer>
    <!-- End of Footer -->
</div>

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
                    <li><a href="demo3.html">Home</a></li>
                    <li>
                        <a href="shop-banner-sidebar.html">Shop</a>
                        <ul>
                            <li>
                                <a href="#">Shop Pages</a>
                                <ul>
                                    <li><a href="shop-banner-sidebar.html">Banner With Sidebar</a></li>
                                    <li><a href="shop-boxed-banner.html">Boxed Banner</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Full Width Banner</a></li>
                                    <li><a href="shop-horizontal-filter.html">Horizontal Filter<span
                                                class="tip tip-hot">Hot</span></a></li>
                                    <li><a href="shop-off-canvas.html">Off Canvas Sidebar<span
                                                class="tip tip-new">New</span></a></li>
                                    <li><a href="shop-infinite-scroll.html">Infinite Ajax Scroll</a></li>
                                    <li><a href="shop-right-sidebar.html">Right Sidebar</a></li>
                                    <li><a href="shop-both-sidebar.html">Both Sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Shop Layouts</a>
                                <ul>
                                    <li><a href="shop-grid-3cols.html">3 Columns Mode</a></li>
                                    <li><a href="shop-grid-4cols.html">4 Columns Mode</a></li>
                                    <li><a href="shop-grid-5cols.html">5 Columns Mode</a></li>
                                    <li><a href="shop-grid-6cols.html">6 Columns Mode</a></li>
                                    <li><a href="shop-grid-7cols.html">7 Columns Mode</a></li>
                                    <li><a href="shop-grid-8cols.html">8 Columns Mode</a></li>
                                    <li><a href="shop-list.html">List Mode</a></li>
                                    <li><a href="shop-list-sidebar.html">List Mode With Sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Product Pages</a>
                                <ul>
                                    <li><a href="product-variable.html">Variable Product</a></li>
                                    <li><a href="product-featured.html">Featured &amp; Sale</a></li>
                                    <li><a href="product-accordion.html">Data In Accordion</a></li>
                                    <li><a href="product-section.html">Data In Sections</a></li>
                                    <li><a href="product-swatch.html">Image Swatch</a></li>
                                    <li><a href="product-extended.html">Extended Info</a>
                                    </li>
                                    <li><a href="product-without-sidebar.html">Without Sidebar</a></li>
                                    <li><a href="product-video.html">360<sup>o</sup> &amp; Video<span
                                                class="tip tip-new">New</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Product Layouts</a>
                                <ul>
                                    <li><a href="product-default.html">Default<span
                                                class="tip tip-hot">Hot</span></a></li>
                                    <li><a href="product-vertical.html">Vertical Thumbs</a></li>
                                    <li><a href="product-grid.html">Grid Images</a></li>
                                    <li><a href="product-masonry.html">Masonry</a></li>
                                    <li><a href="product-gallery.html">Gallery</a></li>
                                    <li><a href="product-sticky-info.html">Sticky Info</a></li>
                                    <li><a href="product-sticky-thumb.html">Sticky Thumbs</a></li>
                                    <li><a href="product-sticky-both.html">Sticky Both</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="vendor-dokan-store.html">Vendor</a>
                        <ul>
                            <li>
                                <a href="#">Store Listing</a>
                                <ul>
                                    <li><a href="vendor-dokan-store-list.html">Store listing 1</a></li>
                                    <li><a href="vendor-wcfm-store-list.html">Store listing 2</a></li>
                                    <li><a href="vendor-wcmp-store-list.html">Store listing 3</a></li>
                                    <li><a href="vendor-wc-store-list.html">Store listing 4</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Vendor Store</a>
                                <ul>
                                    <li><a href="vendor-dokan-store.html">Vendor Store 1</a></li>
                                    <li><a href="vendor-wcfm-store-product-grid.html">Vendor Store 2</a></li>
                                    <li><a href="vendor-wcmp-store-product-grid.html">Vendor Store 3</a></li>
                                    <li><a href="vendor-wc-store-product-grid.html">Vendor Store 4</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="blog.html">Blog</a>
                        <ul>
                            <li><a href="blog.html">Classic</a></li>
                            <li><a href="blog-listing.html">Listing</a></li>
                            <li>
                                <a href="https://www.portotheme.com/html/wolmart/blog-grid.html">Grid</a>
                                <ul>
                                    <li><a href="blog-grid-2cols.html">Grid 2 columns</a></li>
                                    <li><a href="blog-grid-3cols.html">Grid 3 columns</a></li>
                                    <li><a href="blog-grid-4cols.html">Grid 4 columns</a></li>
                                    <li><a href="blog-grid-sidebar.html">Grid sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Masonry</a>
                                <ul>
                                    <li><a href="blog-masonry-2cols.html">Masonry 2 columns</a></li>
                                    <li><a href="blog-masonry-3cols.html">Masonry 3 columns</a></li>
                                    <li><a href="blog-masonry-4cols.html">Masonry 4 columns</a></li>
                                    <li><a href="blog-masonry-sidebar.html">Masonry sidebar</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Mask</a>
                                <ul>
                                    <li><a href="blog-mask-grid.html">Blog mask grid</a></li>
                                    <li><a href="blog-mask-masonry.html">Blog mask masonry</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="post-single.html">Single Post</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="about-us.html">Pages</a>
                        <ul>

                            <li><a href="about-us.html">About Us</a></li>
                            <li><a href="become-a-vendor.html">Become A Vendor</a></li>
                            <li><a href="contact-us.html">Contact Us</a></li>
                            <li><a href="login.html">Login</a></li>
                            <li><a href="faq.html">FAQs</a></li>
                            <li><a href="error-404.html">Error 404</a></li>
                            <li><a href="coming-soon.html">Coming Soon</a></li>
                            <li><a href="wishlist.html">Wishlist</a></li>
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                            <li><a href="my-account.html">My Account</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="elements.html">Elements</a>
                        <ul>
                            <li><a href="element-products.html">Products</a></li>
                            <li><a href="element-titles.html">Titles</a></li>
                            <li><a href="element-typography.html">Typography</a></li>
                            <li><a href="element-categories.html">Product Category</a></li>
                            <li><a href="element-buttons.html">Buttons</a></li>
                            <li><a href="element-accordions.html">Accordions</a></li>
                            <li><a href="element-alerts.html">Alert &amp; Notification</a></li>
                            <li><a href="element-tabs.html">Tabs</a></li>
                            <li><a href="element-testimonials.html">Testimonials</a></li>
                            <li><a href="element-blog-posts.html">Blog Posts</a></li>
                            <li><a href="element-instagrams.html">Instagrams</a></li>
                            <li><a href="element-cta.html">Call to Action</a></li>
                            <li><a href="element-vendors.html">Vendors</a></li>
                            <li><a href="element-icon-boxes.html">Icon Boxes</a></li>
                            <li><a href="element-icons.html">Icons</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="tab-pane" id="categories">
                <ul class="mobile-menu">
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-tshirt2"></i>Fashion
                        </a>
                        <ul>
                            <li>
                                <a href="#">Women</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">New Arrivals</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Best Sellers</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Trending</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Clothing</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Shoes</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Bags</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Accessories</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Jewlery &
                                            Watches</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Sale</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Men</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">New Arrivals</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Best Sellers</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Trending</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Clothing</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Shoes</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Bags</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Accessories</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Jewlery &
                                            Watches</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-home"></i>Home & Garden
                        </a>
                        <ul>
                            <li>
                                <a href="#">Bedroom</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Beds, Frames &
                                            Bases</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Dressers</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Nightstands</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Kid's Beds &
                                            Headboards</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Armoires</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Living Room</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Coffee Tables</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Chairs</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Tables</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Futons & Sofa
                                            Beds</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Cabinets &
                                            Chests</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Office</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Office Chairs</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Desks</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Bookcases</a></li>
                                    <li><a href="shop-fullwidth-banner.html">File Cabinets</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Breakroom
                                            Tables</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Kitchen & Dining</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Dining Sets</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Kitchen Storage
                                            Cabinets</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Bashers Racks</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Dining Chairs</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Dining Room
                                            Tables</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Bar Stools</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-electronics"></i>Electronics
                        </a>
                        <ul>
                            <li>
                                <a href="#">Laptops &amp; Computers</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Desktop
                                            Computers</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Monitors</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Laptops</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Hard Drives &amp;
                                            Storage</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Computer
                                            Accessories</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">TV &amp; Video</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">TVs</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Home Audio
                                            Speakers</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Projectors</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Media Streaming
                                            Devices</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Digital Cameras</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Digital SLR
                                            Cameras</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Sports & Action
                                            Cameras</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Camera Lenses</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Photo Printer</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Digital Memory
                                            Cards</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Cell Phones</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Carrier Phones</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Unlocked Phones</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Phone & Cellphone
                                            Cases</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Cellphone
                                            Chargers</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-furniture"></i>Furniture
                        </a>
                        <ul>
                            <li>
                                <a href="#">Furniture</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Sofas & Couches</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Armchairs</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Bed Frames</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Beside Tables</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Dressing Tables</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Lighting</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Light Bulbs</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Lamps</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Celling Lights</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Wall Lights</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Bathroom
                                            Lighting</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Home Accessories</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Decorative
                                            Accessories</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Candals &
                                            Holders</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Home Fragrance</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Mirrors</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Clocks</a></li>
                                </ul>
                            </li>
                            <li>
                                <a href="#">Garden & Outdoors</a>
                                <ul>
                                    <li><a href="shop-fullwidth-banner.html">Garden
                                            Furniture</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Lawn Mowers</a>
                                    </li>
                                    <li><a href="shop-fullwidth-banner.html">Pressure
                                            Washers</a></li>
                                    <li><a href="shop-fullwidth-banner.html">All Garden
                                            Tools</a></li>
                                    <li><a href="shop-fullwidth-banner.html">Outdoor Dining</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-heartbeat"></i>Healthy & Beauty
                        </a>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-gift"></i>Gift Ideas
                        </a>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-gamepad"></i>Toy & Games
                        </a>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-ice-cream"></i>Cooking
                        </a>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-ios"></i>Smart Phones
                        </a>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-camera"></i>Cameras & Photo
                        </a>
                    </li>
                    <li>
                        <a href="shop-fullwidth-banner.html">
                            <i class="w-icon-ruby"></i>Accessories
                        </a>
                    </li>
                    <li>
                        <a href="shop-banner-sidebar.html"
                           class="font-weight-bold text-primary text-uppercase ls-25">
                            View All Categories<i class="w-icon-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End of Mobile Menu -->

<!-- Start of Newsletter popup -->

<div class="newsletter-popup mfp-hide">
    <div class="newsletter-content">
        <h4 class="text-uppercase font-weight-normal ls-25">Get Up to<span class="text-primary">25% Off</span></h4>
        <h2 class="ls-25">Sign up to Wolmart</h2>
        <p class="text-light ls-10">Subscribe to the Wolmart market newsletter to
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

<!-- Main Js -->
<script src="{{asset('/')}}website/assets/js/main.min.js"></script>
</body>
</html>

