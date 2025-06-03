<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('lelang', function (Blueprint $table) {
            $table->foreign(['barang_id'])->references(['id'])->on('barang')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('lelang', function (Blueprint $table) {
            $table->dropForeign('lelang_barang_id_foreign');
        });
    }
};
