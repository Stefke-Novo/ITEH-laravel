<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CarShop extends Model
{
    use HasFactory;
    
    protected $fillable=[
        'local',
        'vehicle_id',
        'location',
        'location_number'
    ];
    public function purchases(){
        return $this->hasMany(Purchase::class,'car_shop_id');
    }
    public function id(){
        return $this->id;
    }
    public function vehicles(){
        return $this->hasMany(Vehicle::class);
    }
}
