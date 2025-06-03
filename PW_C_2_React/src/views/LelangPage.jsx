import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const LelangPage = () => {
    const [lelangs, setLelangs] = useState([]); // Daftar lelang
    const [filteredLelangs, setFilteredLelangs] = useState([]); // Hasil pencarian
    const [barangs, setBarangs] = useState([]); // Daftar barang untuk dropdown
    const [loading, setLoading] = useState(true);
    const [deleteLelangId, setDeleteLelangId] = useState(null);
    const [searchTerm, setSearchTerm] = useState('');

    // Modal untuk add item
    const [showAddModal, setShowAddModal] = useState(false);

    // State untuk form add item
    const [formData, setFormData] = useState({
        barang_id: '',
        title: '',
        deskripsi: '',
        start_time: '',
        end_time: '',
        status: 'active',
        harga_awal: '',
    });

    // Modal untuk konfirmasi delete
    const [showModal, setShowModal] = useState(false);

    const token = localStorage.getItem('auth_token'); // Autentikasi token
    const navigate = useNavigate();

    // Fetch daftar lelang dan barang saat komponen dimuat
    useEffect(() => {
        fetchLelangs();
    }, []);

    useEffect(() => {
        // Panggil setelah lelangs sudah didapat agar bisa filter barang
        fetchAvailableBarangs();
    }, [lelangs]);

    const fetchLelangs = async () => {
        try {
            const response = await axios.get('/lelang', {
                headers: { Authorization: `Bearer ${token}` },
            });
            setLelangs(response.data);
            setFilteredLelangs(response.data);
            setLoading(false);
        } catch (error) {
            console.error('Failed to fetch lelangs:', error);
            toast.error('Failed to fetch lelangs');
            setLoading(false);
        }
    };

    const fetchAvailableBarangs = async () => {
        try {
            const response = await axios.get('/barang', {
                headers: { Authorization: `Bearer ${token}` },
            });
            // Filter barang yang belum terikat dengan lelang lain
            const takenBarangIds = new Set(lelangs.map((lelang) => lelang.barang_id));
            const availableBarangs = response.data.filter((barang) => !takenBarangIds.has(barang.id));
            setBarangs(availableBarangs);
        } catch (error) {
            console.error('Failed to fetch items:', error);
            toast.error('Failed to fetch items');
        }
    };

    // Handle Search
    const handleSearch = (e) => {
        const value = e.target.value.toLowerCase();
        setSearchTerm(value);
        const filtered = lelangs.filter(
            (lelang) =>
                lelang.id.toString().includes(value) ||
                lelang.barang_id?.toString().includes(value) ||
                lelang.title.toLowerCase().includes(value)
        );
        setFilteredLelangs(filtered);
    };

    // Handle End Auction
    const handleEndAuction = async (id) => {
        try {
            // Periksa apakah ada bid untuk lelang ini
            const bidResponse = await axios.get(`/bids/${id}`, {
                headers: { Authorization: `Bearer ${token}` },
            });

            if (!Array.isArray(bidResponse.data) || bidResponse.data.length === 0) {
                // Tidak ada bid sama sekali
                toast.error('Minimum one bid required.');
                return;
            }

            // Jika ada bid, lanjutkan end auction
            const response = await axios.post(
                `/auctions/${id}/end`,
                {},
                { headers: { Authorization: `Bearer ${token}` } }
            );
            // Update status di state
            setLelangs((prev) =>
                prev.map((lelang) => (lelang.id === id ? { ...lelang, status: 'ended' } : lelang))
            );
            setFilteredLelangs((prev) =>
                prev.map((lelang) => (lelang.id === id ? { ...lelang, status: 'ended' } : lelang))
            );
            toast.success(response.data.message || 'Auction ended successfully');
        } catch (error) {
            console.error('Failed to end auction:', error.response?.data);
            toast.error('Failed to end auction');
        }
    };

    // Handle Delete
    const handleShowModal = (id) => {
        setDeleteLelangId(id);
        setShowModal(true);
    };

    const handleCloseModal = () => {
        setShowModal(false);
        setDeleteLelangId(null);
    };

    const handleDelete = async () => {
        try {
            await axios.delete(`/lelang/${deleteLelangId}`, {
                headers: { Authorization: `Bearer ${token}` },
            });
            setLelangs((prev) => prev.filter((lelang) => lelang.id !== deleteLelangId));
            setFilteredLelangs((prev) => prev.filter((lelang) => lelang.id !== deleteLelangId));
            setShowModal(false);
            toast.success('Lelang deleted successfully');
        } catch (error) {
            console.error('Failed to delete lelang:', error);
            toast.error('Failed to delete lelang');
        }
    };

    // Handle Add Item
    const handleSubmit = async (e) => {
        e.preventDefault();
        if (!formData.barang_id) {
            toast.error('Please select a valid item');
            return;
        }
        try {
            await axios.post(
                '/lelang',
                formData,
                { headers: { Authorization: `Bearer ${token}` } }
            );
            toast.success('Lelang created successfully!');
            setShowAddModal(false);
            fetchLelangs();
            setFormData({
                barang_id: '',
                title: '',
                deskripsi: '',
                start_time: '',
                end_time: '',
                status: 'active',
                harga_awal: '',
            });
        } catch (error) {
            console.error('Failed to add lelang:', error);
            toast.error('Failed to add lelang');
        }
    };

    const handleCloseAddModal = () => {
        setShowAddModal(false);
        setFormData({
            barang_id: '',
            title: '',
            deskripsi: '',
            start_time: '',
            end_time: '',
            status: 'active',
            harga_awal: '',
        });
    };

    return (
        <div className="container mt-5 ">
            <h1 className="text-center fw-bold mb-4 mt-5 pt-4">Auction Management</h1>
            <h6 className=" mb-1">Guidance :</h6>
            <h6 className=" mb-1">1. You need at least 1 item that are not related yet to auction database to add the auction</h6>
            <h6 className=" mb-1">2. If you can't press add button, then create new items in item management page</h6>
            <h6 className=" mb-2">3. It's required to have one bid minimum to end the auction</h6>
            {/* Main Card Wrapper */}
            <div className="card shadow p-4">
                <div className="d-flex justify-content-between align-items-center mb-4">
                    <h3 className="fw-bold mb-0">Auction List</h3>
                    <button
                        className="btn btn-success fw-bold px-4 py-2"
                        onClick={() => setShowAddModal(true)}
                        disabled={barangs.length === 0}
                    >
                        Add
                    </button>
                </div>

                {/* Search Bar */}
                <div className="mb-3">
                    <input
                        type="text"
                        className="form-control"
                        placeholder="Search lelang by ID, Barang ID, or Title..."
                        value={searchTerm}
                        onChange={handleSearch}
                    />
                </div>

                {/* Daftar Lelang */}
                {loading ? (
                    <p className="text-center">Loading...</p>
                ) : filteredLelangs.length > 0 ? (
                    <ul className="list-group">
                        {filteredLelangs.map((lelang) => (
                            <li
                                key={lelang.id}
                                className="list-group-item d-flex justify-content-between align-items-center"
                            >
                                <span style={{ minWidth: '70%' }}>
                                    <strong>ID:</strong> {lelang.id} |{' '}
                                    <strong>Item ID:</strong> {lelang.barang_id} |{' '}
                                    <strong>Title:</strong> {lelang.title} |{' '}
                                    <strong>Status:</strong>{' '}
                                    <span className="text-uppercase fw-bold">{lelang.status}</span>
                                </span>
                                <div>
                                    {lelang.status === 'active' && (
                                        <button
                                            className="btn btn-sm btn-warning me-2"
                                            onClick={() => handleEndAuction(lelang.id)}
                                        >
                                            End Auction
                                        </button>
                                    )}
                                    <button
                                        className="btn btn-sm btn-primary me-2"
                                        onClick={() =>
                                            navigate(`/update-lelang/${lelang.id}`, {
                                                state: { lelang },
                                            })
                                        }
                                    >
                                        Update
                                    </button>
                                    <button
                                        className="btn btn-sm btn-danger"
                                        onClick={() => handleShowModal(lelang.id)}
                                    >
                                        Delete
                                    </button>
                                </div>
                            </li>
                        ))}
                    </ul>
                ) : (
                    <p className="text-center text-muted">No lelangs available.</p>
                )}
            </div>

            {/* Modal Add Item */}
            {showAddModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Add Lelang</h5>
                                <button type="button" className="btn-close" onClick={handleCloseAddModal}></button>
                            </div>
                            <div className="modal-body">
                                {/* Pilih Item Terlebih Dahulu */}
                                <div className="mb-3">
                                    <label className="form-label fw-bold">Select Item</label>
                                    <select
                                        className="form-select"
                                        value={formData.barang_id}
                                        onChange={(e) => setFormData({ ...formData, barang_id: e.target.value })}
                                        required
                                    >
                                        <option value="">-- Select Item --</option>
                                        {barangs.length > 0 ? (
                                            barangs.map((barang) => (
                                                <option key={barang.id} value={barang.id}>
                                                    {barang.nama_item} (ID: {barang.id})
                                                </option>
                                            ))
                                        ) : (
                                            <option disabled>No Items Available</option>
                                        )}
                                    </select>
                                </div>
                                {/* Jika barang_id sudah terpilih, tampilkan field lain */}
                                {formData.barang_id && (
                                    <form onSubmit={handleSubmit}>
                                        <div className="mb-3">
                                            <label className="form-label fw-bold">Title</label>
                                            <input
                                                type="text"
                                                className="form-control"
                                                value={formData.title}
                                                onChange={(e) => setFormData({ ...formData, title: e.target.value })}
                                                placeholder="Enter title"
                                                required
                                            />
                                        </div>
                                        <div className="mb-3">
                                            <label className="form-label fw-bold">Deskripsi</label>
                                            <textarea
                                                className="form-control"
                                                value={formData.deskripsi}
                                                onChange={(e) => setFormData({ ...formData, deskripsi: e.target.value })}
                                                placeholder="Enter description"
                                            ></textarea>
                                        </div>
                                        <div className="mb-3">
                                            <label className="form-label fw-bold">Start Time (24h clock format)</label>
                                            <input
                                                type="datetime-local"
                                                className="form-control"
                                                value={formData.start_time}
                                                onChange={(e) => setFormData({ ...formData, start_time: e.target.value })}
                                                placeholder="2024-12-10T08:00:00"
                                                required
                                            />
                                        </div>
                                        <div className="mb-3">
                                            <label className="form-label fw-bold">End Time (24h clock format)</label>
                                            <input
                                                type="datetime-local"
                                                className="form-control"
                                                value={formData.end_time}
                                                onChange={(e) => setFormData({ ...formData, end_time: e.target.value })}
                                                placeholder="2024-12-17T12:00:00"
                                                required
                                            />
                                        </div>
                                        <div className="mb-3">
                                            <label className="form-label fw-bold">Status</label>
                                            <select
                                                className="form-select"
                                                value={formData.status}
                                                onChange={(e) => setFormData({ ...formData, status: e.target.value })}
                                                required
                                            >
                                                <option value="active">active</option>
                                            </select>
                                        </div>
                                        <div className="mb-3">
                                            <label className="form-label fw-bold">Harga Awal</label>
                                            <input
                                                type="number"
                                                className="form-control"
                                                value={formData.harga_awal}
                                                onChange={(e) => setFormData({ ...formData, harga_awal: e.target.value })}
                                                placeholder="5000000.00"
                                                required
                                            />
                                        </div>
                                        <div className="d-flex justify-content-between">
                                            <button type="button" className="btn btn-secondary" onClick={handleCloseAddModal}>
                                                Cancel
                                            </button>
                                            <button
                                                type="submit"
                                                className="btn btn-success"
                                                disabled={barangs.length === 0}
                                            >
                                                Add Item
                                            </button>
                                        </div>
                                    </form>
                                )}
                            </div>
                        </div>
                    </div>
                </div>
            )}

            {/* Modal Delete Confirmation */}
            {showModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Confirm Deletion</h5>
                                <button type="button" className="btn-close" onClick={handleCloseModal}></button>
                            </div>
                            <div className="modal-body">Are you sure you want to delete this lelang?</div>
                            <div className="modal-footer">
                                <button className="btn btn-secondary" onClick={handleCloseModal}>
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

export default LelangPage;
