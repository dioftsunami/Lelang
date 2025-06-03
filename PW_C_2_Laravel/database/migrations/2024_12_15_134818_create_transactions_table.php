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
        Schema::create('transactions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('id_user')->index('transactions_id_user_foreign');
            $table->unsignedBigInteger('id_lelang')->index('transactions_id_lelang_foreign');
            $table->unsignedBigInteger('id_bid')->index('transactions_id_bid_foreign');
            $table->string('shipment_address')->nullable();
            $table->decimal('total_price', 15);
            $table->timestamps();
            $table->string('shipment_status')->nullable()->default('pending');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('transactions');
    }
};
