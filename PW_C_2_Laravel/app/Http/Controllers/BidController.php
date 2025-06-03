<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bid;
use App\Models\Lelang;
use App\Events\BidCreated;

class BidController extends Controller
{
    // Get all bids for a specific auction
    public function index($id_lelang)
    {
        $bids = Bid::where('id_lelang', $id_lelang)
            ->with('user') // Include user data
            ->orderBy('bid_time', 'desc')
            ->get();

        return response()->json($bids);
    }

    // Create a new bid
    public function store(Request $request)
    {
        $validated = $request->validate([
            'id_lelang' => 'required|exists:lelang,id',
            'bid_price' => 'required|numeric|min:0',
        ]);

        $bid = Bid::create([
            'id_user' => $request->user()->id,
            'id_lelang' => $validated['id_lelang'],
            'bid_price' => $validated['bid_price'],
            'bid_time' => now(),
        ]);

        // Emit event BidCreated
        event(new BidCreated($bid));

        return response()->json([
            'message' => 'Bid created successfully',
            'bid' => $bid,
        ], 201);
    }

    // Get a single bid by ID
    public function show($id)
    {
        $bid = Bid::with(['user', 'lelang'])->find($id);

        if (!$bid) {
            return response()->json(['message' => 'Bid not found'], 404);
        }

        return response()->json($bid);
    }

    // Delete a bid
    public function destroy($id)
    {
        $bid = Bid::find($id);

        if (!$bid) {
            return response()->json(['message' => 'Bid not found'], 404);
        }

        $bid->delete();

        return response()->json(['message' => 'Bid deleted successfully']);
    }

    // Get all bids for a specific user
    public function getBidsByUser($id_user)
    {
        $bids = Bid::where('id_user', $id_user)
            ->with(['lelang']) // Include lelang data
            ->orderBy('bid_time', 'desc')
            ->get();

        if ($bids->isEmpty()) {
            return response()->json(['message' => 'No bids found for this user'], 404);
        }

        return response()->json($bids);
    }

    // Update a bid (misal untuk mengubah is_winning)
    public function update(Request $request, $id)
    {
        $bid = Bid::find($id);

        if (!$bid) {
            return response()->json(['message' => 'Bid not found'], 404);
        }

        // Validasi input, asumsikan hanya ingin mengupdate is_winning
        $validated = $request->validate([
            'is_winning' => 'required|boolean', 
        ]);

        $bid->is_winning = $validated['is_winning'];
        $bid->save();

        return response()->json([
            'message' => 'Bid updated successfully',
            'bid' => $bid,
        ]);
    }   
}
