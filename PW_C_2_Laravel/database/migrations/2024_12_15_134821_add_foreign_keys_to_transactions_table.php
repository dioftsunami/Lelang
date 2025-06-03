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
        Schema::table('transactions', function (Blueprint $table) {
            $table->foreign(['id_bid'])->references(['id'])->on('bids')->onUpdate('restrict')->onDelete('cascade');
            $table->foreign(['id_lelang'])->references(['id'])->on('lelang')->onUpdate('restrict')->onDelete('cascade');
            $table->foreign(['id_user'])->references(['id'])->on('users')->onUpdate('restrict')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('transactions', function (Blueprint $table) {
            $table->dropForeign('transactions_id_bid_foreign');
            $table->dropForeign('transactions_id_lelang_foreign');
            $table->dropForeign('transactions_id_user_foreign');
        });
    }
};
