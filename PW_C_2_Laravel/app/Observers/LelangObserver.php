<?php

namespace App\Observers;

use App\Models\Lelang;
use App\Models\Bid;
use App\Models\Transaction;

class LelangObserver
{
    /**
     * Handle the Lelang "updated" event.
     *
     * @param  \App\Models\Lelang  $lelang
     * @return void
     */
    public function updated(Lelang $lelang)
    {
        // Cek apakah status berubah menjadi ended
        if ($lelang->isDirty('status') && $lelang->status === 'ended') {
            // Cari bid tertinggi
            $highestBid = Bid::where('id_lelang', $lelang->id)
                ->orderBy('bid_price', 'desc')
                ->first();

            if ($highestBid) {
                // Buat transaksi baru
                Transaction::create([
                    'id_user' => $highestBid->id_user,
                    'id_lelang' => $lelang->id,
                    'id_bid' => $highestBid->id,
                    'shipment_address' => null,
                    'total_price' => $highestBid->bid_price,
                    'shipment_status' => 'pending',
                ]);
            }
        }
    }
}
