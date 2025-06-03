<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Transaction;
use App\Models\Bid;
use Illuminate\Support\Facades\Auth;

class TransactionController extends Controller
{
    /**
     * Menampilkan semua transaksi.
     */
    public function index()
    {
        $transactions = Transaction::with(['user', 'lelang', 'bid'])->get();
        return response()->json($transactions);
    }

    /**
     * Membuat transaksi baru.
     * Asumsi: Transaksi dibuat saat lelang sudah berakhir dan memiliki bid pemenang.
     * Kolom 'is_winning' mungkin tidak ada, 
     * silakan sesuaikan logika penentuan pemenang sesuai kebutuhan Anda.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'id_bid' => 'required|exists:bids,id',
        ]);

        $bid = Bid::find($validated['id_bid']);

        // Jika Anda memiliki logika untuk memeriksa bid pemenang, terapkan di sini.
        // Misalnya cek apakah bid tersebut adalah yang tertinggi di lelang yang telah berakhir.
        // Contoh sederhana (harus disesuaikan):
        // $highestBid = Bid::where('id_lelang', $bid->id_lelang)->orderBy('bid_price', 'desc')->first();
        // if ($bid->id != $highestBid->id) {
        //     return response()->json(['message' => 'This bid is not the winning bid'], 403);
        // }

        // Buat transaksi dengan shipment_status='pending', shipment_address=null
        $transaction = Transaction::create([
            'id_user' => Auth::id(), 
            'id_lelang' => $bid->id_lelang, 
            'id_bid' => $bid->id,
            'total_price' => $bid->bid_price,
            'shipment_status' => 'pending',   // default status
            'shipment_address' => null,       // user akan mengisi nanti
        ]);

        return response()->json([
            'message' => 'Transaction created successfully',
            'transaction' => $transaction,
        ], 201);
    }

    /**
     * Menampilkan detail transaksi berdasarkan ID.
     */
    public function show($id)
    {
        $transaction = Transaction::with(['user', 'lelang', 'bid'])->find($id);

        if (!$transaction) {
            return response()->json(['message' => 'Transaction not found'], 404);
        }

        return response()->json($transaction);
    }

    /**
     * Memperbarui transaksi.
     * Misalnya, user dapat mengisi shipment_address atau mengubah shipment_status menjadi 'sent'.
     */
    public function update(Request $request, $id)
    {
        $transaction = Transaction::find($id);

        if (!$transaction) {
            return response()->json(['message' => 'Transaction not found'], 404);
        }

        // Validasi input yang diperbolehkan
        $validated = $request->validate([
            'shipment_address' => 'sometimes|string|max:255',
            'shipment_status' => 'sometimes|string|max:255', // misal: pending, sent, delivered, etc.
        ]);

        $transaction->update($validated);

        return response()->json([
            'message' => 'Transaction updated successfully',
            'transaction' => $transaction,
        ]);
    }

    /**
     * Menghapus transaksi.
     */
    public function destroy($id)
    {
        $transaction = Transaction::find($id);

        if (!$transaction) {
            return response()->json(['message' => 'Transaction not found'], 404);
        }

        $transaction->delete();

        return response()->json(['message' => 'Transaction deleted successfully']);
    }
    public function getTransactionsByUser($id_user)
    {
        $transactions = Transaction::where('id_user', $id_user)
            ->with(['lelang.barang', 'bid']) // Include related lelang and barang data
            ->orderBy('created_at', 'desc') // Order by the latest transaction
            ->get();
    
        if ($transactions->isEmpty()) {
            return response()->json(['message' => 'No transactions found for this user'], 404);
        }
    
        return response()->json($transactions);
    }
}
