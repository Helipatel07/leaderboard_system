<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Carbon\Carbon;


class ActivityFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        
        $month = $this->faker->numberBetween(1, 12);
    
        
        $year = $this->faker->numberBetween(2020, 2024);
        
        
        $daysInMonth = Carbon::createFromDate($year, $month, 1)->daysInMonth;

        
        $day = $this->faker->numberBetween(1, $daysInMonth);

        return [
            
            'user_id' => \App\Models\User::factory(),
            'points' => 20, 
            'created_at' => Carbon::create($year, $month, $day), 
        ];
    }
}
