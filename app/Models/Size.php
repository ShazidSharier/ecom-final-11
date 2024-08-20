<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Size extends Model
{
    use HasFactory;

    private static $size;

    public static function saveSize($request)
    {
        self::$size                = new Size();
        self::$size->name          = $request->name;
        self::$size->code          = $request->code;
        self::$size->description   = $request->description;
        self::$size->save();
    }
    public static function statusUpdate($id)
    {
        self::$size = Size::find($id);
        if (self::$size->status == 1)
        {
            self::$size->status = 0 ;
        }
        else
        {
            self::$size->status = 1 ;
        }
        self::$size->save() ;
    }

    public static function updateSizeInfo($request, $id)
    {
        self::$size    = Size::find($id);
        self::$size->name         = $request->name;
        self::$size->code         = $request->code;
        self::$size->description  = $request->description;
        self::$size->save();
    }
    public static function deleteSize($id)
    {
        self::$size = Size::find($id);
        self::$size->delete();
    }
}
