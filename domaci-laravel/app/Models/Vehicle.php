<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    use HasFactory;
    public function carShops(){
        return $this->belongsTo(CarShop::class);
    }
    public function kupovine(){
        return $this->belongsTo(Purchase::class);
    }
}
