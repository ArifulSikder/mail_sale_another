<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function product(){
        return $this->belongsTo(Product::class, 'product_id');
    }

    public function seller(){
        return $this->belongsTo(Seller::class, 'seller_id');
    }

    protected $casts = [
        'date' => 'datetime',
    ];

}
