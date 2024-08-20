<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Courier extends Model
{
    use HasFactory;

    private static $courier;

    public static function saveCourier($request)
    {
        self::$courier                  = new Courier();
        self::$courier->name            = $request->name;
        self::$courier->code            = $request->code;
        self::$courier->mobile          = $request->mobile;
        self::$courier->description     = $request->description;
        self::$courier->save();
    }
    public static function statusUpdate($id)
    {
        self::$courier = Courier::find($id);
        if (self::$courier->status == 1)
        {
            self::$courier->status = 0 ;
        }
        else
        {
            self::$courier->status = 1 ;
        }
        self::$courier->save() ;
    }

    public static function updateCourierInfo($request, $id)
    {
        self::$courier    = Courier::find($id);
        self::$courier->name           = $request->name;
        self::$courier->code           = $request->code;
        self::$courier->mobile         = $request->mobile;
        self::$courier->description    = $request->description;
        self::$courier->save();
    }
    public static function deleteCourier($id)
    {
        self::$courier = Courier::find($id);
        self::$courier->delete();
    }
}
