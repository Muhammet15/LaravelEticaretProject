<?php

namespace Database\Seeders;
use Illuminate\Support\Str;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Category::insert(['name' => 'Giyim','slug' =>  'giyim','is_active'=>'1']);
        \App\Models\Category::insert(['name' => 'Teknoloji','slug' => 'teknoloji','is_active'=>'1']);
        \App\Models\Category::insert(['name' => 'Okul','slug' =>'okul','is_active'=>'1']);    
        \App\Models\Category::factory(7)->create();
    }
}
