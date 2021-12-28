<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CarShopFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            /*'local'=>($broj=rand(0,10))==1?"Audi":$broj==2?
            "Nissan":$broj==3?
            "Bugatti":$broj==4?
            "BMV":$broj==5?
            "Porsche":$broj==6?
            "Tesla":$broj==7?
            "Jeep":$broj==8?
            "Rolls-Royce":$broj==9?
            "Lamborghini":"Toyota",*/
            'location'=>$this->faker->name(),
            'location_number'=>rand(0,99)
        ];
    }
}
