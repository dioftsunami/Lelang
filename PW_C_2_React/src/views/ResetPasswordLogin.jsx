import React, { useState, useContext } from 'react';
import { useNavigate } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import api from '../api/axios';

const ResetPasswordLogin = () => {
    const { user } = useContext(AuthContext);
    const [currentPassword, setCurrentPassword] = useState('');
    const [newPassword, setNewPassword] = useState('');
    const [confirmPassword, setConfirmPassword] = useState('');
    const navigate = useNavigate();

    const handleChangePassword = async (e) => {
        e.preventDefault();

        if (newPassword.length < 8 || confirmPassword.length < 8) {
            toast.error('Password must be at least 8 characters long.', { autoClose: 3000 });
            return;
        }

        if (newPassword !== confirmPassword) {
            toast.error('New passwords do not match.', { autoClose: 3000 });
            return;
        }

        if (newPassword === currentPassword) {
            toast.error('New password must be different from the current password.', { autoClose: 3000 });
            return;
        }

        try {
            const payload = {
                current_password: currentPassword,
                password: newPassword,
                password_confirmation: confirmPassword,
            };

            await api.put('/user', payload);

            toast.success('Password changed successfully!', { autoClose: 3000 });
            setTimeout(() => navigate('/profile'), 3000);
        } catch (error) {
            if (error.response?.data?.message) {
                toast.error(error.response.data.message, { autoClose: 3000 });
            } else {
                toast.error('Failed to change password. Please try again.', { autoClose: 3000 });
            }
            console.error(error);
        }
    };

    const handleBack = () => {
        navigate('/profile');
    };

    return (
        <div className="container d-flex flex-column justify-content-center align-items-center vh-100">
            {/* Tulisan Reset Password di Atas Card */}
            <h2 className="text-center fw-bold mb-3" style={{ color: '#002855', fontSize: '1.8rem' }}>
                Reset Password
            </h2>

            {/* Card */}
            <div className="card shadow" style={{ width: '100%', maxWidth: '400px', backgroundColor: '#FFD700' }}>
                <div className="card-body p-4">
                    <form onSubmit={handleChangePassword}>
                        {/* Current Password */}
                        <div className="mb-3">
                            <label htmlFor="currentPassword" className="form-label fw-bold text-dark">
                                Current Password
                            </label>
                            <input
                                type="password"
                                id="currentPassword"
                                className="form-control"
                                value={currentPassword}
                                onChange={(e) => setCurrentPassword(e.target.value)}
                                required
                                placeholder="Enter your current password"
                            />
                        </div>

                        {/* New Password */}
                        <div className="mb-3">
                            <label htmlFor="newPassword" className="form-label fw-bold text-dark">
                                New Password
                            </label>
                            <input
                                type="password"
                                id="newPassword"
                                className="form-control"
                                value={newPassword}
                                onChange={(e) => setNewPassword(e.target.value)}
                                required
                                placeholder="Enter your new password"
                            />
                        </div>

                        {/* Confirm New Password */}
                        <div className="mb-4">
                            <label htmlFor="confirmPassword" className="form-label fw-bold text-dark">
                                Confirm New Password
                            </label>
                            <input
                                type="password"
                                id="confirmPassword"
                                className="form-control"
                                value={confirmPassword}
                                onChange={(e) => setConfirmPassword(e.target.value)}
                                required
                                placeholder="Confirm your new password"
                            />
                        </div>

                        {/* Buttons */}
                        <button type="submit" className="btn btn-success w-100 fw-bold mb-2">
                            Change Password
                        </button>
                        <button
                            type="button"
                            className="btn btn-secondary w-100 fw-bold"
                            onClick={handleBack}
                        >
                            Back
                        </button>
                    </form>
                </div>
            </div>
            <ToastContainer />
        </div>
    );
};

export default ResetPasswordLogin;
