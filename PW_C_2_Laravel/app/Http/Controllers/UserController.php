<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserController extends Controller
{
    // Get authenticated user data
    public function show(Request $request)
    {
        return response()->json([
            'user' => $request->user(),
        ]);
    }

    // Update authenticated user profile
    public function update(Request $request)
    {
        /** @var \App\Models\User $user */
        $user = $request->user();

        // Cek apakah ini permintaan untuk reset password
        if ($request->has('current_password') || $request->has('password')) {
            // Validasi reset password
            $validated = $request->validate([
                'current_password' => 'required|string',
                'password' => 'required|string|min:8|confirmed|different:current_password',
            ]);

            // Verifikasi current_password
            if (!Hash::check($validated['current_password'], $user->password)) {
                return response()->json([
                    'message' => 'Current password is incorrect.',
                ], 400);
            }

            // Update password
            $user->password = Hash::make($validated['password']);
            $user->save();

            return response()->json([
                'message' => 'Password updated successfully.',
            ], 200);
        }

        // Jika bukan permintaan reset password, lakukan update profil
        $validated = $request->validate([
            'name' => 'sometimes|string|max:255',
            'email' => 'sometimes|email|unique:users,email,' . $user->id,
            'telepon' => 'nullable|numeric|min:0',
            'date_of_birth' => 'sometimes|date',
            'uang_dp' => 'nullable|numeric|min:0',
        ]);

        $user->update($validated);

        return response()->json([
            'message' => 'Profile updated successfully',
            'user' => $user,
        ]);
    }

    // Get all users (for admin or other purposes, optional)
    public function index()
    {
        $users = User::all();

        return response()->json([
            'users' => $users,
        ]);
    }
}
