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
                            <h4 class="mb-sm-0">Brand</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Brand Tables</a></li>
                                    <li class="breadcrumb-item active">Brand</li>
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
                                <h5 class="card-title mb-0">Basic Brand Datatables</h5>
                                <a href="{{route('brand.index')}}" class="btn btn-primary">All Brand</a>
                            </div>
                            <div class="card-body">
                                <p class="text-primary text-center">{{session('message')}}</p>
                                <form class="form-horizontal" action="{{ route('brand.store') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Brand Name</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="name" placeholder="Enter Brand Name" type="text">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Brand Description</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" name="description"></textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Brand Image</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="image" type="file"/>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Create New Brand</button>
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
