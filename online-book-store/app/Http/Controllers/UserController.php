<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    // Show user registration form
    public function showRegisterForm()
    {
        if (!Auth::check() || Auth::user()->role !== 'admin') {
            abort(403, 'Unauthorized access. Only admins can register users.');
        }

        return view('register');
    }

    public function getLiveWeather()
    {
        $city = config('services.weatherapi.default_city', 'Chennai');
        $weather = $this->getWeatherData($city);

        if (!$weather) {
            return response()->json(['error' => 'Could not fetch weather'], 500);
        }

        return response()->json([
            'city' => $city,
            'temp' => $weather['current']['temp_c'] ?? 'N/A',
            'condition' => $weather['current']['condition']['text'] ?? 'N/A',
            'humidity' => $weather['current']['humidity'] ?? 'N/A',
            'wind' => $weather['current']['wind_kph'] ?? 'N/A',
            'icon' => $weather['current']['condition']['icon'] ?? '',
        ]);
    }

    protected function getWeatherData($city)
    {
        $apiKey = config('services.weatherapi.key');
        if (!$apiKey) return null;

        try {
            $response = Http::timeout(5)->get("http://api.weatherapi.com/v1/current.json", [
                'key' => $apiKey,
                'q' => $city,
            ]);

            return $response->successful() ? $response->json() : null;
        } catch (\Exception $e) {
            Log::error('Weather API error: ' . $e->getMessage());
            return null;
        }
    }

    // Handle user registration
    public function register(Request $request)
    {
        $request->validate([
            'name'     => ['required', 'string', 'max:255'],
            'email'    => ['required', 'email', 'unique:users,email'],
            'password' => ['required', 'confirmed', 'min:6'],
        ]);

        try {
            User::create([
                'name'     => $request->name,
                'email'    => $request->email,
                'password' => Hash::make($request->password),
            ]);

            return redirect()->route('home')->with('success', 'Registration successful. Welcome!');
        } catch (\Exception $e) {
            Log::error("User registration failed: " . $e->getMessage());
            return back()->withErrors(['error' => 'Failed to register user.'])->withInput();
        }
    }

    // Show login form
    public function showLoginForm()
    {
        return view('login');
    }

    // Handle user login
    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email'    => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (Auth::attempt($credentials, $request->boolean('remember'))) {
            $request->session()->regenerate();

            $redirectRoute = Auth::user()->role === 'admin' ? route('home') : route('store.front');

            return redirect()->intended($redirectRoute)->with('success', 'Login successful!');
        }

        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ])->withInput();
    }

    // Handle logout
    public function logout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('start')->with('success', 'Logged out successfully.');
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'role' => 'required|in:user,admin',
        ]);

        try {
            $user->update($request->only('name', 'email', 'role'));
            return back()->with('success', 'User updated successfully!');
        } catch (\Exception $e) {
            Log::error("User update failed: " . $e->getMessage());
            return back()->withErrors(['error' => 'Failed to update user.'])->withInput();
        }
    }

    // Delete user (admin only)
    public function destroy(User $user)
    {
        if (Auth::id() === $user->id) {
            return redirect()->route('home')->with('error', 'You cannot delete your own account.');
        }

        try {
            $user->delete();
            return redirect()->route('home')->with('success', 'User deleted successfully.');
        } catch (\Exception $e) {
            Log::error("User deletion failed: " . $e->getMessage());
            return redirect()->route('home')->withErrors(['error' => 'Failed to delete user.']);
        }
    }
}
