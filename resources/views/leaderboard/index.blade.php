<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leaderboard</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
        
    <!-- Bootstrap JS and Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body class="bg-dark text-light">
<div class="container mt-5">
    @if(session('success'))
        <p>{{ session('success') }}</p>
    @endif
    <!-- Recalculate and Filter buttons -->
    <div class="d-flex justify-content-between mb-4">
        <form action="{{ route('leaderboard.recalculate') }}" method="POST">
            @csrf
            <button type="submit" class="btn btn-light">Recalculate</button>
        </form>

        @php
            
            $filterOptions = [
                'day' => 'Day',
                'month' => 'Month',
                'year' => 'Year',
            ];
        @endphp

        <form action="{{ route('leaderboard.filter') }}" method="GET">
            <div class="input-group">
                <label for="filter" class="input-group-text bg-secondary text-light">Sort by:</label>
                <select name="filter" id="filter" class="form-select">
                    @foreach ($filterOptions as $value => $label)
                        <option value="{{ $value }}" {{ request('filter') == $value ? 'selected' : '' }}>{{ $label }}</option>
                    @endforeach
                </select>
                <button type="submit" class="btn btn-light">Apply</button>
            </div>
        </form>
    </div>

    <!-- Search User by ID -->
    <div class="mb-4">
        <form action="{{ route('leaderboard.search') }}" method="GET" class="d-flex">
            <div class="form-group me-2">
                <label for="user_id" class="form-label">User ID</label>
                <input type="text" name="user_id" id="user_id" class="form-control bg-secondary text-light" value="{{ request('user_id') }}" />
            </div>
            <button type="submit" class="btn btn-light align-self-end">Filter</button>
        </form>
    </div>

    <!-- Leaderboard Table -->
    <div class="table-responsive">
        <table class="table table-dark table-striped text-light table-hover">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Points</th>
                    <th scope="col">Rank</th>
                </tr>
            </thead>
            <tbody>
                @if (empty($users))
                    <tr>
                        <td colspan="4" class="text-center">No Data Found</td>
                    </tr>
                @else
                    @foreach($users as $key => $user)
                        <tr class="@if(request('user_id') == $user->id)bg-primary @endif">
                            <td>{{ $user->id }}</td>
                            <td>{{ $user->full_name }}</td>
                            <td>{{ $user->total_points }}</td>
                            <td>#{{ $user->rank }}</td>
                        </tr>
                    @endforeach
                @endif
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
