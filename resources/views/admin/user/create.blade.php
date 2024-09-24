@extends('admin.master')
@section('body')
    <div class="main-container container-fluid">
        <!-- start page title -->

        <div class="page-header">
            <div>
                <!-- start page title -->

                <div class="row">
                    <div class="col-12">
                        <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                            <h4 class="mb-sm-0">User Module</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">User Tables</a></li>
                                    <li class="breadcrumb-item active">User</li>
                                </ol>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- end page title -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header border-bottom d-flex justify-content-between">
                                <h5 class="card-title mb-0">Basic User Datatables</h5>
                                <a href="{{route('user.index')}}" class="btn btn-primary">All User</a>
                            </div>
                            <div class="card-body">
                                <p class="text-primary text-center">{{session('message')}}</p>
                                <form class="form-horizontal" action="{{ route('user.store') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">User Name</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="name" placeholder="Enter User Name" type="text">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">User Email</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="email" placeholder="User Email" type="email">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">User Password</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="password" placeholder="User Email" type="password">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">User Image</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="image" type="file">
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Create New User</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page title -->
    </div>
@endsection
