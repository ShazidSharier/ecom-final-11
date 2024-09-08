<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class APIController extends Controller
{
    private $categories, $products, $product;

    public function getAllCategory()
    {
        $this->categories = Category::all();
        foreach ($this->categories as $category)
        {
            $category->subCategory;
        }
        return response()->json($this->categories);
    }
    public function getAllTrendingProduct()
    {
        $this->products = Product::where('status', 1)->latest()->get(['id', 'name', 'image','selling_price']);
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }
    public function getAllCategoryProduct($id)
    {
        $this->products = Product::where('category_id', $id)->where('status', 1)->latest()->get(['id', 'name', 'image','selling_price']);
        foreach ($this->products as $product)
        {
            $product->image = asset($product->image);
        }
        return response()->json($this->products);
    }
    public function getProductInfo($id)
    {
        $this->product = Product::find($id);
        $this->product->image = asset($this->product->image);
        foreach ($this->product->productImages as $productImage)
        {
            $productImage->image = asset($productImage->image);
        }
        return response()->json($this->product);
    }
}
