<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
class ProductImageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\ProductImage::insert([
            'products_id'=>'1',
            'image_url' => 'https://via.placeholder.com/800x600.png/0044ff?text=et',
            'alt' =>  'First foto for giyim',
            'seq' => '1',
            'is_active'=>'1',
    ]);
        \App\Models\ProductImage::factory(90)->create();
    }
}
