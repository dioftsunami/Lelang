// index.js (React 18)
import React from 'react';
import { createRoot } from 'react-dom/client';
import App from './App';
import { BrowserRouter } from 'react-router-dom';
import AuthProvider from './context/AuthContext';
import 'bootstrap/dist/css/bootstrap.min.css'; // Import Bootstrap CSS
import 'bootstrap/dist/js/bootstrap.bundle.min'; // Import Bootstrap JS
import './index.css'; // Import CSS global

// Temukan elemen root dari file HTML Anda
const rootElement = document.getElementById('root');
const root = createRoot(rootElement); // Gunakan createRoot untuk membuat root React

// Render aplikasi menggunakan createRoot
root.render(
    <React.StrictMode>
        <BrowserRouter>
            <AuthProvider>
                <App />
            </AuthProvider>
        </BrowserRouter>
    </React.StrictMode>
);
