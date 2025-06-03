import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const BidPage = () => {
    const [bids, setBids] = useState([]);
    const [filteredBids, setFilteredBids] = useState([]);
    const [loading, setLoading] = useState(true);
    const [showModal, setShowModal] = useState(false);
    const [deleteBidId, setDeleteBidId] = useState(null);
    const [searchTerm, setSearchTerm] = useState('');

    const token = localStorage.getItem('auth_token');
    const navigate = useNavigate();

    useEffect(() => {
        fetchBids();
    }, []);

    const fetchBids = async () => {
        try {
            // Asumsikan endpoint /allbids menampilkan semua bid lengkap dengan data user dan lelang.
            // Data bid akan memuat bid.user.name dan bid.lelang.title
            const response = await axios.get('/allbids', {
                headers: { Authorization: `Bearer ${token}` },
            });

            if (Array.isArray(response.data)) {
                setBids(response.data);
                setFilteredBids(response.data);
            } else {
                setBids([]);
                setFilteredBids([]);
            }
            setLoading(false);
        } catch (error) {
            console.error('Failed to fetch bids:', error);
            toast.error('Failed to fetch bids');
            setLoading(false);
        }
    };

    // Search berdasarkan nama lelang (bid.lelang.title) atau nama user (bid.user.name)
    const handleSearch = (e) => {
        const value = e.target.value.toLowerCase();
        setSearchTerm(value);
        const filtered = bids.filter((bid) =>
            (bid.lelang && bid.lelang.title && bid.lelang.title.toLowerCase().includes(value)) ||
            (bid.user && bid.user.name && bid.user.name.toLowerCase().includes(value))
        );
        setFilteredBids(filtered);
    };

    const handleDelete = async () => {
        try {
            // Ambil semua transaksi
            const transactionsResponse = await axios.get('/transactions', {
                headers: { Authorization: `Bearer ${token}` },
            });
    
            const transactions = transactionsResponse.data;
    
            // Cek apakah id_bid ada di dalam list transaksi
            const bidInTransactions = transactions.some(
                (transaction) => transaction.id_bid === deleteBidId
            );
    
            if (bidInTransactions) {
                toast.error('Cannot delete this bid because it is connected to a transaction.');
            } else {
                // Hapus bid jika tidak ada di transaksi
                await axios.delete(`/bids/${deleteBidId}`, {
                    headers: { Authorization: `Bearer ${token}` },
                });
                setBids((prev) => prev.filter((bid) => bid.id !== deleteBidId));
                setFilteredBids((prev) => prev.filter((bid) => bid.id !== deleteBidId));
                toast.success('Bid deleted successfully');
            }
        } catch (error) {
            console.error('Failed to delete bid:', error);
            toast.error('Failed to delete bid');
        } finally {
            setShowModal(false);
            setDeleteBidId(null);
        }
    };
    
    
    
    

    const handleShowModal = (id) => {
        setDeleteBidId(id);
        setShowModal(true);
    };

    const handleCloseModal = () => {
        setShowModal(false);
        setDeleteBidId(null);
    };

    return (
        <div className="container mt-5 ">
            <h1 className="text-center fw-bold mb-4 mt-5 pt-4">Bid Management</h1>
            <h6 className="mb-1">Guidance :</h6>
            <h6 className="mb-1">1. You can only read, search, and delete bids here to mantain integrity of the bid</h6>
            <h6 className="mb-2">2. You can't delete a bid associated with a transaction </h6>

            {/* Main Card Wrapper */}
            <div className="card shadow p-4">
                <div className="d-flex justify-content-between align-items-center mb-4">
                    <h3 className="fw-bold mb-0">Bid List</h3>
                </div>

                {/* Search Bar */}
                <div className="mb-3">
                    <input
                        type="text"
                        className="form-control"
                        placeholder="Search by Auction Name or User Name..."
                        value={searchTerm}
                        onChange={handleSearch}
                    />
                </div>

                {loading ? (
                    <p className="text-center">Loading...</p>
                ) : filteredBids.length > 0 ? (
                    <ul className="list-group">
                        {filteredBids.map((bid) => (
                            <li
                                key={bid.id}
                                className="list-group-item d-flex justify-content-between align-items-center"
                            >
                                <span style={{ minWidth: '70%' }}>
                                    <strong>ID:</strong> {bid.id} |{' '}
                                    <strong>Auction:</strong> {bid.lelang && bid.lelang.title ? bid.lelang.title : 'N/A'} |{' '}
                                    <strong>User:</strong> {bid.user && bid.user.name ? bid.user.name : 'N/A'} |{' '}
                                    <strong>Bid Price:</strong> Rp {bid.bid_price || '0'} |{' '}
                                    <strong>Bid Time:</strong> {bid.bid_time || 'N/A'}
                                </span>
                                <div>
                                    
                                    <button
                                        className="btn btn-sm btn-danger"
                                        onClick={() => handleShowModal(bid.id)}
                                    >
                                        Delete
                                    </button>
                                </div>
                            </li>
                        ))}
                    </ul>
                ) : (
                    <p className="text-center text-muted">No bids available.</p>
                )}
            </div>

            {/* Modal Delete Confirmation */}
            {showModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Confirm Deletion</h5>
                                <button type="button" className="btn-close" onClick={handleCloseModal}></button>
                            </div>
                            <div className="modal-body">Are you sure you want to delete this bid?</div>
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

export default BidPage;
