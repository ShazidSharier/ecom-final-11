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
                    <li><a href="demo1.html">Home</a></li>
                    <li>My account</li>
                </ul>
            </div>
        </nav>
        <!-- End of Breadcrumb -->
        <div class="page-content">
            <div class="container">
                <div>
                    <div class="tab tab-nav-boxed tab-nav-center tab-nav-underline">
                        <form class="card login-form" method="post" action="{{ route('customer.login') }}">
                            @csrf
                            <ul class="nav nav-tabs text-uppercase" role="tablist">
                                <li class="nav-item">
                                    <a href="#sign-in">Sign In</a>
                                    <p class="text-bg-danger">{{ session('message') }}</p>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="sign-in">
                                    <div class="form-group">
                                        <label>Email address or Phone *</label>
                                        <input type="text" class="form-control" name="username" id="username" required>
                                    </div>
                                    <div class="form-group mb-0">
                                        <label>Password *</label>
                                        <input type="password" class="form-control" name="password" id="password" required>
                                    </div>
                                    <div class="button">
                                        <button class="btn btn-primary" type="submit">Login</button>
                                    </div>
                                    <p class="outer-link">Don't have an account? <a href="{{route('customer.register')}}">Register here </a>
                                    </p>
                                </div>
                            </div>
                        </form>
                        <p class="text-center">Sign in with social account</p>
                        <div class="social-icons social-icon-border-color d-flex justify-content-center">
                            <a href="#" class="social-icon social-facebook w-icon-facebook"></a>
                            <a href="#" class="social-icon social-twitter w-icon-twitter"></a>
                            <a href="#" class="social-icon social-google fab fa-google"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- End of Main -->

@endsection

