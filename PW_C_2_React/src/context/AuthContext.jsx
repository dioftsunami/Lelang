import React, { createContext, useState, useEffect } from 'react';
import api from '../api/axios';

export const AuthContext = createContext();

const AuthProvider = ({ children }) => {
    const [user, setUser] = useState(null);
    const [isLoading, setIsLoading] = useState(true); // Tambahkan loading state

    const login = async (credentials) => {
        const response = await api.post('/login', credentials);
        localStorage.setItem('auth_token', response.data.access_token);
        setUser(response.data.user);
    };

    const register = async (data) => {
        await api.post('/register', data);
    };

    const logout = async () => {
        try {
            await api.post('/logout');
        } catch (error) {
            console.error('Logout failed:', error);
        }
        localStorage.removeItem('auth_token');
        setUser(null);
    };

    const fetchUser = async () => {
        const token = localStorage.getItem('auth_token');
        if (token) {
            try {
                const response = await api.get('/user', {
                    headers: { Authorization: `Bearer ${token}` },
                });
                setUser(response.data.user);
            } catch (error) {
                console.error('Error fetching user:', error);
                logout();
            }
        }
        setIsLoading(false); // Matikan loading
    };

    useEffect(() => {
        fetchUser();

        // Listener untuk memantau perubahan di localStorage
        const handleStorageChange = () => {
            fetchUser();
        };

        window.addEventListener('storage', handleStorageChange);
        return () => window.removeEventListener('storage', handleStorageChange);
    }, []);

    return (
        <AuthContext.Provider value={{ user, isLoading, login, register, logout }}>
            {children}
        </AuthContext.Provider>
    );
};

export default AuthProvider;
