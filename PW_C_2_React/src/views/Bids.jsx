import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import Pusher from 'pusher-js';
import api from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const Bids = () => {
    const { id } = useParams(); // Ambil ID lelang dari URL
    const [lelang, setLelang] = useState(null);
    const [bids, setBids] = useState([]); // Data penawaran
    const [bidPrice, setBidPrice] = useState(''); // Input bid baru
    const [userWallet, setUserWallet] = useState(0); // Saldo user
    const navigate = useNavigate();
    const token = localStorage.getItem('auth_token'); // Ambil token dari localStorage
    const [hasSetWinningBid, setHasSetWinningBid] = useState(false); // Untuk mencegah update berulang
    const [latestBid, setLatestBid] = useState(0);

    // Fungsi untuk merefresh bids dari server
    const fetchBids = async () => {
        try {
            const bidsResponse = await api.get(`/bids/${id}`, {
                headers: {
                    Authorization: `Bearer ${token}`, // Kirim token otentikasi
                },
            });
            setBids(bidsResponse.data);
        } catch (error) {
            console.error('Error fetching bids:', error);
        }
    };

    // Fetch data lelang, bid, dan user wallet saat halaman dimuat
    useEffect(() => {
        const fetchData = async () => {
            try {
                // Ambil data lelang berdasarkan ID
                const lelangResponse = await api.get(`/lelang/${id}`, {
                    headers: {
                        Authorization: `Bearer ${token}`, // Kirim token otentikasi
                    },
                });
                const lelangData = lelangResponse.data;
                setLelang(lelangData);

                // Ambil data bid berdasarkan ID lelang
                await fetchBids();

                // Ambil saldo user dari API user
                const userResponse = await api.get('/user', {
                    headers: {
                        Authorization: `Bearer ${token}`, // Kirim token otentikasi
                    },
                });
                setUserWallet(userResponse.data.user.uang_dp || 0);

                // Jika status lelang ended dan belum pernah set winning bid
                if (lelangData.status === 'ended') {
                    await setWinningBid();
                }
            } catch (error) {
                toast.error('Failed to load data. Please try again.', { autoClose: 3000 });
                console.error('Error fetching data:', error);
            }
        };

        fetchData();
        // eslint-disable-next-line react-hooks/exhaustive-deps
    }, [id, token]);

    // Fungsi untuk set is_winning = 1 pada bid tertinggi jika lelang telah ended
    const setWinningBid = async () => {
        // Cek apakah sudah pernah di set atau belum agar tidak berulang
        if (hasSetWinningBid) return;

        try {
            // Ambil ulang bids terbaru
            const bidsResponse = await api.get(`/bids/${id}`, {
                headers: {
                    Authorization: `Bearer ${token}`,
                },
            });
            const latestBids = bidsResponse.data;
            setBids(latestBids);

            if (latestBids.length > 0) {
                const highestBid = latestBids[0]; // bid tertinggi adalah index 0
                // Update is_winning = 1
                await api.put(`/bids/${highestBid.id}`, {
                    is_winning: 1
                }, {
                    headers: {
                        Authorization: `Bearer ${token}`,
                    },
                });
                setHasSetWinningBid(true);
            }
        } catch (error) {
            console.error('Error setting winning bid:', error);
        }
    };

    // Setup Pusher untuk real-time (hanya sekali, tidak bergantung pada id)
    useEffect(() => {
        const pusher = new Pusher('a77860aea5f24e2f8606', {
            cluster: 'ap1',

        });

        const channel = pusher.subscribe('bids');
        channel.bind('BidCreated', (newBid) => {
            if (newBid.id_lelang === parseInt(id)) {
                setBids((prevBids) => [newBid, ...prevBids]);
            }
        });

        return () => {
            channel.unbind_all();
            channel.unsubscribe();
        };
    }, []);

    // Tambahkan interval untuk refresh bids setiap 0,5 detik
    useEffect(() => {
        const interval = setInterval(() => {
            fetchBids();
        }, 500); // 0,5 detik = 500 ms

        return () => clearInterval(interval);
    }, [id, token]);

    // Fungsi untuk menentukan kelipatan minimal berdasarkan harga_awal
    const getIncrementStep = () => {
        const { harga_awal } = lelang;
        if (harga_awal < 10_000_000) return 100_000;
        if (harga_awal < 100_000_000) return 1_000_000;
        if (harga_awal < 1_000_000_000) return 10_000_000;
        return 100_000_000;
    };

    const getHighestBid = () => {
        return bids.length > 0 ? bids[0].bid_price : lelang.harga_awal;
    };

    const handleBidSubmit = async () => {
        console.log("Submitting bid...");
        const cleanBidPrice = bidPrice.replace(/\./g, '');
        const bidAmount = parseInt(cleanBidPrice, 10);
        const incrementStep = getIncrementStep();
        const highestBid = getHighestBid();
    
        console.log("Bid Amount:", bidAmount);
        console.log("Increment Step:", incrementStep);
        console.log("Highest Bid:", highestBid);
    
        if (isNaN(bidAmount) || bidAmount <= 0) {
            toast.error('Please enter a valid bid amount.', { autoClose: 3000 });
            console.error("Invalid bid amount:", bidAmount);
            return;
        }
    
        if (bidAmount < highestBid + incrementStep || (bidAmount - highestBid) % incrementStep !== 0) {
            toast.error(`Bid must be a multiple of Rp ${formatPrice(incrementStep)} above the last bid.`, { autoClose: 3000 });
            console.error("Bid not valid:", { bidAmount, highestBid, incrementStep });
            return;
        }
    
        if (bidAmount > userWallet) {
            toast.error('Insufficient wallet balance. Bid cannot be placed.', { autoClose: 3000 });
            console.error("Insufficient wallet balance:", { bidAmount, userWallet });
            return;
        }
    
        try {
            const response = await api.post(
                '/bids',
                { id_lelang: id, bid_price: bidAmount },
                { headers: { Authorization: `Bearer ${token}` } }
            );
    
            console.log("Bid Response:", response.data);
    
            toast.success(`Bid placed: Rp ${formatPrice(bidAmount)}`, { autoClose: 3000 });
            setBidPrice('');
            await fetchBids();
        } catch (error) {
            console.error('Error placing bid:', error.response?.data || error.message);
            toast.error('Failed to place bid. Please try again.', { autoClose: 3000 });
        }
    };
    

    const handleInputChange = (e) => {
        const value = e.target.value.replace(/\./g, ''); // Hapus titik yang ada
        if (!isNaN(value)) {
            setBidPrice(formatPrice(value)); // Tambahkan titik setiap 3 digit
        }
    };



    // Helper function to format price
    const formatPrice = (price) => {
        return price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');
    };

    if (!lelang) {
        return (
            <div className="d-flex justify-content-center align-items-center vh-100 bg-light">
                <p className="text-muted">Loading...</p>
                <ToastContainer />
            </div>
        );
    }

    // Jika status ended, ubah text "Highest Bid:" menjadi "Price closed for:"
    const highestBidLabel = lelang.status === 'ended' ? 'Price closed for:' : 'Highest Bid:';

    return (
        <div className="container mt-5 d-flex justify-content-center">
            <div className="card shadow-lg p-4 mt-5" style={{ maxWidth: "1000px", height: "auto" }}>
                {/* Back Button: Kecil dan di Kiri */}
                <div className="d-flex justify-content-start mb-3">
                    <button
                        className="btn btn-secondary"
                        style={{ padding: "10px 20px", fontSize: "1rem" }}
                        onClick={() => navigate(-1)}
                    >
                        Back
                    </button>
                </div>

                {/* Auction Title and Description */}
                <div className="mb-4">
                    <h1 className="fw-bold text-dark mb-2">{lelang.title}</h1>
                    <p className="text-muted">{lelang.deskripsi}</p>
                </div>

                {/* Image and Auction Details */}
                <div className="row g-4">
                    <div className="col-md-6">
                        <img
                            src={lelang.barang.image_url}
                            alt={lelang.barang.nama_item}
                            className="img-fluid rounded shadow"
                            style={{ objectFit: 'cover' }}
                        />
                    </div>
                    <div className="col-md-6">
                        <div className="bg-light p-3 rounded shadow">
                            <p><strong>Code Auction:</strong> {lelang.id}</p>
                            <p><strong>Price start from:</strong> Rp {formatPrice(lelang.harga_awal)}</p>
                            <p><strong>{highestBidLabel}</strong> Rp {formatPrice(getHighestBid())}</p>
                        </div>
                    </div>
                </div>

                {/* New Bid Input Section */}
                {lelang.status === 'ended' ? (
                    <div className="mt-4 pt-4 text-center">
                        <h5 className="text-danger fw-bold">Auction Ended!</h5>
                    </div>
                ) : (
                    <div className="mt-4">
                        <p className="text-muted">Must be a multiple of Rp {formatPrice(getIncrementStep())}</p>
                        <input
                            type="text"
                            className="form-control mb-2"
                            placeholder="Enter your bid"
                            value={bidPrice}
                            onChange={handleInputChange}
                        />
                        <button className="btn btn-success w-100" onClick={handleBidSubmit}>
                            Place Bid
                        </button>
                    </div>
                )}

                {/* Recent Bids Section */}
                <div className="mt-5">
                    <h3 className="fw-bold">Recent Bids</h3>
                    {bids.length === 0 ? (
                        <p className="text-muted text-center mt-5">There is no bid yet.</p>
                    ) : (
                        <ul className="list-group">
                            {bids.map((bid) => (
                                <li key={bid.id} className="list-group-item">
                                    <span className="d-flex align-items-center">
                                        <strong>{bid.user?.name || 'Unknown User'}</strong>&nbsp;
                                        <span> : Rp {formatPrice(bid.bid_price)} at {new Date(bid.bid_time).toLocaleString()}</span>
                                    </span>
                                </li>
                            ))}
                        </ul>
                    )}
                </div>


                <ToastContainer />
            </div>
        </div>
    );


};


export default Bids;
