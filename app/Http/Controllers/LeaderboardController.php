<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Activity;
use App\Models\User;
use Carbon\Carbon;

class LeaderboardController extends Controller
{
    public function index()
    {
    
        $users = User::orderBy('total_points', 'desc')->get();

    
        $this->updateRanks($users);

    
        return view('leaderboard.index', compact('users'));
    }

    public function filter(Request $request)
    {
        $filter = $request->input('filter', 'day');

    
        $userPoints = [];

    
        $query = Activity::query();
        
        if ($filter == 'day') {
            \Log::info('Carbon::today()');
            \Log::info(Carbon::today());
            $query->whereDate('created_at', Carbon::today());
        } elseif ($filter == 'month') {
            \Log::info('Filtering by current month:');
            \Log::info('Month: ' . Carbon::now()->month);
            \Log::info('Year: ' . Carbon::now()->year);
            
            $query->whereMonth('created_at', Carbon::now()->month)
                ->whereYear('created_at', Carbon::now()->year);
        } elseif ($filter == 'year') {
            \Log::info('Carbon::now()->year');
            \Log::info(Carbon::now()->year);
            $query->whereYear('created_at', Carbon::now()->year);
        }

    
        $activities = $query->get();
        foreach ($activities as $activity) {
            if (!isset($userPoints[$activity->user_id])) {
                $userPoints[$activity->user_id] = 0;
            }
            $userPoints[$activity->user_id] += $activity->points;
        }

    
        $users = [];
        foreach ($userPoints as $userId => $totalPoints) {
            $users[] = User::find($userId)->setAttribute('total_points', $totalPoints);
        }

    
        $this->updateRanks(collect($users));

        return view('leaderboard.index', compact('users'));
    }

    public function search(Request $request)
    {
        $userId = $request->input('user_id');

    
        $user = User::find($userId);

        if (!$user) {
            return redirect()->route('leaderboard.index')->with('error', 'User not found');
        }

    
        $users = User::orderBy('total_points', 'desc')->get();

    
        $this->updateRanks($users);

        return view('leaderboard.index', compact('users', 'user'));
    }

    public function recalculate()
    {
    
        $users = User::all();

    
        foreach ($users as $user) {
        
            $totalPoints = $user->activities()->sum('points');

        
            $user->update(['total_points' => $totalPoints]);
        }

    
        $this->updateRanks($users);

    
        return redirect()->route('leaderboard.index')->with('success', 'Leaderboard recalculated successfully!');
    }

    protected function updateRanks($users)
    {
    
        $users = $users->sortByDesc('total_points');

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
}
