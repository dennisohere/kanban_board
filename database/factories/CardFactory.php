<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Card>
 */
class CardFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => fake()->words(fake()->numberBetween(2, 5), true),
            'description' => fake()->sentences(fake()->numberBetween(2, 5), true),
            'order' => fake()->randomNumber(1)
        ];
    }
}
