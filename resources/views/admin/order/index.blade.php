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
                                    <li class="breadcrumb-item active">Order</li>
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
                                <h5>All Order</h5>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <p class="text-success text-center">{{session('message')}}</p>
                                    <table id="example"  class="table table-bordered dt-responsive nowrap table-striped align-middle" style="width:100%">
                                        <thead>
                                        <tr>
                                            <th>SL</th>
                                            <th>Customer Info</th>
                                            <th>Order Date</th>
                                            <th>Order Total</th>
                                            <th>Order Status</th>
                                            <th>Payment Status</th>
                                            <th>Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($orders as $order)
                                            <tr>
                                                <td>{{$loop->iteration}}</td>
                                                <td>{{$order->customer->name}} <br/> {{$order->customer->mobile}}</td>
                                                <td>{{$order->order_date}}</td>
                                                <td>{{$order->order_total}}</td>
                                                <td>{{$order->order_status}}</td>
                                                <td>{{$order->payment_status}}</td>
                                                <td class="d-flex">
                                                    <a href="{{route('order.detail', $order->id)}}" title="Order Detail" class="btn btn-info me-2">
                                                        <i class="fa fa-bookmark-o"></i>
                                                    </a>
                                                    <a href="{{route('order.edit', $order->id)}}" title="Order Edit" class="btn btn-success me-2 {{$order->order_status == 'Complete' ? 'disabled' : ''}}">
                                                        <i class="fa fa-edit"></i>
                                                    </a>
                                                    <a href="{{route('order.invoice', $order->id)}}" title="Order Invoice" class="btn btn-primary me-2">
                                                        <i class="fa fa-book"></i>
                                                    </a>
                                                    <a href="{{route('order.download-invoice', $order->id)}}" target="_blank" title="Download Invoice" class="btn btn-secondary me-2">
                                                        <i class="fa fa-download"></i>
                                                    </a>
                                                    <form action="{{route('order.destroy', $order->id)}}" method="post">
                                                        @csrf
                                                        <button type="submit" class="btn btn-danger {{$order->order_status == 'Cancel' ? ' ' : 'disabled'}}" onclick="return confirm('Are you sure to delete this..')">
                                                            <i class="fa fa-trash"></i>
                                                        </button>
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

