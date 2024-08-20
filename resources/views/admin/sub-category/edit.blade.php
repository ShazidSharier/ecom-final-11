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
                            <h4 class="mb-sm-0">SubCategory</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">SubCategory Tables</a></li>
                                    <li class="breadcrumb-item active">SubCategory</li>
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
                                <h5 class="card-title mb-0">Basic SubCategory Datatables</h5>
                                <a href="{{route('sub-category.index')}}" class="btn btn-primary">All SubCategory</a>
                            </div>
                            <div class="card-body">
                                <p class="text-primary text-center">{{session('message')}}</p>
                                <form class="form-horizontal" action="{{ route('sub-category.update', $sub_category->id) }}" method="post" enctype="multipart/form-data">
                                    @method('PUT')
                                    @csrf
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Category Name</label>
                                        <div class="col-md-9">
                                            <select class="form-control" name="category_id">
                                                <option value=""> -- Select Category -- </option>
                                                @foreach($categories as $category)
                                                    <option value="{{$category->id}}" {{$category->id == $sub_category->category_id ? 'selected':''}}> {{$category->name}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">SubCategory Name</label>
                                        <div class="col-md-9">
                                            <input class="form-control" value="{{$sub_category->name}}" name="name" placeholder="Enter Category Name" type="text">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Category Description</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" name="description">{{$sub_category->description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Category Image</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="image" type="file">
                                            <img src="{{asset($sub_category->image)}}" alt="" height="100">
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Update SubCategory</button>
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
