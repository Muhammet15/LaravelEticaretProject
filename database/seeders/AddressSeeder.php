<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Str;
class AddressSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\Address::insert([
            'user_id'=>'1',
            'city' => 'Turkey',
            'district' =>  'Istanbul',
            'zipcode' => '3400',
            'address'=>'Turkey lorem ipsum lorem ipsum avcılar',
            'is_Default'=>'0',
            'remember_token'=> Str::random(10),
    ]);
        \App\Models\Address::factory(5)->create();
    }
}
