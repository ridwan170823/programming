<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Invoice>
 */
class InvoiceFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'tenant_id' => \App\Models\Tenant::factory(),
            'user_id' => \App\Models\User::factory(),
            'transaction_id' => 'TRX' . rand(1000, 9999),
            'amount' => $this->faker->numberBetween(10000, 2000000),
            'status' => $this->faker->boolean,
        ];
    }
}
