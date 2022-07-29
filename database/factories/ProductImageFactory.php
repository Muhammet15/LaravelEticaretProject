<?php

namespace Database\Factories;

use App\Models\ProductImage;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\ProductImage>
 */
class ProductImageFactory extends Factory
{
    protected $model = ProductImage::class;
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        $fakerFileName = $this->faker->image(
            storage_path("app\data"),
            800,
            600
        );
        return [
            'products_id' => rand(1,47),
            'image_url' => $this->faker->imageUrl(800,600),
            // 'file_path' => "app/data/" . basename($fakerFileName),
            'alt' => fake()->name(),
            'seq' => random_int(1,4),
            'is_active' => fake()->boolean(),
        ];
    }
}
