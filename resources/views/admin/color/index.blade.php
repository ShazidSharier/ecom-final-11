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
                                <a href="{{route('color.create')}}" class="btn btn-primary">Add Color</a>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <p class="text-success text-center">{{session('message')}}</p>
                                    <table id="example" class="table table-bordered dt-responsive nowrap table-striped align-middle" style="width:100%">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Color</th>
                                            <th>Code</th>
                                            <th>Description</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($colors as $color)
                                            <tr>
                                                <td>{{$loop->iteration}}</td>
                                                <td>{{$color->name}}</td>
                                                <td>{{$color->code}}</td>
                                                <td>{{$color->description}}</td>
                                                <td class="d-flex">
                                                    <a href="{{route('color.edit', $color->id)}}" class="btn btn-primary me-2">Edit</a>
                                                    <form action="{{route('color.destroy', $color->id)}}" method="post">
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


