<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    use HasFactory;

    // Nama tabel (opsional jika sesuai konvensi Laravel)
    protected $table = 'barang';

    // Kolom yang dapat diisi (mass-assignable)
    protected $fillable = [
        'nama_item',
        'deskripsi',
        'kategori',
        'kondisi_barang',
        'image_url',
    ];
}
