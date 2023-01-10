<?php

namespace Database\Seeders;

use App\Models\Card;
use App\Models\Column;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Column::all()->each(function($col){
           Card::factory()->count(fake()->numberBetween(0, 12))
               ->sequence(fn ($seq) => ['column_id' => $col->id])
            ->create();
        });
    }
}
