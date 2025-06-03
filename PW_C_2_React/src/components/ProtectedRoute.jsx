import React, { useContext } from 'react';
import { Navigate } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';

const ProtectedRoute = ({ children, adminOnly = false }) => {
    const { user, isLoading } = useContext(AuthContext);

    // Jika masih loading, tampilkan spinner atau teks loading
    if (isLoading) {
        return <div>Loading...</div>;
    }

    // Jika user tidak login, redirect ke halaman login
    if (!user) {
        return <Navigate to="/login" replace />;
    }

    // Proteksi khusus untuk admin
    if (adminOnly && user.email !== 'admin@admin.com') {
        return <Navigate to="/" replace />;
    }

    return children;
};

export default ProtectedRoute;
