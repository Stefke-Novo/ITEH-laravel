<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\CarShop;

class VehicleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'company'=>($broj=rand(0,9))==1?"Audi":$broj==2?
            "Nissan":$broj==3?
            "Bugatti":$broj==4?
            "BMV":$broj==5?
            "Porsche":$broj==6?
            "Tesla":$broj==7?
            "Jeep":$broj==8?
            "Rolls-Royce":$broj==9?
            "Lamborghini":"Toyota",
            'model'=>$broj==1?($broj1=rand(1,3))==1?"Audi A4":$broj1==2?"Audi A6":"Audi Q5":
            $broj==2?($broj1=rand(1,3))==1?"Nissan 350Z":$broj1==2?"Nissan Altima":"Nissan Armada":
            $broj==3?($broj1=rand(1,3))==1?"1998 Bugatti EB 118":$broj1==2?"1999 Bugatti EB 218":"2020 Bugatti Bolide":
            $broj==4?($broj1=rand(1,3))==1?"BMW X1":$broj1==2?"BMW X5":"BMW X7":
            $broj==5?($broj1=rand(1,3))==1?"Porsche MACAN":$broj1==2?"Porsche PANEMERA":"Porsche TAYCAN":
            $broj==6?($broj1=rand(1,3))==1?"Tesla Model S":$broj1==2?"Tesla Model X":"Tesla Model 3":
            $broj==7?($broj1=rand(1,3))==1?"Jeep Compass":$broj1==2?"Jeep Renegade":"Jeep Cherokee":
            $broj==8?($broj1=rand(1,3))==1?"Rolls-Royce Phantom":$broj1==2?"Rolls-Royce Ghost":"Rolls-Royce Cullinan":
            $broj==9?($broj1=rand(1,3))==1?"Lamborghini Aventador":$broj1==2?"Lamborghini Huracan":"Lamborghini Urus":
            ($broj1=rand(1,3))==1?"Toyota Innova Crysta":$broj1==2?"Toyota Camry":"Toyota Vellfire",
            'year_when_made'=>rand(1998,2020),
            'number_of_seats'=>rand(5,8),
            'number_of_doors'=>5,
            'price'=>rand(800,2000),
            //'car_shop_id'=>CarShop::factory()
        ];
    }
}
