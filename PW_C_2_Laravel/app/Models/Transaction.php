<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_user',
        'id_lelang',
        'id_bid',
        'shipment_address',
        'total_price',
        'shipment_status',
    ];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    public function lelang()
    {
        return $this->belongsTo(Lelang::class, 'id_lelang');
    }

    public function bid()
    {
        return $this->belongsTo(Bid::class, 'id_bid');
    }
}
