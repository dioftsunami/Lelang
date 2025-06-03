<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Lelang;
use App\Models\Barang;

class LelangController extends Controller
{

    

    // Get all auctions
    public function index()
    {
        $lelang = Lelang::with('barang')->get(); // Include barang data
        return response()->json($lelang);
    }

    // Get single auction by ID
    public function show($id)
    {
        $lelang = Lelang::with('barang')->find($id);

        if (!$lelang) {
            return response()->json(['message' => 'Lelang not found'], 404);
        }

        return response()->json($lelang);
    }

    // Create new auction
    public function store(Request $request)
    {
        $validated = $request->validate([
            'barang_id' => 'required|exists:barang,id', // Barang harus ada di tabel barang
            'title' => 'required|string|max:255',
            'deskripsi' => 'nullable|string',
            'start_time' => 'required|date',
            'end_time' => 'required|date|after:start_time',
            'status' => 'required|in:active,completed,cancelled',
            'harga_awal' => 'required|numeric|min:0',
        ]);

        $lelang = Lelang::create($validated);

        return response()->json([
            'message' => 'Lelang created successfully',
            'lelang' => $lelang,
        ], 201);
    }

    // Update an existing auction
    public function update(Request $request, $id)
    {
        $lelang = Lelang::find($id);

        if (!$lelang) {
            return response()->json(['message' => 'Lelang not found'], 404);
        }

        $validated = $request->validate([
            'barang_id' => 'sometimes|exists:barang,id',
            'title' => 'sometimes|string|max:255',
            'deskripsi' => 'nullable|string',
            'start_time' => 'sometimes|date',
            'end_time' => 'sometimes|date|after:start_time',
            'status' => 'sometimes|in:active,completed,cancelled',
            'harga_awal' => 'sometimes|numeric|min:0',
            'address' => 'nullable|string|max:255',
        ]);

        $lelang->update($validated);

        return response()->json([
            'message' => 'Lelang updated successfully',
            'lelang' => $lelang,
        ]);
    }

    // Delete an auction
    public function destroy($id)
    {
        $lelang = Lelang::find($id);

        if (!$lelang) {
            return response()->json(['message' => 'Lelang not found'], 404);
        }

        $lelang->delete();

        return response()->json(['message' => 'Lelang deleted successfully']);
    }
    public function endAuction($id)
    {
        $lelang = Lelang::find($id);
        if (!$lelang) {
            return response()->json(['message' => 'Lelang not found'], 404);
        }

        $lelang->status = 'ended';
        $lelang->save(); // Memicu observer

        return response()->json(['message' => 'Lelang ended successfully']);
    }
}
