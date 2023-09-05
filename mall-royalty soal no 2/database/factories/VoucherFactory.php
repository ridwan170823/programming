<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Voucher>
 */
class VoucherFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'user_id' => \App\Models\User::factory(),
            'code' => 'VCR' . rand(1000, 9999),
            'value' => 10000,
            'status' => $this->faker->boolean,
            'expired_at' => $this->faker->dateTimeBetween('now', '+3 months'),
        ];
    }
}
