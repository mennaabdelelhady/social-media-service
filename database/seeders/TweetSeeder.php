<?php

namespace Database\Seeders;
use App\Models\Tweet;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TweetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
       // \App\Models\Tweet::factory(200)->create(); // Create 200 tweets
       Tweet::factory(200)->create(); // Create 200 tweets
    }
}
