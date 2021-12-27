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
        return $this->belongsTo(Purchase::class);
    }
    public function vehicles(){
        return $this->hasOne(Vehicle::class,'id');
    }
}
