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
                            <h4 class="mb-sm-0">Product</h4>

                            <div class="page-title-right">
                                <ol class="breadcrumb m-0">
                                    <li class="breadcrumb-item"><a href="javascript: void(0);">Product Tables</a></li>
                                    <li class="breadcrumb-item active">Product</li>
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
                                <h5 class="card-title mb-0">Basic Product Datatables</h5>
                                <a href="{{route('product.index')}}" class="btn btn-primary">All Product</a>
                            </div>
                            <div class="card-body">
                                <p class="text-primary text-center">{{session('message')}}</p>
                                <form class="form-horizontal" action="{{ route('product.update', $product->id) }}" method="post" enctype="multipart/form-data">
                                    @method('PUT')
                                    @csrf
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Category Name</label>
                                        <div class="col-md-9">
                                            <select class="form-control" name="category_id">
                                                <option value=""> -- Select Category -- </option>
                                                @foreach($categories as $category)
                                                    <option value="{{$category->id}}" {{$category->id == $product->category_id ? 'selected':''}}> {{$category->name}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">SubCategory Name</label>
                                        <div class="col-md-9">
                                            <select class="form-control" name="sub_category_id">
                                                <option value=""> -- Select SubCategory -- </option>
                                                @foreach($subCategories as $subCategory)
                                                    <option value="{{$subCategory->id}}" {{$subCategory->id == $product->sub_category_id ? 'selected':''}}> {{$subCategory->name}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Brand Name</label>
                                        <div class="col-md-9">
                                            <select class="form-control" name="brand_id">
                                                <option value=""> -- Select Brand -- </option>
                                                @foreach($brands as $brand)
                                                    <option value="{{$brand->id}}" {{$brand->id == $product->brand_id ? 'selected':''}}> {{$brand->name}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Unit Name</label>
                                        <div class="col-md-9">
                                            <select class="form-control" name="unit_id">
                                                <option value=""> -- Select Unit -- </option>
                                                @foreach($units as $unit)
                                                    <option value="{{$unit->id}}" {{$unit->id == $product->unit_id ? 'selected':''}}> {{$unit->name}} </option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Product Name</label>
                                        <div class="col-md-9">
                                            <input class="form-control" value="{{$product->name}}" placeholder="Enter Product Name" name="name" type="text">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Product Code</label>
                                        <div class="col-md-9">
                                            <input class="form-control" value="{{$product->code}}" placeholder="Enter Product Code" name="code" type="text">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Product Color</label>
                                        <div class="col-md-9">
                                            <select required multiple="multiple" multiple name="color[]" id="multiselect-header">
                                                @foreach($colors as $color)
                                                    <option value="{{$color->id}}" @foreach($product->productColors as $productColor) {{$color->id == $productColor->color_id ? 'selected' : ''}}  @endforeach>{{$color->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Product Size</label>
                                        <div class="col-md-9">
                                            <select required multiple="multiple" multiple name="size[]" id="multiselect-basic">
                                                @foreach($sizes as $size)
                                                    <option value="{{$size->id}}" @foreach($product->productSizes as $productSize) {{$size->id == $productSize->size_id ? 'selected' : ''}}  @endforeach>{{$size->name}}</option>
                                                @endforeach
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Meta title</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" name="meta_title">{{$product->meta_title}}</textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Meta Description</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" name="meta_description">{{$product->meta_description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Product Price</label>
                                        <div class="col-md-9">
                                            <div class="input-group">
                                                <input class="form-control" name="regular_price" value="{{$product->regular_price}}" placeholder="Enter Product Regular price" type="number">
                                                <input class="form-control" name="selling_price" value="{{$product->selling_price}}" placeholder="Enter Product Selling price" type="number">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Stock Amount</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="stock_amount" value="{{$product->stock_amount}}" placeholder="Enter Product Stock Amount" type="number">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Short Description</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control" name="short_description">{{$product->short_description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Long Description</label>
                                        <div class="col-md-9">
                                            <textarea class="form-control ckeditor-classic" name="long_description">{{$product->long_description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Product Image</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="image" type="file" accept="image/*">
                                            <img src="{{asset($product->image)}}" alt="" height="100">
                                        </div>
                                    </div>
                                    <div class="row mb-4">
                                        <label  class="col-md-3 form-label">Other Image</label>
                                        <div class="col-md-9">
                                            <input class="form-control" name="other_image[]" multiple type="file" accept="image/*">
                                            @foreach($product->productImages as $productImage)
                                            <img src="{{asset($productImage->image)}}" alt="" height="100">
                                            @endforeach
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" type="submit">Update Product Info</button>
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

