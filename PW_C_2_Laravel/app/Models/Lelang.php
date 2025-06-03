<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lelang extends Model
{
    use HasFactory;

    protected $table = 'lelang'; // Nama tabel

    protected $fillable = [
        'barang_id',
        'title',
        'deskripsi',
        'start_time',
        'end_time',
        'status',
        'harga_awal',
        'harga_akhir',
    ];
    /**
     * Relasi ke tabel Barang.
     */
    public function barang()
    {
        return $this->belongsTo(Barang::class, 'barang_id');
    }
}
