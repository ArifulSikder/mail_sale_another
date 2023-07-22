<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;
    protected $guarded = [];
    
    public function category()
    {
        return $this->belongsTo(Category::class, 'category_id');
    }
    
    public function subcategory()
    {
        return $this->belongsTo(Category::class, 'sub_category_id');
    }
    
    public function advantages()
    {
        return $this->hasMany(ProductAdvantage::class, 'product_id');
    }
    
    public function details()
    {
        return $this->hasMany(ProductDetail::class, 'product_id');
    }
    
    public function descriptions()
    {
        return $this->hasMany(ProductDescription::class, 'product_id');
    }
}
