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
                            <h4 class="mb-sm-0">Order</h4>
                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Order Tables</a></li>
                                    <li class="breadcrumb-item active">Order Edit</li>
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
                                <h5 class="card-title mb-0">Basic Order Datatables</h5>
                                <h5>Order Edit Info</h5>
                            </div>
                            <div class="card-body">
                                <div class="">
                                    <p class="text-success text-center">{{session('message')}}</p>
                                    <form class="form-horizontal" action="{{ route('order.update', $order->id) }}" method="post" enctype="multipart/form-data">
                                        @csrf
                                        <div class="row mb-4">
                                            <label  class="col-md-3 form-label">Order Total</label>
                                            <div class="col-md-9">
                                                <input class="form-control" value="{{$order->order_total}}" readonly type="text">
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <label  class="col-md-3 form-label">Customer Info</label>
                                            <div class="col-md-9">
                                                <input class="form-control" value="{{ $order->customer->name.' ( '.$order->customer->mobile.' ) '}}" readonly type="text"/>
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <label  class="col-md-3 form-label">Delivery Address</label>
                                            <div class="col-md-9">
                                                <textarea class="form-control" name="delivery_address"></textarea>
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <label  class="col-md-3 form-label">Select Courier</label>
                                            <div class="col-md-9">
                                                <select class="form-control" name="courier_id">
                                                    <option value=""> -- Select Courier -- </option>
                                                    @foreach($couriers as $courier)
                                                        <option value="{{$courier->id}}" {{$courier->id == $order->courier_id ? 'selected':''}}> {{$courier->name}} </option>
                                                    @endforeach
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-4">
                                            <label  class="col-md-3 form-label">Ordre Status</label>
                                            <div class="col-md-9">
                                                <select class="form-control" name="order_status">
                                                    <option value=""> ----- Select Order Status ----- </option>
                                                    <option value="Pending">Pending</option>
                                                    <option value="Processing">Processing</option>
                                                    <option value="Complete">Complete</option>
                                                    <option value="Cancel">Cancel</option>
                                                </select>
                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="submit">Update Order Info</button>
                                    </form>
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


