import React, { useEffect, useState, useContext } from 'react';
import api from '../api/axios';
import { AuthContext } from '../context/AuthContext';

const Transactions = () => {
    const { user, isLoading } = useContext(AuthContext);
    const [transactions, setTransactions] = useState([]);
    const [loading, setLoading] = useState(true);
    const [showModal, setShowModal] = useState(false);
    const [currentTransaction, setCurrentTransaction] = useState(null);
    const [shipmentAddress, setShipmentAddress] = useState('');

    // Fetch Transactions
    useEffect(() => {
        const fetchTransactions = async () => {
            if (!user) return;
            try {
                const response = await api.get(`/transactions/user/${user.id}`, {
                    headers: { Authorization: `Bearer ${localStorage.getItem('auth_token')}` },
                });
                setTransactions(response.data);
                setLoading(false);
            } catch (error) {
                console.error('Failed to fetch transactions:', error);
                setLoading(false);
            }
        };
        fetchTransactions();
    }, [user]);

    const handlePayAndShip = (transaction) => {
        setCurrentTransaction(transaction);
        setShipmentAddress('');
        setShowModal(true);
    };

    const handleConfirm = async () => {
        if (!shipmentAddress.trim()) {
            alert('Shipment address cannot be empty.');
            return;
        }
        try {
            await api.put(
                `/transactions/${currentTransaction.id}`,
                { shipment_address: shipmentAddress, shipment_status: 'On Shipment' },
                { headers: { Authorization: `Bearer ${localStorage.getItem('auth_token')}` } }
            );
            setTransactions((prev) =>
                prev.map((t) =>
                    t.id === currentTransaction.id
                        ? { ...t, shipment_address: shipmentAddress, shipment_status: 'On Shipment' }
                        : t
                )
            );
            setShowModal(false);
            alert('Transaction updated successfully!');
        } catch (error) {
            console.error('Failed to update transaction:', error);
            alert('Failed to update transaction. Please try again.');
        }
    };

    const handleCancel = () => setShowModal(false);

    const formatPrice = (price) =>
        price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');

    if (isLoading || loading) return <p className="text-center">Loading...</p>;

    return (
        <div className="container mt-5 pt-5">
            <h1 className="text-center mb-4 fw-bold">Your Transactions</h1>
            {transactions.length === 0 ? (
                <p className="text-center text-muted fs-5">No transactions found.</p>
            ) : (
                <div className="row g-4">
                    {transactions.map((transaction) => {
                        const { lelang, shipment_status, shipment_address, total_price } = transaction;
                        const title = lelang ? lelang.title : 'Unknown';
                        const nama_item = lelang?.barang?.nama_item || 'Unknown';
                        const image_url =
                            lelang?.barang?.image_url ||
                            'https://via.placeholder.com/150?text=Image+Unknown';

                        return (
                            <div key={transaction.id} className="col-12">
                                <div className="card shadow-sm p-3 mx-auto w-75">
                                    <div className="row">
                                        {/* Kolom Gambar */}
                                        <div className="col-md-3 d-flex justify-content-center">
                                            <img
                                                src={image_url}
                                                alt={nama_item}
                                                className="img-fluid rounded"
                                                style={{ maxHeight: '150px', objectFit: 'cover' }}
                                            />
                                        </div>

                                        {/* Kolom Informasi */}
                                        <div className="col-md-6">
                                            <p className="mb-2"><strong>Product Name:</strong> {nama_item}</p>
                                            <p className="mb-2"><strong>Auction Title:</strong> {title}</p>
                                            <p className="mb-2"><strong>Final Price:</strong> Rp {formatPrice(total_price)}</p>
                                            <p className="mb-2"><strong>Shipment Status:</strong> {shipment_status}</p>
                                            {shipment_address && (
                                                <p className="text-muted"><strong>Shipment Address:</strong> {shipment_address}</p>
                                            )}
                                        </div>

                                        {/* Kolom Tombol */}
                                        <div className="col-md-3 d-flex flex-column justify-content-center text-end">
                                            {shipment_status === 'pending' ? (
                                                <button
                                                    className="btn btn-success w-100 fw-bold"
                                                    style={{ height: '40px', fontSize: '1em' }}
                                                    onClick={() => handlePayAndShip(transaction)}
                                                >
                                                    Pay & Ship
                                                </button>
                                            ) : shipment_status === 'On Shipment' ? (
                                                <p className="fw-bold text-success">Shipped</p>
                                            ) : shipment_status === 'Delivered' ? (
                                                <p className="fw-bold text-success">Delivered</p>
                                            ) : null}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        );
                    })}
                </div>
            )}

            {/* Modal */}
            {showModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Enter Shipment Address</h5>
                                <button type="button" className="btn-close" onClick={handleCancel}></button>
                            </div>
                            <div className="modal-body">
                                <textarea
                                    className="form-control"
                                    value={shipmentAddress}
                                    onChange={(e) => setShipmentAddress(e.target.value)}
                                    placeholder="Enter shipment address"
                                    rows="3"
                                ></textarea>
                            </div>
                            <div className="modal-footer">
                                <button className="btn btn-secondary" onClick={handleCancel}>
                                    Cancel
                                </button>
                                <button className="btn btn-success" onClick={handleConfirm}>
                                    Confirm
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
};

export default Transactions;
