@extends('website.master')
@section('body')
    <!-- Start of Main -->
    <main class="main checkout">
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb shop-breadcrumb bb-no">
                    <li class="passed"><a href="cart.html">Shopping Cart</a></li>
                    <li class="active"><a href="checkout.html">Checkout</a></li>
                    <li><a href="order.html">Complete Order</a></li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->
        <!-- Start of PageContent -->
        <div class="page-content">
            <div class="container">
                <div class="row">
                    <div class="page-content">
                        <div class="container">
                            <div class="coupon-toggle">Have a coupon? <a href="#" class="show-coupon font-weight-bold text-uppercase text-dark">Enter your code</a>
                            </div>
                            <div class="coupon-content mb-4">
                                <p>If you have a coupon code, please apply it below.</p>
                                <div class="input-wrapper-inline">
                                    <input type="text" name="coupon_code" class="form-control form-control-md mr-1 mb-2" placeholder="Coupon code" id="coupon_code">
                                    <button type="submit" class="btn btn-primary button btn-rounded btn-coupon mb-2" name="apply_coupon" value="Apply coupon">Apply Coupon</button>
                                </div>
                            </div>
                            <form class="form checkout-form" action="{{route('new-order')}}" method="POST">
                                @csrf
                                <div class="row mb-9">
                                    <div class="col-lg-7 pr-lg-4 mb-4">
                                        <h3 class="title billing-title text-uppercase ls-10 pt-1 pb-3 mb-0">Order Checkout Information</h3>
                                        <div class="form-group mb-7">
                                            <label>Delivery Address *</label>
                                            <div class="form-input form">
                                                <textarea placeholder="Delivery Address" name="delivery_address"></textarea>
                                            </div>
                                        </div>
                                        <div class="">
                                            <div class="col-md-12 mt-2">
                                                <label>Payment Method</label>
                                                <div class="single-checkbox checkbox-style-3">
                                                    <input type="radio" checked id="checkbox-3" name="payment_method" value="Cash">
                                                    <label for="checkbox-3"><span>Cash on Delivery</span></label>
                                                </div>
                                                <div class="single-checkbox checkbox-style-3">
                                                    <input type="radio" id="checkbox-4" name="payment_method" value="Online">
                                                    <label for="checkbox-4"><span>Online</span></label>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="single-form button">
                                                    <button type="submit" class="btn btn-primary" >Confirm Order</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 mb-4 sticky-sidebar-wrapper">
                                        <div class="order-summary-wrapper sticky-sidebar">
                                            <h3 class="title text-uppercase ls-10">Cart Summary</h3>
                                            <div class="order-summary">
                                                @php($sum=0)
                                                <table class="order-table">
                                                    <thead>
                                                    <tr>
                                                        <th><b>Product</b></th>
                                                        <th><b>Price</b></th>
                                                        <th><b>Subtotal</b></th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    @foreach(Cart::content() as $item)
                                                        <tr class="bb-no">
                                                            <td class="product-name">{{$item->name}} <i class="fas fa-times"></i>
                                                                <span class="product-quantity">{{$item->qty}}</span>
                                                            </td>
                                                            <td class="product-total">{{$item->price}}</td>
                                                            <td class="cart-subtotal">{{$item->price* $item->qty}}</td>
                                                            @php( $sum = $sum + ($item->price*$item->qty) )
                                                        </tr>
                                                    @endforeach
                                                    </tbody>
                                                    <tfoot>
                                                    <tr class="shipping-methods">
                                                        <td colspan="2" class="text-left">
                                                            <h4 class="title title-simple bb-no mb-1 pb-0 pt-3">Shipping</h4>
                                                            <ul id="shipping-method" class="mb-4">
                                                                <li>
                                                                    <div class="custom-radio"><input type="radio" id="free-shipping" class="custom-control-input" name="shipping">
                                                                        <label for="free-shipping" class="custom-control-label color-dark">Shipping Charge:{{ $shipping = 100 }}</label>
                                                                    </div>
                                                                </li>
                                                                <li>
                                                                    <div class="custom-radio">
                                                                        <input type="radio" id="flat-rate" class="custom-control-input" name="shipping">
                                                                        <label for="flat-rate" class="custom-control-label color-dark">Tax (15%): {{ $tax = round( ($sum * 0.15) ) }}</label>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </td>
                                                    </tr>
                                                    <tr class="order-total">
                                                        <th><b>Total Payable</b></th>
                                                        <td><b>{{  $totalPayable = $sum + $tax + $shipping }}</b></td>
                                                    </tr>
                                                    <?php
                                                    Session::put('order_total',$totalPayable);
                                                    Session::put('tax_total',$tax);
                                                    Session::put('shipping_total',$shipping);
                                                    ?>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End of PageContent -->
    </main>
    <!-- End of Main -->
@endsection
