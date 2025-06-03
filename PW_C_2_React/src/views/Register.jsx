import React, { useState, useContext } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const Register = () => {
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        password: '',
        password_confirmation: '',
        date_of_birth: '',
        uang_dp: 0,
    });
    const { register } = useContext(AuthContext);
    const navigate = useNavigate();

    const handleSubmit = async (e) => {
        e.preventDefault();

        if (formData.password.length < 8) {
            toast.error('Password must be at least 8 characters', { autoClose: 3000 });
            return;
        }

        try {
            await register(formData);
            toast.success('Registration successful!', { autoClose: 1500 });
            setTimeout(() => navigate('/login'), 2000);
        } catch (error) {
            if (error.response?.status === 422) {
                toast.error(error.response.data.message || 'Invalid input', { autoClose: 3000 });
            } else {
                toast.error('An unexpected error occurred. Please try again.', { autoClose: 3000 });
            }
            console.error('Registration failed:', error);
        }
    };

    return (
        <div className="container d-flex flex-column justify-content-center align-items-center mt-5">
            {/* Title Section */}
            <h1 className="fw-bold text-dark mb-4">Register</h1>

            {/* Register Card */}
            <div className="card w-100" style={{ maxWidth: '400px', backgroundColor: '#FFD700' }}>
                <div className="card-body p-4">
                    <h5 className="text-center text-dark mb-4 fw-bold">Create Your Account</h5>
                    <form onSubmit={handleSubmit}>
                        <div className="mb-3">
                            <label htmlFor="name" className="form-label fw-bold text-dark">
                                Full Name
                            </label>
                            <input
                                type="text"
                                id="name"
                                className="form-control"
                                value={formData.name}
                                onChange={(e) =>
                                    setFormData({ ...formData, name: e.target.value })
                                }
                                required
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="email" className="form-label fw-bold text-dark">
                                Email
                            </label>
                            <input
                                type="email"
                                id="email"
                                className="form-control"
                                value={formData.email}
                                onChange={(e) =>
                                    setFormData({ ...formData, email: e.target.value })
                                }
                                required
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="password" className="form-label fw-bold text-dark">
                                Password
                            </label>
                            <input
                                type="password"
                                id="password"
                                className="form-control"
                                value={formData.password}
                                onChange={(e) =>
                                    setFormData({ ...formData, password: e.target.value })
                                }
                                required
                            />
                        </div>
                        <div className="mb-3">
                            <label htmlFor="password_confirmation" className="form-label fw-bold text-dark">
                                Confirm Password
                            </label>
                            <input
                                type="password"
                                id="password_confirmation"
                                className="form-control"
                                value={formData.password_confirmation}
                                onChange={(e) =>
                                    setFormData({
                                        ...formData,
                                        password_confirmation: e.target.value,
                                    })
                                }
                                required
                            />
                        </div>
                        <div className="mb-4">
                            <label htmlFor="date_of_birth" className="form-label fw-bold text-dark">
                                Date of Birth
                            </label>
                            <input
                                type="date"
                                id="date_of_birth"
                                className="form-control"
                                value={formData.date_of_birth}
                                onChange={(e) =>
                                    setFormData({ ...formData, date_of_birth: e.target.value })
                                }
                                required
                            />
                        </div>
                        <button type="submit" className="btn btn-success w-100 fw-bold">
                            Register
                        </button>
                    </form>
                    {/* Sign In Link */}
                    <p className="text-center mt-3 text-dark">
                        Already have an account?{' '}
                        <Link to="/login" className="text-decoration-none fw-bold" style={{ color: '#002855' }}>
                            Sign in
                        </Link>
                    </p>
                </div>
            </div>


            <ToastContainer />
        </div>
    );
};

export default Register;
