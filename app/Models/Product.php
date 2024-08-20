<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class Product extends Model
{
    use HasFactory;

    private static $product, $image, $imageName, $imageUrl, $productImages, $productImage, $extension, $directory;

    public static function saveNewProduct($request)
    {
        self::$product                     = new Product();
        self::$product->category_id        =$request->category_id;
        self::$product->sub_category_id    =$request->sub_category_id;
        self::$product->brand_id           =$request->brand_id;
        self::$product->unit_id            =$request->unit_id;
        self::$product->name               =$request->name;
        self::$product->slug               =Str::slug($request->name);
        self::$product->code               =$request->code;
        self::$product->meta_title         =$request->meta_title;
        self::$product->meta_description   =$request->meta_description;
        self::$product->regular_price      =$request->regular_price;
        self::$product->selling_price      =$request->selling_price;
        self::$product->stock_amount       =$request->stock_amount;
        self::$product->short_description  =$request->short_description;
        self::$product->long_description   =$request->long_description;
        self::$product->image              =self::getImageUrl($request);
        self::$product->save();

        return self::$product->id;
    }

    private static function getImageUrl($request)
    {
        self::$image         = $request->file('image');
        self::$extension     = self::$image->extension();
        self::$imageName     = rand().'.'.self::$extension;
        self::$directory     = 'admin/image/product/';
        self::$image->move(self::$directory,self::$imageName);
        self::$imageUrl      = self::$directory.self::$imageName;
        return self::$imageUrl;
    }

    public static function updateProduct($request, $id)
    {
        self::$product                     = Product::find($id);
        self::$product->category_id        = $request->category_id;
        self::$product->sub_category_id    = $request->sub_category_id;
        self::$product->brand_id           = $request->brand_id;
        self::$product->unit_id            = $request->unit_id;
        self::$product->name               = $request->name;
        self::$product->slug               = Str::slug($request->name);
        self::$product->code               = $request->code;
        self::$product->meta_title         = $request->meta_title;
        self::$product->meta_description   = $request->meta_description;
        self::$product->regular_price      = $request->regular_price;
        self::$product->selling_price      = $request->selling_price;
        self::$product->stock_amount       =$request->stock_amount;
        self::$product->short_description  =$request->short_description;
        self::$product->long_description   =$request->long_description;

        if ($request->file('image'))
        {
            if (file_exists(self::$product->image))
            {
                unlink(self::$product->image);
            }
            self::$product->image = self::getImageUrl($request);
        }
        self::$product->save();
    }

    public static function deleteProduct($id)
    {
        self::$product      = Product::find($id);
        if(file_exists(self::$product->image))
        {
            unlink(self::$product->image);
        }
        self::$product->delete();
    }


    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function subCategory()
    {
        return $this->belongsTo(SubCategory::class);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class);
    }

    public function unit()
    {
        return $this->belongsTo(Unit::class);
    }
    public function productColors()
    {
        return $this->hasMany(ProductColor::class);
    }
    public function productSizes()
    {
        return $this->hasMany(ProductSize::class);
    }
    public function productImages()
    {
        return $this->hasMany(ProductImage::class);
    }
}
