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
                                <a href="{{route('sub-category.create')}}" class="btn btn-primary">Add SubCategory</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <p class="text-success text-center">{{session('message')}}</p>
                                    <table id="example" class="table table-bordered dt-responsive nowrap table-striped align-middle" style="width:100%">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>SubCategory</th>
                                            <th>Description</th>
                                            <th>Image</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($sub_categories as $sub_category)
                                            <tr>
                                                <td>{{$loop->iteration}}</td>
                                                <td>{{$sub_category->name}}</td>
                                                <td>{{$sub_category->description}}</td>
                                                <td><img src="{{asset($sub_category->image)}}" alt="" height="50"/></td>
                                                <td class="d-flex">
                                                    <a href="{{route('sub-category.edit', $sub_category->id)}}" class="btn btn-primary me-2">Edit</a>
                                                    <form action="{{route('sub-category.destroy', $sub_category->id)}}" method="post">
                                                        @method('DELETE')
                                                        @csrf
                                                        <button type="submit" class="btn btn-danger" onclick="return confirm('Are you sure to delete this..')">Delete</button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end page title -->
    </div>
@endsection