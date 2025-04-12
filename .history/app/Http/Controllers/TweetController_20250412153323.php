<?php

namespace App\Http\Controllers;
use App\Models\Tweet;
use Illuminate\Support\Facades\Validator;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class TweetController extends Controller
{
    public function createTweet(Request $request)
{
    // Validate the request
    $validator = Validator::make($request->all(), [
        'text' => 'required|string|max:140',
    ]);

    if ($validator->fails()) {
        return response()->json(['errors' => $validator->errors()], 422);
    }

    // Create the tweet
    $tweet = auth()->user()->tweets()->create([
        'text' => $request->text,
    ]);

    return response()->json(['message' => 'Tweet created successfully', 'tweet' => $tweet], 201);
}

public function editTweet(Request $request, $id)
{
    // Find the tweet
    $tweet = auth()->user()->tweets()->find($id);

    if (!$tweet) {
        return response()->json(['error' => 'Unauthorized'], 403);
    }

    // Validate the request
    $validator = Validator::make($request->all(), [
        'text' => 'required|string|max:140',
    ]);

    if ($validator->fails()) {
        return response()->json(['errors' => $validator->errors()], 422);
    }

    // Update the tweet
    $tweet->update(['text' => $request->text]);

    return response()->json(['message' => 'Tweet updated successfully', 'tweet' => $tweet], 200);
}
}
