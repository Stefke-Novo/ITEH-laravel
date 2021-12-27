<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

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
            'company'=>($broj=rand(0,10))==1?"Audi":$broj==2?
            "Nissan":$broj==3?
            "Bugatti":$broj==4?
            "BMV":$broj==5?
            "Porsche":$broj==6?
            "Tesla":$broj==7?
            "Jeep":$broj==8?
            "Rolls-Royce":$broj==9?
            "Lamborghini":"Toyota",
            'model'=>Str::random(5),
            'date_when_made'=>now(),
            'number_of_seats'=>rand(5,8),
            'number_of_doors'=>5,
            'price'=>rand(80000,200000)
        ];
    }
}
