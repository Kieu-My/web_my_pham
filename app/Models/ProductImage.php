<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    use HasFactory;

    // public function getPathAttribute($value)
    // {
    //     return asset('products/' . $value);
    // }

    public function getPathAttribute($value)
    {
        if(strpos($value, 'http') === 0) {
            return $value;
        }

        return asset('products/' . $value);
    }
}
