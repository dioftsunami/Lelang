import React, { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const UpdateUser = () => {
    const { userId } = useParams(); // Ambil user ID dari URL
    const navigate = useNavigate();
    const token = localStorage.getItem('auth_token'); // Ambil token autentikasi

    // State untuk form data user
    const [formData, setFormData] = useState({
        name: '',
        email: '',
        date_of_birth: '',
        telepon: '',
        uang_dp: '',
    });


    // Fetch user data saat halaman dimuat
    useEffect(() => {
        const fetchUserData = async () => {
            try {
                const response = await axios.get(`/users/${userId}`, {
                    headers: { Authorization: `Bearer ${token}` },
                });
                const userData = response.data.user;

                // Format uang_dp sebelum set ke state formData
                setFormData({
                    ...userData,
                    uang_dp: formatPrice(userData.uang_dp || ''), // Pastikan uang_dp diformat
                });
            } catch (error) {
                toast.error('Failed to fetch user data');
                console.error(error);
            }
        };

        fetchUserData();
    }, [userId, token]);

    const handleSubmit = async (e) => {
        e.preventDefault();
        console.log('Data yang dikirim:', formData); // Debug data

        const cleanedData = {
            ...formData,
            uang_dp: formData.uang_dp.replace(/\./g, ''), // Hapus titik agar uang_dp berupa angka
        };

        try {
            await axios.put(
                `/users/${userId}`,
                cleanedData,
                { headers: { Authorization: `Bearer ${token}` } }
            );
            toast.success('User updated successfully', { autoClose: 1500 }); // Tampilkan toast selama 2 detik
            setTimeout(() => navigate(-1), 1800); // Kembali ke halaman sebelumnya setelah 2.2 detik
        } catch (error) {
            console.error('Error response:', error.response);
            toast.error('Failed to update user');
        }
    };

    const formatPrice = (price) => {
        return price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');
    };

    const handleInputChange = (e) => {
        const value = e.target.value.replace(/\./g, ''); // Hapus titik
        if (!isNaN(value)) {
            setFormData((prevData) => ({
                ...prevData,
                uang_dp: formatPrice(value), // Format ulang nilai Uang DP
            }));
        }
    };

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({
            ...prevData,
            [name]: value,
        }));
    };

    return (
        <div className="container mt-5 pt-3">
            <div className="card shadow-lg p-4 mt-5 mx-auto" style={{ maxWidth: '500px' }}>
                <h2 className="fw-bold mb-4 text-center">Update User</h2>
                <form onSubmit={handleSubmit}>
                    {/* Full Name */}
                    <div className="mb-3">
                        <label className="form-label fw-bold">Full Name</label>
                        <input
                            type="text"
                            className="form-control"
                            name="name"
                            value={formData.name}
                            onChange={handleChange}
                            required
                        />
                    </div>

                    {/* Email */}
                    <div className="mb-3">
                        <label className="form-label fw-bold">Email</label>
                        <input
                            type="email"
                            className="form-control"
                            name="email"
                            value={formData.email}
                            onChange={handleChange}
                            required
                        />
                    </div>

                    {/* Date of Birth */}
                    <div className="mb-3">
                        <label className="form-label fw-bold">Date of Birth</label>
                        <input
                            type="date"
                            className="form-control"
                            name="date_of_birth"
                            value={formData.date_of_birth}
                            onChange={handleChange}
                        />
                    </div>

                    {/* Telepon */}
                    <div className="mb-3">
                        <label className="form-label fw-bold">Telepon</label>
                        <input
                            type="text"
                            className="form-control"
                            name="telepon"
                            value={formData.telepon}
                            onChange={handleChange}
                        />
                    </div>

                    {/* Uang DP */}
                    <div className="mb-3">
                        <label className="form-label fw-bold">Wallet Credits</label>
                        <input
                            type="text"
                            className="form-control"
                            name="uang_dp"
                            value={formData.uang_dp}
                            onChange={handleInputChange} // Gunakan handleInputChange khusus untuk format harga
                        />
                    </div>

                    <button type="submit" className="btn btn-success w-100 fw-bold mt-3">
                        Update User
                    </button>
                    <button
                        type="button"
                        className="btn btn-secondary w-100 fw-bold mt-2"
                        onClick={() => navigate(-1)}
                    >
                        Back
                    </button>
                </form>
            </div>
            <ToastContainer />
        </div>
    );
};

export default UpdateUser;
