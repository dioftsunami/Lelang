import React, { useEffect, useState, useMemo } from 'react';
import api from '../api/axios';
import 'bootstrap/dist/css/bootstrap.min.css';
import { useSearchParams } from 'react-router-dom';

import carousel1 from '@/assets/images/carousel/carousel1.png';
import carousel2 from '@/assets/images/carousel/carousel2.png';
import carousel3 from '@/assets/images/carousel/carousel3.png';

const LelangUnlogin = () => {
    const [lelangs, setLelangs] = useState([]);
    const [showModal, setShowModal] = useState(false);
    const [selectedLelang, setSelectedLelang] = useState(null);
    const [searchParams] = useSearchParams();

    useEffect(() => {
        const fetchLelangs = async () => {
            try {
                const response = await api.get('/lelangs');
                setLelangs(response.data);
            } catch (error) {
                console.error('Error fetching lelangs:', error);
            }
        };
        fetchLelangs();
    }, []);

    const filteredLelangs = useMemo(() => {
        const category = searchParams.get('category');
        if (category) {
            return lelangs.filter((item) => item.barang.kategori === category);
        }
        return lelangs;
    }, [searchParams, lelangs]);

    const formatPrice = (price) => {
        return price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');
    };

    const handleViewDetails = (lelang) => {
        setSelectedLelang(lelang);
        setShowModal(true);
    };

    const closeModal = () => {
        setShowModal(false);
        setSelectedLelang(null);
    };

    return (
        <div className="w-100 m-0 p-0 pt-5">
            {/* Bootstrap Carousel */}
            <div id="carouselExampleIndicators" className="carousel slide mb-4" data-bs-ride="carousel">
                <div className="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" className="active"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></button>
                </div>
                <div className="carousel-inner">
                    <div className="carousel-item active">
                        <img src={carousel1} className="d-block w-100" alt="Carousel 1" style={{ height: '400px', objectFit: 'cover' }} />
                    </div>
                    <div className="carousel-item">
                        <img src={carousel2} className="d-block w-100" alt="Carousel 2" style={{ height: '400px', objectFit: 'cover' }} />
                    </div>
                    <div className="carousel-item">
                        <img src={carousel3} className="d-block w-100" alt="Carousel 3" style={{ height: '400px', objectFit: 'cover' }} />
                    </div>
                </div>
                <button className="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span className="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span className="visually-hidden">Previous</span>
                </button>
                <button className="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span className="carousel-control-next-icon" aria-hidden="true"></span>
                    <span className="visually-hidden">Next</span>
                </button>
            </div>

            {/* Title and Subtitle */}
            <div className="text-center mb-4">
                <h1 className="display-4 text-dark">Currently on Auction</h1>
                <p className="lead text-secondary">Browse the available items below.</p>
            </div>

            {/* Grid Card Bootstrap */}
            <div className="container px-4">
                <div className="row g-4">
                    {filteredLelangs.map((lelang) => (
                        <div key={lelang.id} className="col-lg-3 col-md-4 col-sm-6">
                            <div className="card h-100 shadow-sm text-center">
                                {lelang.barang.image_url ? (
                                    <img
                                        src={lelang.barang.image_url}
                                        className="card-img-top"
                                        alt={lelang.barang.nama_item}
                                        style={{ height: '150px', objectFit: 'cover' }}
                                    />
                                ) : (
                                    <div className="bg-light d-flex align-items-center justify-content-center" style={{ height: '150px' }}>
                                        Picture Unavailable
                                    </div>
                                )}
                                <div className="card-body d-flex flex-column">
                                    <h5 className="card-title fw-bold text-dark">{lelang.barang.nama_item}</h5>
                                    <p className="card-text text-muted mb-2">{lelang.barang.deskripsi}</p>
                                    <p className="fw-bold text-dark mt-auto">
                                        {lelang.status === 'ended' ? (
                                            <span className="text-danger">Already Sold!</span>
                                        ) : (
                                            `Starting Price: Rp ${formatPrice(lelang.harga_awal)}`
                                        )}
                                    </p>
                                    <button
                                        className="btn btn-warning fw-bold mt-1"
                                        onClick={() => handleViewDetails(lelang)}
                                    >
                                        View Details
                                    </button>
                                </div>
                            </div>
                        </div>
                    ))}
                </div>
            </div>

            {/* Modal Bootstrap */}
            {showModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title fw-bold">Login Required</h5>
                                <button type="button" className="btn-close" onClick={closeModal}></button>
                            </div>
                            <div className="modal-body text-center">
                                <p className="text-muted">You need to log in to view more details about this auction.</p>
                            </div>
                            <div className="modal-footer d-flex justify-content-end">
                                <button className="btn btn-secondary" onClick={closeModal}>
                                    Back
                                </button>
                                <button
                                    className="btn btn-primary"
                                    onClick={() => (window.location.href = '/login')}
                                >
                                    Login
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </div>
    );
};

export default LelangUnlogin;
