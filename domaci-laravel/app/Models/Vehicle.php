<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Purchase;
use App\Models\CarShop;

class Vehicle extends Model
{
    use HasFactory;
    public function purchases(){
        return $this->hasMany(Purchase::class,'vehicle_id','id');
    }
    public function carShops(){
        return $this->belongsTo(CarShop::class,'id','car_shop_id');
    }
}
