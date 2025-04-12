<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users',
            'username' => 'required|regex:/^\S*$/|unique:users', // No spaces
            'password' => 'required|min:8|regex:/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/',
            'image' => 'nullable|image|mimes:png,jpg|max:1024', // Max size: 1MB
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Handle image upload
        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('profile_images', 'public');
        }

        // Create the user
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'image' => $imagePath,
        ]);

        // Generate a token for the newly registered user
        $token = $user->createToken('auth_token')->plainTextToken;

        // Return the response with the token
        return response()->json([
            'message' => 'User registered successfully',
            'user' => [
                'id' => $user->id,
                'name' => $user->name,
                'email' => $user->email,
                'username' => $user->username,
                'image' => $user->image,
            ],
            'token' => $token, // Include the token in the response
        ], 201);
    }

    public function login(Request $request)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'email' => 'required|email', // Email is required and must be in email format
            'password' => 'required',   // Password is required
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Check if the user exists and the password is correct
        $user = User::where('email', $request->email)->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json(['error' => 'Invalid credentials'], 401);
        }

        // Generate a token for the authenticated user
        $token = $user->createToken('auth_token')->plainTextToken;

        // Return the user data and token in the response
        return response()->json([
            'message' => 'Login successful',
            'user' => [
                'id' => $user->id,
                'name' => $user->name,
                'email' => $user->email,
                'username' => $user->username,
                'image' => $user->image,
            ],
            'token' => $token, // Include the token in the response
        ], 200);
    }

    public function followUser(Request $request, $id)
    {
        // Find the user to follow
        $userToFollow = User::find($id);

        if (!$userToFollow) {
            return response()->json(['error' => 'User not found'], 404);
        }

        // Prevent users from following themselves
        if (auth()->id() === $userToFollow->id) {
            return response()->json(['error' => 'You cannot follow yourself'], 400);
        }

        // Check if already following
        if (auth()->user()->following()->where('following_id', $id)->exists()) {
            return response()->json(['error' => 'Already following this user'], 400);
        }

        // Create follower relationship
        auth()->user()->following()->attach($id);

        return response()->json(['message' => 'You are now following this user'], 200);
    }
}
