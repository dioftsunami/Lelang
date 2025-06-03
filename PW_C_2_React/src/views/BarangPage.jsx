import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const BarangPage = () => {
    const [barangs, setBarangs] = useState([]);
    const [filteredBarangs, setFilteredBarangs] = useState([]);
    const [loading, setLoading] = useState(true);
    const [deleteBarangId, setDeleteBarangId] = useState(null);
    const [searchTerm, setSearchTerm] = useState('');
    const [showAddModal, setShowAddModal] = useState(false); // Modal untuk Add
    const [showDeleteModal, setShowDeleteModal] = useState(false); // Modal untuk Delete

    const [addFormData, setAddFormData] = useState({
        nama_item: '',
        deskripsi: '',
        kategori: '',
        kondisi_barang: '',
        image_url: '',
    });

    const token = localStorage.getItem('auth_token');
    const navigate = useNavigate();

    // Fetch Barang
    useEffect(() => {
        fetchBarangs();
    }, []);

    const fetchBarangs = async () => {
        try {
            const response = await axios.get('/barang', {
                headers: { Authorization: `Bearer ${token}` },
            });
            setBarangs(response.data);
            setFilteredBarangs(response.data);
            setLoading(false);
        } catch (error) {
            toast.error('Failed to fetch items');
            setLoading(false);
        }
    };

    // Handle Search
    const handleSearch = (e) => {
        const value = e.target.value.toLowerCase();
        setSearchTerm(value);
        const filtered = barangs.filter(
            (barang) =>
                barang.id.toString().includes(value) ||
                barang.nama_item.toLowerCase().includes(value) ||
                barang.kategori.toLowerCase().includes(value)
        );
        setFilteredBarangs(filtered);
    };

    // Handle Add Item
    const handleAddSubmit = async (e) => {
        e.preventDefault();
        try {
            await axios.post('/barang', addFormData, {
                headers: { Authorization: `Bearer ${token}` },
            });
            toast.success('Item added successfully');
            setShowAddModal(false);
            setAddFormData({ nama_item: '', deskripsi: '', kategori: '', kondisi_barang: '', image_url: '' });
            fetchBarangs();
        } catch (error) {
            toast.error(error.response?.data?.message || 'Failed to add item');
        }
    };

    // Handle Delete
    const handleDelete = async () => {
        try {
            await axios.delete(`/barang/${deleteBarangId}`, {
                headers: { Authorization: `Bearer ${token}` },
            });
            setBarangs((prev) => prev.filter((barang) => barang.id !== deleteBarangId));
            setFilteredBarangs((prev) => prev.filter((barang) => barang.id !== deleteBarangId));
            toast.success('Item deleted successfully');
        } catch (error) {
            toast.error('Failed to delete item');
        } finally {
            setShowDeleteModal(false);
            setDeleteBarangId(null);
        }
    };

    const handleCloseDeleteModal = () => {
        setShowDeleteModal(false);
        setDeleteBarangId(null);
    };

    return (
        <div className="container mt-5 ">
            <h1 className="text-center fw-bold mb-4 mt-5 pt-4">Items Management</h1>
            {/* Main Card Wrapper */}
            <div className="card shadow p-4">
                {/* Header Section */}
                <div className="d-flex justify-content-between align-items-center mb-3">
                    <h3 className="fw-bold mb-0">Item List</h3>
                    <button
                        className="btn btn-success fw-bold px-4 py-2"
                        onClick={() => setShowAddModal(true)}
                    >
                        Add
                    </button>
                </div>

                {/* Search Bar */}
                <div className="mb-3">
                    <input
                        type="text"
                        className="form-control"
                        placeholder="Search items by ID, Name, or Category..."
                        value={searchTerm}
                        onChange={handleSearch}
                    />
                </div>

                {/* List Barang */}
                {loading ? (
                    <p className="text-center">Loading...</p>
                ) : filteredBarangs.length > 0 ? (
                    <ul className="list-group">
                        {filteredBarangs.map((barang) => (
                            <li
                                key={barang.id}
                                className="list-group-item d-flex justify-content-between align-items-center"
                            >
                                <span>
                                    <strong>ID:</strong> {barang.id} |{' '}
                                    <strong>Name:</strong> {barang.nama_item} |{' '}
                                    <strong>Category:</strong> {barang.kategori} |{' '}
                                    <strong>Condition:</strong> {barang.kondisi_barang}
                                </span>
                                <div>
                                    <button
                                        className="btn btn-sm btn-primary me-2"
                                        onClick={() =>
                                            navigate(`/update-barang/${barang.id}`, { state: { barang } })
                                        }
                                    >
                                        Update
                                    </button>
                                    <button
                                        className="btn btn-sm btn-danger"
                                        onClick={() => {
                                            setDeleteBarangId(barang.id);
                                            setShowDeleteModal(true);
                                        }}
                                    >
                                        Delete
                                    </button>
                                </div>
                            </li>
                        ))}
                    </ul>
                ) : (
                    <p className="text-center text-muted">No items available.</p>
                )}
            </div>

            {/* Modal Add Barang */}
            {showAddModal && (
                <div className="modal fade show d-block" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Add Item</h5>
                                <button className="btn-close" onClick={() => setShowAddModal(false)}></button>
                            </div>
                            <div className="modal-body">
                                <form onSubmit={handleAddSubmit}>
                                    <div className="mb-3">
                                        <label className="form-label fw-bold">Item Name</label>
                                        <input
                                            type="text"
                                            className="form-control"
                                            value={addFormData.nama_item}
                                            onChange={(e) =>
                                                setAddFormData({ ...addFormData, nama_item: e.target.value })
                                            }
                                            required
                                        />
                                    </div>
                                    <div className="mb-3">
                                        <label className="form-label fw-bold">Description</label>
                                        <textarea
                                            className="form-control"
                                            value={addFormData.deskripsi}
                                            onChange={(e) =>
                                                setAddFormData({ ...addFormData, deskripsi: e.target.value })
                                            }
                                            rows="3"
                                        ></textarea>
                                    </div>
                                    <div className="mb-3">
                                        <label className="form-label fw-bold">Category</label>
                                        <input
                                            type="text"
                                            className="form-control"
                                            value={addFormData.kategori}
                                            onChange={(e) =>
                                                setAddFormData({ ...addFormData, kategori: e.target.value })
                                            }
                                            required
                                        />
                                    </div>
                                    <div className="mb-3">
                                        <label className="form-label fw-bold">Condition</label>
                                        <input
                                            type="text"
                                            className="form-control"
                                            value={addFormData.kondisi_barang}
                                            onChange={(e) =>
                                                setAddFormData({ ...addFormData, kondisi_barang: e.target.value })
                                            }
                                            required
                                        />
                                    </div>
                                    <div className="mb-3">
                                        <label className="form-label fw-bold">Image URL</label>
                                        <input
                                            type="url"
                                            className="form-control"
                                            value={addFormData.image_url}
                                            onChange={(e) =>
                                                setAddFormData({ ...addFormData, image_url: e.target.value })
                                            }
                                        />
                                    </div>
                                    <button type="submit" className="btn btn-success w-100">
                                        Add Item
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            )}

            {/* Modal Delete Confirmation */}
            {showDeleteModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Confirm Deletion</h5>
                                <button type="button" className="btn-close" onClick={handleCloseDeleteModal}></button>
                            </div>
                            <div className="modal-body">
                                Are you sure you want to delete this item?
                            </div>
                            <div className="modal-footer">
                                <button className="btn btn-secondary" onClick={handleCloseDeleteModal}>
                                    Cancel
                                </button>
                                <button className="btn btn-danger" onClick={handleDelete}>
                                    Confirm
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            )}

            <ToastContainer />
        </div>
    );
};

export default BarangPage;
