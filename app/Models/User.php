<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = ['full_name', 'total_points'];

    public function activities()
    {
        return $this->hasMany(Activity::class);
    }


    public static function updateRanks()
    {
        
        $users = self::orderBy('total_points', 'desc')->get();

        $rank = 0;
        $previousPoints = null;

        foreach ($users as $user) {
            
            if ($previousPoints === null || $user->total_points !== $previousPoints) {
                $rank++;
            }

            
            $user->rank = $rank;
            $user->save();

            
            $previousPoints = $user->total_points;
        }
    }

    
    public function updatePoints($points)
    {
        $this->total_points += $points;
        $this->save();

        
        self::updateRanks();
    }
}
