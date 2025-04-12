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

    public function deleteTweet($id)
    {
        // Find the tweet
        $tweet = auth()->user()->tweets()->find($id);

        if (!$tweet) {
            return response()->json(['error' => 'Unauthorized'], 403);
        }

        // Delete the tweet
        $tweet->delete();

        return response()->json(['message' => 'Tweet deleted successfully'], 200);
    }

    public function likeTweet(Request $request, $id)
    {
        // Find the tweet
        $tweet = Tweet::find($id);

        if (!$tweet) {
            return response()->json(['error' => 'Tweet not found'], 404);
        }

        // Check if the user has already liked the tweet
        $like = $tweet->likes()->where('user_id', auth()->id())->first();

        if ($like) {
            // Unlike the tweet
            $like->delete();
            return response()->json(['message' => 'Tweet unliked successfully'], 200);
        }

        // Like the tweet
        $tweet->likes()->create([
            'user_id' => auth()->id(),
        ]);

        return response()->json(['message' => 'Tweet liked successfully'], 200);
    }

    public function commentOnTweet(Request $request, $id)
    {
        // Validate the request
        $validator = Validator::make($request->all(), [
            'text' => 'required|string|max:255',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Find the tweet
        $tweet = Tweet::find($id);

        if (!$tweet) {
            return response()->json(['error' => 'Tweet not found'], 404);
        }

        // Create the comment
        $comment = $tweet->comments()->create([
            'user_id' => auth()->id(),
            'text' => $request->text,
        ]);

        return response()->json(['message' => 'Comment added successfully', 'comment' => $comment], 201);
    }


}
