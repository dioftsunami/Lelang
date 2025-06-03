<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Barang;

class BarangController extends Controller
{
    // Get all items
    public function index()
    {
        $barang = Barang::all();
        return response()->json($barang);
    }

    // Get single item by ID
    public function show($id)
    {
        $barang = Barang::find($id);

        if (!$barang) {
            return response()->json(['message' => 'Item not found'], 404);
        }

        return response()->json($barang);
    }

    // Create new item
    public function store(Request $request)
    {
        $validated = $request->validate([
            'nama_item' => 'required|string|max:255',
            'deskripsi' => 'nullable|string',
            'kategori' => 'required|string|max:255',
            'kondisi_barang' => 'required|string|max:255',
            'image_url' => 'nullable|url',
        ]);

        $barang = Barang::create($validated);

        return response()->json([
            'message' => 'Item created successfully',
            'barang' => $barang,
        ], 201);
    }

    // Update existing item
    public function update(Request $request, $id)
    {
        $barang = Barang::find($id);

        if (!$barang) {
            return response()->json(['message' => 'Item not found'], 404);
        }

        $validated = $request->validate([
            'nama_item' => 'sometimes|string|max:255',
            'deskripsi' => 'nullable|string',
            'kategori' => 'sometimes|string|max:255',
            'kondisi_barang' => 'sometimes|string|max:255',
            'image_url' => 'nullable|url',
        ]);

        $barang->update($validated);

        return response()->json([
            'message' => 'Item updated successfully',
            'barang' => $barang,
        ]);
    }

    // Delete item
    public function destroy($id)
    {
        $barang = Barang::find($id);

        if (!$barang) {
            return response()->json(['message' => 'Item not found'], 404);
        }

        $barang->delete();

        return response()->json(['message' => 'Item deleted successfully']);
    }
}
