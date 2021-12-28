<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use App\Models\User;
use App\Models\Vehicle;
use App\Models\CarShop;

class PurchaseFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'user_id'=>User::factory(),
            //'car_shop_id'=>CarShop::factory(),
            'vehicle_id'=>Vehicle::factory(),
            'purchase_time'=>now(),
            'payment_type'=>rand(0,1)==1?'money':'in installments'
        ];
    }
}
