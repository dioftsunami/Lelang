import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import api from '../api/axios';

const ResetPassword = () => {
    const [email, setEmail] = useState('');
    const navigate = useNavigate();

    // Check Email Function
    const checkEmail = async () => {
        try {
            const response = await api.post('/check-email', { email });
            if (response.status === 200) {
                return true; // Email exists
            }
        } catch (error) {
            toast.error('Email not found. Please check your input.', { autoClose: 3000 });
            return false;
        }
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        const isEmailValid = await checkEmail();
        if (!isEmailValid) return;

        try {
            // Simulate email submission or reset logic
            toast.success('Password reset link has been sent to your email!', { autoClose: 2000 });
            setTimeout(() => navigate('/login'), 2500);
        } catch (error) {
            toast.error('Something went wrong. Please try again.', { autoClose: 3000 });
        }
    };

    return (
        <div className="container d-flex flex-column justify-content-center align-items-center" style={{ minHeight: '100vh' }}>
            <h1 className="text-dark fw-bold mb-3">Reset Password</h1>
            <div className="card p-4 shadow w-100" style={{ maxWidth: '400px', backgroundColor: '#FFD700', borderRadius: '10px' }}>
                <p className="text-center text-dark">Enter your registered email</p>
                <form onSubmit={handleSubmit}>
                    <div className="mb-3">
                        <label htmlFor="email" className="form-label text-dark fw-bold">
                            Email
                        </label>
                        <input
                            type="email"
                            id="email"
                            className="form-control"
                            value={email}
                            onChange={(e) => setEmail(e.target.value)}
                            placeholder="Enter your email"
                            required
                        />
                    </div>
                    <button type="submit" className="btn btn-success w-100 fw-bold">
                        Submit
                    </button>
                </form>
                <p className="text-center mt-3 text-dark">
                    Remembered your password?{' '}
                    <span onClick={() => navigate('/login')} className="text-decoration-none fw-bold" style={{ color: '#002855', cursor: 'pointer' }}>
                        Login
                    </span>
                </p>
            </div>
            <ToastContainer />
        </div>
    );
};

export default ResetPassword;
