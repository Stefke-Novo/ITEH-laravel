<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Vehicle;
use App\Models\CarShop;
use App\Models\Purchase;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
         $vehicle1=Vehicle::factory()->create();
         $vehicle2=Vehicle::factory()->create();
         $vehicle3=Vehicle::factory()->create();
         $carShop1=CarShop::factory()->create([
             'vehicle_id'=>$vehicle1
         ]);
         $carShop2=CarShop::factory()->create([
            'vehicle_id'=>$vehicle2
        ]);
         $carShop3=CarShop::factory()->create([
            'vehicle_id'=>$vehicle3
        ]);
         $user1=User::factory()->create();
         $user2=User::factory()->create();
         $user3=User::factory()->create();
         $purchase1=Purchase::factory()->create([
             'user_id'=>$user1,
             'vehicle_id'=>$vehicle1,
             'car_shop_id'=>$carShop1
         ]);
         $purchase2=Purchase::factory()->create([
            'user_id'=>$user2,
            'vehicle_id'=>$vehicle2,
            'car_shop_id'=>$carShop2
        ]);
        $Purchase3=Purchase::factory()->create([
            'user_id'=>$user3,
            'vehicle_id'=>$vehicle3,
            'car_shop_id'=>$carShop3
        ]);
    }
}
