<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        return view('users.index', [
            'users' => User::orderBy('name')->paginate(10)
        ]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|unique:users|max:255',
            'email' => 'required|unique:users|email|max:255',
            'password' => 'required|confirmed|min:8',
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        return redirect()->route('users.index')
            ->with('success', 'User created successfully.');
    }

    public function destroy(User $user)
    {
        if ($user->email == 'admin@gmail.com') {
            return redirect()->route('users.index')
                ->with('error', 'You cannot delete the admin user.');
        }
        $user->delete();

        return redirect()->route('users.index')
            ->with('success', 'User deleted successfully');
    }
}
