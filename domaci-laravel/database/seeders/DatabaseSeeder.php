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
        $carShop1=CarShop::factory()->create([
            'local'=>"Audi"
        ]);
        $purchase1=Purchase::factory(10)->create([
            "car_shop_id"=>$carShop1->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop1
            ])
        ]);

        $carShop2=CarShop::factory()->create([
            'local'=>"Tesla"
        ]);
        $purchase3=Purchase::factory(8)->create([
            "car_shop_id"=>$carShop2->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop2
            ])
        ]);

        $carShop3=CarShop::factory()->create([
            'local'=>"Nissan"
        ]);
        $purchase5=Purchase::factory(12)->create([
            "car_shop_id"=>$carShop3->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop3
            ])
        ]);

        $carShop4=CarShop::factory()->create([
            'local'=>"Bugatti"
        ]);
        $purchase7=Purchase::factory(7)->create([
            "car_shop_id"=>$carShop4->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop4
            ])
        ]);

        $carShop5=CarShop::factory()->create([
            'local'=>"BMV"
        ]);
        $purchase9=Purchase::factory(10)->create([
            "car_shop_id"=>$carShop5->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop5
            ])
        ]);

        $carShop6=CarShop::factory()->create([
            'local'=>"Porsche"
        ]);
        $purchase11=Purchase::factory(11)->create([
            "car_shop_id"=>$carShop6->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop6
            ])
        ]);

        $carShop7=CarShop::factory()->create([
            'local'=>"Jeep"
        ]);
        $purchase13=Purchase::factory(9)->create([
            "car_shop_id"=>$carShop7->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop7
            ])
        ]);
        $carShop8=CarShop::factory()->create([
            'local'=>"Rolls-Royce"
        ]);
        $purchase15=Purchase::factory(8)->create([
            "car_shop_id"=>$carShop8->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop8
            ])
        ]);

        $carShop9=CarShop::factory()->create([
            'local'=>"Lamborghini"
        ]);
        $purchase17=Purchase::factory(15)->create([
            "car_shop_id"=>$carShop9->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop9
            ])
        ]);

        $carShop10=CarShop::factory()->create([
            'local'=>"Toyota"
        ]);
        $purchase19=Purchase::factory(7)->create([
            "car_shop_id"=>$carShop10->id(),
            "vehicle_id"=>Vehicle::factory()->create([
                'car_shop_id'=>$carShop10
            ])
        ]);
    }
}
