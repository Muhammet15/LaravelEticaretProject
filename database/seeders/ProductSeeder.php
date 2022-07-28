<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Product::insert([
            'category_id'=>'1',
            'name' => 'bluz',
            'price' =>  '55',
            'old_price' => '62',
            'description'=>'sss lorem ipsum lorem ipsum ss',
            'lead' =>'sss lorem ipsum lorem ipsum ss',
            'slug' =>'giyim-bluz',
            'is_active'=>'1',
    ]);

        \App\Models\Product::factory(50)->create();
    }
}
