<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Color extends Model
{
    use HasFactory;

    private static $color;

    public static function saveColor($request)
    {
        self::$color                = new Color();
        self::$color->name          = $request->name;
        self::$color->code          = $request->code;
        self::$color->description   = $request->description;
        self::$color->save();
    }
    public static function statusUpdate($id)
    {
        self::$color = Color::find($id);
        if (self::$color->status == 1)
        {
            self::$color->status = 0 ;
        }
        else
        {
            self::$color->status = 1 ;
        }
        self::$color->save() ;
    }

    public static function updateColorInfo($request, $id)
    {
        self::$color    = Color::find($id);
        self::$color->name         = $request->name;
        self::$color->code         = $request->code;
        self::$color->description  = $request->description;
        self::$color->save();
    }
    public static function deleteColor($id)
    {
        self::$color = Color::find($id);
        self::$color->delete();
    }
}
