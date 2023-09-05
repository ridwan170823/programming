<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Tenant>
 */
class TenantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'name' => $this->faker->company,
            'location' => 'Lantai ' . $this->faker->numberBetween(1, 10) . ' ' . $this->faker->randomElement(['Timur', 'Barat', 'Selatan', 'Utara']) . ' ' . $this->faker->randomElement(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']) . $this->faker->numberBetween(1, 10) . $this->faker->randomElement(['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J']),
            'category' => $this->faker->randomElement(['food', 'drink', 'snack', 'dessert', 'other']),
        ];
    }
}
