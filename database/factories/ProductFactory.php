<?php

namespace Database\Factories;

use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    protected $model = Product::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
       
        $name = $this->faker->sentence(rand(1,2));
        return [
            'category_id' => rand(1,10),
            'name' => $name,
            'price' => fake()->randomNumber(3),
            'old_price' => fake()->randomNumber(3),
            'description' => fake()->text(),
            'lead' =>fake()->text(),
            'slug'=>Str::slug($name),
            'is_active' => fake()->boolean(),
            
        ];
    }
}
