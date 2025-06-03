<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\BarangController;
use App\Http\Controllers\LelangController;
use App\Http\Controllers\BidController;
use App\Http\Controllers\TransactionController;

// Public routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

Route::get('/lelangs', [LelangController::class, 'index']); // main page before login

// Protected routes (require Sanctum authentication)
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);

    // User-related routes
    Route::get('/user', [UserController::class, 'show']); // Get authenticated user
    Route::put('/user', [UserController::class, 'update']); // Update authenticated user profile
    Route::get('/users', [UserController::class, 'index']); // (Optional) Admin route to fetch all users

    // Barang
    Route::get('/barang', [BarangController::class, 'index']); // Get all items
    Route::get('/barang/{id}', [BarangController::class, 'show']); // Get single item
    Route::post('/barang', [BarangController::class, 'store']); // Create new item
    Route::put('/barang/{id}', [BarangController::class, 'update']); // Update item
    Route::delete('/barang/{id}', [BarangController::class, 'destroy']); // Delete item

    // Lelang
    Route::get('/lelang', [LelangController::class, 'index']); // Get all lelang
    Route::get('/lelang/{id}', [LelangController::class, 'show']); // Get single lelang
    Route::post('/lelang', [LelangController::class, 'store']); // Create new lelang
    Route::put('/lelang/{id}', [LelangController::class, 'update']); // Update lelang
    Route::delete('/lelang/{id}', [LelangController::class, 'destroy']); // Delete lelang

    // Bids
    Route::get('/bids/{id_lelang}', [BidController::class, 'index']); // Get all bids for a specific lelang
    Route::post('/bids', [BidController::class, 'store']); // Create a bid
    Route::get('/bids/{id}', [BidController::class, 'show']); // Get specific a bid
    Route::delete('/bids/{id}', [BidController::class, 'destroy']); // Delete a bid
    Route::get('/bids/user/{id_user}', [BidController::class, 'getBidsByUser']); // Get all bids by a specific user

    Route::put('/bids/{id}', [BidController::class, 'update']); // Update a bid (is_winning, etc.)

    // Transaction
    Route::get('/transactions', [TransactionController::class, 'index']); // Get all transactions
    Route::post('/transactions', [TransactionController::class, 'store']); // Create a transaction
    Route::get('/transactions/{id}', [TransactionController::class, 'show']); // Get a transaction by ID
    Route::put('/transactions/{id}', [TransactionController::class, 'update']); // Update a transaction
    Route::delete('/transactions/{id}', [TransactionController::class, 'destroy']); // Delete a transaction
    Route::get('/transactions/user/{id_user}', [TransactionController::class, 'getTransactionsByUser'])->name('transactions.byUser');

    Route::post('/auctions/{id}/end', [LelangController::class, 'endAuction']); //End a auction - saving transaction
});

