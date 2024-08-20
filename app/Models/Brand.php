<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;

    private static $brand, $image, $imageUrl, $imageName, $directory, $extension;

    public static function saveBrand($request)
    {
        self::$brand                = new Brand();
        self::$brand->name          = $request->name;
        self::$brand->description   = $request->description;
        self::$brand->image         = self::getImageUrl($request);
        self::$brand->save();
    }
    private static function getImageUrl($request)
    {
        self::$image       = $request->file('image');
        self::$extension   = self::$image->extension();
        self::$imageName   = rand(000 ,999).'.'.self::$extension;
        self::$directory   = 'admin/image/brand/';
        self::$image->move(self::$directory,self::$imageName);
        self::$imageUrl    = self::$directory.self::$imageName;
        return self::$imageUrl;
    }
    public static function statusUpdate($id)
    {
        self::$brand = Brand::find($id);
        if (self::$brand->status == 1)
        {
            self::$brand->status = 0 ;
        }
        else
        {
            self::$brand->status = 1 ;
        }
        self::$brand->save() ;
    }

    public static function updateBrandInfo($request, $id)
    {
        self::$brand    = Brand::find($id);

        if($request->file('image'))
        {
            if(file_exists(self::$brand->image))
            {
                unlink(self::$brand->image);
            }
            self::$imageUrl  = self::getImageUrl($request);
        }
        else
        {
            self::$imageUrl = self::$brand->image;
        }
        self::$brand->name         = $request->name;
        self::$brand->description  = $request->description;
        self::$brand->image        = self::$imageUrl;
        self::$brand->save();
    }
    public static function deleteBrand($id)
    {
        self::$brand = Brand::find($id);
        if (file_exists(self::$brand->image))
        {
            unlink(self::$brand->image);
        }
        self::$brand->delete();
    }
}
