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
                            <h4 class="mb-sm-0">Color</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Color Tables</a></li>
                                    <li class="breadcrumb-item active">Color</li>
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
                                <h5 class="card-title mb-0">Basic Color Datatables</h5>
                                <a href="{{route('color.index')}}" class="btn btn-primary">All Color</a>
                            </div>
                            <div class="card-body">
                                <p class="text-primary text-center">{{session('message')}}</p>
                                <form class="form-horizontal" action="{{ route('color.update', $color->id) }}" method="post" enctype="multipart/form-data">
                                    @method('PUT')
                                    @csrf
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Color Name</label>
                                        <div class="col-md-9">
                                            <input class="form-control" value="{{$color->name}}" name="name" placeholder="Enter Color Name" type="text">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Color Code</label>
                                        <div class="col-md-9">
                                            <input class="form-control" value="{{$color->code}}" name="code" placeholder="Enter Color Name" type="color">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Color Description</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" name="description">{{$color->description}}</textarea>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Update Color Info</button>
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


