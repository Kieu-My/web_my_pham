<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'category_id',
        'brand_id',
        'name',
        'price',
        'quantity',
        'description',
        'image',
        'sale',
        'quantity',
        'status'
    ];

    public function category()
    {
        return $this->belongsTo(Category::class)->withDefault([
            'name' => 'Danh mục đã xóa hoặc không tồn tại',
        ]);
    }

    public function brand()
    {
        return $this->belongsTo(Brand::class)->withDefault([
            'name' => 'Nhà sản xuất đã xóa hoặc không tồn tại',
        ]);
    }

    public function images()
    {
        return $this->hasMany(ProductImage::class);
    }

    public function getImageAttribute($value)
    {
        if(strpos($value, 'http') === 0) {
            return $value;
        }

        return asset('products/' . $value);
    }

    public function getSalePriceAttribute()
    {
        if ($this->sale > 0) {
            return $this->price - ($this->price * $this->sale / 100);
        }

        return $this->price;
    }

    public function getPriceAttribute($value)
    {
        return round($value);
    }

    public function getNameAttribute($value)
    {
        return html_entity_decode($value);
    }
}
