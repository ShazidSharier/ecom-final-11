@extends('website.master')
@section('body')

    <!-- Start of Main -->
    <main class="main mb-10 pb-1">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav container">
            <ul class="breadcrumb bb-no">
                <li><a href="demo1.html">Home</a></li>
                <li>Products</li>
            </ul>
            <ul class="product-nav list-style-none">
                <li class="product-nav-prev">
                    <a href="#">
                        <i class="w-icon-angle-left"></i>
                    </a>
                    <span class="product-nav-popup">
                            <img src="{{asset('/')}}website/assets/images/products/product-nav-prev.jpg" alt="Product" width="110"
                                 height="110" />
                            <span class="product-name">Soft Sound Maker</span>
                        </span>
                </li>
                <li class="product-nav-next">
                    <a href="#">
                        <i class="w-icon-angle-right"></i>
                    </a>
                    <span class="product-nav-popup">
                            <img src="{{asset('/')}}website/assets/images/products/product-nav-next.jpg" alt="Product" width="110"
                                 height="110" />
                            <span class="product-name">Fabulous Sound Speaker</span>
                        </span>
                </li>
            </ul>
        </nav>
        <!-- End of Breadcrumb -->

        <!-- Start of Page Content -->
        <div class="page-content">
            <div class="container">
                <div class="row gutter-lg">
                    <div class="main-content">
                        <form action="{{route('cart.store')}}" method="POST">
                            @csrf
                            <input type="hidden" name="id" value="{{$product->id}}">
                        <div class="product product-single row">
                            <div class="col-md-6 mb-6">
                                <div class="product-gallery product-gallery-sticky">
                                    <div class="swiper-container product-single-swiper swiper-theme nav-inner" data-swiper-options="{
                                            'navigation': {
                                                'nextEl': '.swiper-button-next',
                                                'prevEl': '.swiper-button-prev'
                                            }
                                        }">
                                        <div class="swiper-wrapper row cols-1 gutter-no">
                                            @foreach($productImages as $productImage)
                                            <div class="swiper-slide product-image">
                                                    <img src="{{asset($productImage->image)}}"
                                                         data-zoom-image="{{asset($productImage->image)}}"
                                                         alt="product-image" width="800" height="900">
                                            </div>
                                            @endforeach
                                        </div>
                                        <button class="swiper-button-next"></button>
                                        <button class="swiper-button-prev"></button>
                                        <a href="#" class="product-gallery-btn product-image-full"><i class="w-icon-zoom"></i></a>
                                    </div>
                                    <div class="product-thumbs-wrap swiper-container" data-swiper-options="{
                                            'navigation': {
                                                'nextEl': '.swiper-button-next',
                                                'prevEl': '.swiper-button-prev'
                                            }
                                        }">
                                        <div class="product-thumbs swiper-wrapper row cols-4 gutter-sm">
                                            @foreach($productImages as $productImage)
                                            <div class="product-thumb swiper-slide">
                                                <img src="{{asset($productImage->image)}}"
                                                     alt="Product Thumb" width="800" height="900">
                                            </div>
                                            @endforeach
                                        </div>
                                        <button class="swiper-button-next"></button>
                                        <button class="swiper-button-prev"></button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 mb-4 mb-md-6">
                                <div class="product-details" data-sticky-options="{'minWidth': 767}">
                                    <h1 class="product-title">{{$product->name}}</h1>
                                    <div class="product-bm-wrapper">
                                        <figure class="brand">
                                            <img src="{{asset($product->image)}}" alt="Brand"
                                                 width="102" height="48" />
                                        </figure>
                                        <div class="product-meta">
                                            <div class="product-categories">
                                                <span class="product-category"><a href="#">Product Category:{{$product->category->name}}</a></span>
                                            </div>
                                            <div class="product-sku">
                                                <span class="product-subCategory"><a href="#">Product SubCategory:{{$product->subCategory->name}}</a></span>
                                            </div>
                                            <div class="product-sku">
                                                <span class="product-brand"><a href="#">Product Brand:{{$product->brand->name}}</a></span>
                                            </div>
                                            <div class="product-sku">
                                                <span class="product-unit"><a href="#">Product Unit:{{$product->unit->name}}</a></span>
                                            </div>
                                        </div>
                                    </div>
                                    <hr class="product-divider">
                                    <div class="product-price"><h3>TK. {{$product->selling_price}}  <del class="text-success">TK. {{ $product->regular_price }}</del></h3></div>
                                    <div class="product-short-desc">
                                        <ul class="list-type-check list-style-none">{!! $product->short_description !!}</ul>
                                    </div>
                                    <div class="ratings-container">
                                        <div class="ratings-full">
                                            <span class="ratings" style="width: 80%;"></span>
                                            <span class="tooltiptext tooltip-top"></span>
                                        </div>
                                        <a href="#product-tab-reviews" class="rating-reviews scroll-to">(3 Reviews)</a>
                                    </div>

                                    <hr class="product-divider">

                                    <div class="product-form product-variation-form product-color-swatch">
                                        <label>Color:</label>
                                        <div class="d-flex align-items-center product-variations">
                                            @foreach($product->productColors as $key => $productColor)
                                                <label class="me-2"><input type="radio" {{$key == 0 ? 'checked' : ''}} name="color" value="{{$productColor->color->name}}"/> {{$productColor->color->name}} </label>
                                            @endforeach
                                        </div>
                                    </div>
                                    <hr class="product-divider">
                                    <div class="product-form product-variation-form product-size-swatch">
                                        <label>Size:</label>
                                        <div class="d-flex align-items-center product-variations">
                                            @foreach($product->productSizes as $key1 => $productSize)
                                                <label class="me-2"><input type="radio" {{$key1 == 0 ? 'checked' : ''}} name="size" value="{{$productSize->size->name}}"/> {{$productSize->size->name}} </label>
                                            @endforeach
                                        </div>
                                    </div>


                                    <div class="fix-bottom sticky-content">
                                        <div class="product-form container">
                                            <div class="product-qty-form">
                                                <div class="input-group">
                                                    <input class="quantity form-control" name="qty" type="number" min="1" max="10000000">
                                                    <button class="quantity-plus w-icon-plus"></button>
                                                    <button class="quantity-minus w-icon-minus"></button>
                                                </div>
                                            </div>
                                            <button class="btn ">
                                                <i class="w-icon-cart"></i>
                                                <a href=""><span>Add to Cart</span></a>
                                            </button>
                                        </div>
                                    </div>

                                    <div class="social-links-wrapper">
                                        <div class="social-links">
                                            <div class="social-icons social-no-color border-thin">
                                                <a href="#" class="social-icon social-facebook w-icon-facebook"></a>
                                                <a href="#" class="social-icon social-twitter w-icon-twitter"></a>
                                                <a href="#"
                                                   class="social-icon social-pinterest fab fa-pinterest-p"></a>
                                                <a href="#" class="social-icon social-whatsapp fab fa-whatsapp"></a>
                                                <a href="#"
                                                   class="social-icon social-youtube fab fa-linkedin-in"></a>
                                            </div>
                                        </div>
                                        <span class="divider d-xs-show"></span>
                                        <div class="product-link-wrapper d-flex">
                                            <a href="#"
                                               class="btn-product-icon btn-wishlist w-icon-heart"><span></span></a>
                                            <a href="#"
                                               class="btn-product-icon btn-compare btn-icon-left w-icon-compare"><span></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                        <div class="tab tab-nav-boxed tab-nav-underline product-tabs">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a href="#product-tab-description" class="nav-link">Description</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="product-tab-description">
                                    <div class="row mb-4">
                                        <div class="col-md-12 mb-5">
                                            <h4 class="title tab-pane-title font-weight-bold mb-2">{!! $product->long_description !!}</h4>
                                        </div>
                                    </div>
                                    <div class="row cols-md-3">
                                        <div class="mb-3">
                                            <h5 class="sub-title font-weight-bold"><span class="mr-3">1.</span>Free
                                                Shipping &amp; Return</h5>
                                            <p class="detail pl-5">We offer free shipping for products on orders
                                                above 50$ and offer free delivery for all orders in US.</p>
                                        </div>
                                        <div class="mb-3">
                                            <h5 class="sub-title font-weight-bold"><span>2.</span>Free and Easy
                                                Returns</h5>
                                            <p class="detail pl-5">We guarantee our products and you could get back
                                                all of your money anytime you want in 30 days.</p>
                                        </div>
                                        <div class="mb-3">
                                            <h5 class="sub-title font-weight-bold"><span>3.</span>Special Financing
                                            </h5>
                                            <p class="detail pl-5">Get 20%-50% off items over 50$ for a month or
                                                over 250$ for a year with our special credit card.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Main Content -->
                    <aside class="sidebar product-sidebar sidebar-fixed right-sidebar sticky-sidebar-wrapper">
                        <div class="sidebar-overlay"></div>
                        <a class="sidebar-close" href="#"><i class="close-icon"></i></a>
                        <a href="#" class="sidebar-toggle d-flex d-lg-none"><i class="fas fa-chevron-left"></i></a>
                        <div class="sidebar-content scrollable">
                            <div class="sticky-sidebar">
                                <div class="widget widget-icon-box mb-6">
                                    <div class="icon-box icon-box-side">
                                            <span class="icon-box-icon text-dark">
                                                <i class="w-icon-truck"></i>
                                            </span>
                                        <div class="icon-box-content">
                                            <h4 class="icon-box-title">Free Shipping & Returns</h4>
                                            <p>For all orders over $99</p>
                                        </div>
                                    </div>
                                    <div class="icon-box icon-box-side">
                                            <span class="icon-box-icon text-dark">
                                                <i class="w-icon-bag"></i>
                                            </span>
                                        <div class="icon-box-content">
                                            <h4 class="icon-box-title">Secure Payment</h4>
                                            <p>We ensure secure payment</p>
                                        </div>
                                    </div>
                                    <div class="icon-box icon-box-side">
                                            <span class="icon-box-icon text-dark">
                                                <i class="w-icon-money"></i>
                                            </span>
                                        <div class="icon-box-content">
                                            <h4 class="icon-box-title">Money Back Guarantee</h4>
                                            <p>Any back within 30 days</p>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Widget Icon Box -->

                                <div class="widget widget-banner mb-9">
                                    <div class="banner banner-fixed br-sm">
                                        <figure>
                                            <img src="{{asset('/')}}website/assets/images/shop/banner3.jpg" alt="Banner" width="266"
                                                 height="220" style="background-color: #1D2D44;" />
                                        </figure>
                                        <div class="banner-content">
                                            <div class="banner-price-info font-weight-bolder text-white lh-1 ls-25">
                                                40<sup class="font-weight-bold">%</sup><sub
                                                    class="font-weight-bold text-uppercase ls-25">Off</sub>
                                            </div>
                                            <h4
                                                class="banner-subtitle text-white font-weight-bolder text-uppercase mb-0">
                                                Ultimate Sale</h4>
                                        </div>
                                    </div>
                                </div>
                                <!-- End of Widget Banner -->
                            </div>
                        </div>
                    </aside>
                    <!-- End of Sidebar -->
                </div>
            </div>
        </div>
        <!-- End of Page Content -->
    </main>
    <!-- End of Main -->

@endsection
