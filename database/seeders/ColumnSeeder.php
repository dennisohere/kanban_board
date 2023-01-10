<?php

namespace Database\Seeders;

use App\Models\Column;
use Database\Factories\ColumnFactory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ColumnSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Column::query()->truncate();

        ColumnFactory::new()->count(15)
            ->sequence(fn ($seq) => ['order' => fake()->numberBetween(1, 15)])
            ->create();
    }
}
