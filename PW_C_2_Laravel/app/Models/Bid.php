<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Bid extends Model
{
    use HasFactory;

    protected $fillable = [
        'id_user',
        'id_lelang',
        'bid_price',
        'bid_time',
        'is_winning',
    ];

    /**
     * Relasi ke tabel users.
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    /**
     * Relasi ke tabel lelang.
     */
    public function lelang()
    {
        return $this->belongsTo(Lelang::class, 'id_lelang');
    }
}
