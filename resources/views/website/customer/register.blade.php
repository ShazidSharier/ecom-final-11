@extends('website.master')
@section('body')
    <!-- Start of Main -->
    <main class="main login-page">
        <!-- Start of Page Header -->
        <div class="page-header">
            <div class="container">
                <h1 class="page-title mb-0">My Account</h1>
            </div>
        </div>
        <!-- End of Page Header -->
        <!-- Start of Breadcrumb -->
        <nav class="breadcrumb-nav">
            <div class="container">
                <ul class="breadcrumb">
                    <li><a href="{{route('home')}}">Home</a></li>
                    <li>My account</li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->
        <div class="page-content">
            <div class="container">
                <div>
                    <div class="tab tab-nav-boxed tab-nav-center tab-nav-underline">
                        <ul class="nav nav-tabs text-uppercase" role="tablist">
                            <li class="nav-item">
                                <a href="#sign-up">Register</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <form class="row" action="{{ route('customer.register') }}" method="post">
                                @csrf
                                <div class="tab-pane" id="sign-up">
                                    <div class="form-group">
                                        <label>Full Name *</label>
                                        <input type="text" class="form-control" name="name" id="full-name" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Your email address *</label>
                                        <input type="email" class="form-control" onblur="checkCustomerEmail(this.value)" name="email" id="email_1" required>
                                        <span class="text-danger" id="emailError">{{$errors->has('email') ? $errors->first('email') : ''}}</span>

                                    </div>
                                    <div class="form-group">
                                        <label>Phone Number *</label>
                                        <input type="number" class="form-control" name="mobile" id="phone-number" required>
                                    </div>
                                    <div class="form-group mb-5">
                                        <label>Password *</label>
                                        <input type="password" class="form-control" name="password" id="password" required>
                                    </div>
                                    <div class="button">
                                        <button class="btn btn-primary" type="submit">Register</button>
                                    </div>
                                    <p class="outer-link">Already have an account? <a href="{{ route('customer.login') }}">Login Now</a>
                                    </p>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- End of Main -->

@endsection
