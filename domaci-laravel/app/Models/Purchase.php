<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\CarShop;
use App\Models\User;
use App\Models\Vehicle;

class Purchase extends Model
{
    use HasFactory;
    public function carShops(){
        return $this->hasOne(CarShop::class,'id');
    }
    public function vehicles(){
        return $this->hasOne(Vehicle::class,'id');
    }
    public function users(){
        return $this->hasOne(User::class,'id');
    }
}
