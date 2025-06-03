import React, { useState, useContext } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const Login = () => {
    const [credentials, setCredentials] = useState({ email: '', password: '' });
    const { login } = useContext(AuthContext);
    const navigate = useNavigate();

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (credentials.password.length < 8) {
            toast.error('Password must be at least 8 characters', { autoClose: 3000 });
            return;
        }

        try {
            const response = await login(credentials); // Pastikan response berisi informasi user
            const user = response?.user; // Ambil data user setelah login berhasil

            // Cek jika email adalah admin@admin.com
            if (credentials.email === 'admin@admin.com') {
                toast.success('Welcome, Admin!', { autoClose: 1000 });
                setTimeout(() => navigate('/admin'), 1300); // Arahkan ke /admin
            } else {
                toast.success('Login successful!', { autoClose: 1000 });
                setTimeout(() => navigate('/'), 1300); // Arahkan ke home untuk user biasa
            }
        } catch (error) {
            toast.error('Invalid email or password!', { autoClose: 3000 });
            console.error('Login failed:', error);
        }
    };

    return (
        <div className="container d-flex flex-column justify-content-center align-items-center" style={{ minHeight: '100vh' }}>
            {/* Tulisan Login */}
            <h1 className="text-dark fw-bold mb-3">Login</h1>
            {/* Card Form */}
            <div
                className="card p-4 shadow w-100"
                style={{
                    maxWidth: '400px',
                    backgroundColor: '#FFD700',
                    borderRadius: '10px',
                }}
            >
                <p className="text-center text-dark">Enter your credentials</p>
                <form onSubmit={handleSubmit}>
                    <div className="mb-3">
                        <label htmlFor="email" className="form-label text-dark fw-bold">
                            Email
                        </label>
                        <input
                            type="email"
                            id="email"
                            className="form-control"
                            value={credentials.email}
                            onChange={(e) =>
                                setCredentials({ ...credentials, email: e.target.value })
                            }
                            required
                        />
                    </div>
                    <div className="mb-3">
                        <label htmlFor="password" className="form-label text-dark fw-bold">
                            Password
                        </label>
                        <input
                            type="password"
                            id="password"
                            className="form-control"
                            value={credentials.password}
                            onChange={(e) =>
                                setCredentials({ ...credentials, password: e.target.value })
                            }
                            required
                        />
                    </div>
                    <div className="text-end mb-3">
                        <Link to="/reset-password" className="text-decoration-none text-muted" style={{ cursor: 'pointer' }}>
                            Forgot Password?
                        </Link>
                    </div>
                    <button type="submit" className="btn btn-success w-100 fw-bold">
                        Login
                    </button>
                </form>
                <p className="text-center mt-3 text-dark">
                    Don't have an account yet?{' '}
                    <Link to="/register" className="text-decoration-none fw-bold" style={{ color: '#002855' }}>
                        Sign up
                    </Link>
                </p>
            </div>
            <ToastContainer />
        </div>
    );
};

export default Login;
