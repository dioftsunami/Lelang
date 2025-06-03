import React, { useState, useEffect } from 'react';
import { useNavigate, useLocation } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const UpdateBarang = () => {
    const navigate = useNavigate();
    const location = useLocation();
    const token = localStorage.getItem('auth_token');

    const barangData = location.state?.barang;

    const [formData, setFormData] = useState({
        nama_item: '',
        deskripsi: '',
        kategori: '',
        kondisi_barang: '',
        image_url: '',
    });

    useEffect(() => {
        if (barangData) {
            setFormData({
                nama_item: barangData.nama_item || '',
                deskripsi: barangData.deskripsi || '',
                kategori: barangData.kategori || '',
                kondisi_barang: barangData.kondisi_barang || '',
                image_url: barangData.image_url || '',
            });
        } else {
            toast.error('No item data found, redirecting...');
            setTimeout(() => navigate('/barang-admin'), 1500);
        }
    }, [barangData, navigate]);

    const handleChange = (e) => {
        const { name, value } = e.target;
        setFormData((prevData) => ({
            ...prevData,
            [name]: value,
        }));
    };

    const handleSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.put(`/barang/${barangData.id}`, formData, {
                headers: { Authorization: `Bearer ${token}` },
            });
            toast.success('Item updated successfully!');
            setTimeout(() => navigate('/barang-admin'), 1500);
        } catch (error) {
            console.error(error);
            toast.error('Failed to update item');
        }
    };

    return (
        <div className="container mt-5 pt-3">
            <div className="card shadow p-4 mt-5 mx-auto" style={{ maxWidth: '500px' }}>
                <h2 className="fw-bold mb-4 text-center">Update Item</h2>
                <form onSubmit={handleSubmit}>
                    <div className="mb-3">
                        <label className="form-label fw-bold">Item Name</label>
                        <input
                            type="text"
                            className="form-control"
                            name="nama_item"
                            value={formData.nama_item}
                            onChange={handleChange}
                            required
                        />
                    </div>
                    <div className="mb-3">
                        <label className="form-label fw-bold">Description</label>
                        <textarea
                            className="form-control"
                            name="deskripsi"
                            value={formData.deskripsi}
                            onChange={handleChange}
                            rows="3"
                        ></textarea>
                    </div>
                    <div className="mb-3">
                        <label className="form-label fw-bold">Category</label>
                        <input
                            type="text"
                            className="form-control"
                            name="kategori"
                            value={formData.kategori}
                            onChange={handleChange}
                            required
                        />
                    </div>
                    <div className="mb-3">
                        <label className="form-label fw-bold">Condition</label>
                        <input
                            type="text"
                            className="form-control"
                            name="kondisi_barang"
                            value={formData.kondisi_barang}
                            onChange={handleChange}
                            required
                        />
                    </div>
                    <div className="mb-3">
                        <label className="form-label fw-bold">Image URL</label>
                        <input
                            type="url"
                            className="form-control"
                            name="image_url"
                            value={formData.image_url}
                            onChange={handleChange}
                        />
                    </div>
                    <button type="submit" className="btn btn-success w-100 fw-bold">
                        Update Item
                    </button>
                    <button
                        type="button"
                        className="btn btn-secondary w-100 fw-bold mt-2"
                        onClick={() => navigate('/barang-admin')}
                    >
                        Back
                    </button>
                </form>
            </div>
            <ToastContainer />
        </div>
    );
};

export default UpdateBarang;
