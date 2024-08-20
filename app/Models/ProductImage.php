<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;

    private static $productImage, $image, $extension, $imageName, $directory, $imageUrl, $productImages;

    public static function newProductImage($images, $productId)
    {
        foreach ($images as $image)
        {
            self::$imageUrl = self::getImageUrl($image);

            self::$productImage = New ProductImage();
            self::$productImage->product_id = $productId;
            self::$productImage->image = self::$imageUrl;

            self::$productImage->save();
        }
    }

    private static function getImageUrl($image)
    {
        self::$extension    = $image->getClientOriginalExtension();
        self::$imageName    = rand(100, 5000).'.'.self::$extension;
        self::$directory    = 'admin/image/other-images/';
        $image->move(self::$directory, self::$imageName);
        self::$imageUrl     = self::$directory.self::$imageName;

        return self::$imageUrl;
    }
    public static function updateProductImage($images, $productId)
    {

        self::$productImages = ProductImage::where('product_id', $productId)->get();

        foreach (self::$productImages as self::$productImage)
        {
            if (file_exists(self::$productImage->image))
            {
                unlink(self::$productImage->image);
            }
            self::$productImage->delete();
        }

        foreach ($images as $image)
        {
            self::$imageUrl                 = self::getImageUrl($image);
            self::$productImage             = New ProductImage();
            self::$productImage->product_id = $productId;
            self::$productImage->image      = self::$imageUrl;

            self::$productImage->save();
        }
    }

}
