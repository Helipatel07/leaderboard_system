<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

use App\Models\User;
use App\Models\Activity;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        
        User::factory(15)->create()->each(function ($user) {
            
            $activityCount = rand(0, 10); 

            
            Activity::factory($activityCount)->create(['user_id' => $user->id]);
        });
    }
}
