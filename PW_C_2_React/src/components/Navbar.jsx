import React, { useEffect, useState } from 'react';
import { Link, useLocation, useNavigate } from 'react-router-dom';
import api from '../api/axios';
import 'bootstrap/dist/css/bootstrap.min.css';

const Navbar = () => {
    const [categories, setCategories] = useState([]);
    const [isLoggedIn, setIsLoggedIn] = useState(false);
    const [searchQuery, setSearchQuery] = useState('');
    const [selectedCategory, setSelectedCategory] = useState('');
    const [showLogoutModal, setShowLogoutModal] = useState(false);
    const location = useLocation();
    const navigate = useNavigate();
    const [userEmail, setUserEmail] = useState('');

    useEffect(() => {
        const fetchCategories = async () => {
            try {
                const response = await api.get('/lelangs');
                const uniqueCategories = [
                    ...new Set(response.data.map((item) => item.barang.kategori)),
                ];
                setCategories(uniqueCategories);
            } catch (error) {
                console.error('Error fetching categories:', error);
            }
        };

        fetchCategories();

        const checkLoginStatus = async () => {
            const token = localStorage.getItem('auth_token');
            setIsLoggedIn(!!token);

            if (token) {
                try {
                    const response = await api.get('/user', {
                        headers: { Authorization: `Bearer ${token}` },
                    });
                    setUserEmail(response.data.user.email); // Set email user
                } catch (error) {
                    console.error('Error fetching user data:', error);
                }
            }
        };

        checkLoginStatus();
    }, [location]);


    const handleLogout = () => {
        localStorage.removeItem('auth_token'); // Hapus token
        setIsLoggedIn(false); // Reset state login
        setUserEmail(''); // Reset email user
        navigate('/lelangs'); // Arahkan ke halaman lelangs
        setShowLogoutModal(false); // Tutup modal logout
    };

    const handleCategorySelect = (category) => {
        setSelectedCategory(category);
        if (category) {
            navigate(isLoggedIn ? `/?category=${category}` : `/lelangs?category=${category}`);
        }
    };

    const handleSearch = (e) => {
        e.preventDefault();
        if (searchQuery.trim() !== '') {
            const route = isLoggedIn
                ? `/lelangSearchLogin?query=${encodeURIComponent(searchQuery)}`
                : `/lelangSearchUnlogin?query=${encodeURIComponent(searchQuery)}`;
            navigate(route);
        }
    };

    const resetSearchAndCategory = () => {
        setSearchQuery('');
        setSelectedCategory('');
        navigate(isLoggedIn ? '/' : '/lelangs');
    };

    const isHiddenPage =
        location.pathname === '/wallet' ||
        location.pathname === '/profile' ||
        location.pathname === '/reset-password-login' ||
        location.pathname === '/reset-password' ||
        location.pathname.startsWith('/detail') ||
        location.pathname.startsWith('/bids') ||
        location.pathname === '/transactions'||
        location.pathname === '/about'||
        location.pathname === '/contact'||
        location.pathname === '/terms';

    const isAuthPage = location.pathname === '/login' || location.pathname === '/register';

    return (
        <>
            <nav className="navbar navbar-expand-lg navbar-dark fixed-top" style={{ backgroundColor: '#002855' }}>
                <div className="container-fluid px-3">
                    {/* Brand */}
                    {userEmail !== 'admin@admin.com' && (
                        <span className="navbar-brand" onClick={resetSearchAndCategory} style={{ cursor: 'pointer' }}>
                            Lelangin
                        </span>
                    )}


                    {/* Toggler */}
                    <button
                        className="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <span className="navbar-toggler-icon"></span>
                    </button>

                    {/* Content */}
                    <div className="collapse navbar-collapse " id="navbarSupportedContent">
                        {/* Search Bar Full Width */}
                        {!isAuthPage && !isHiddenPage && userEmail !== 'admin@admin.com' && (
                            <form
                                className="d-flex flex-grow-1 my-2 my-lg-0"
                                onSubmit={handleSearch}
                                style={{ margin: '0 10px' }}
                            >
                                <input
                                    className="form-control me-2 w-50"
                                    type="search"
                                    placeholder="Search"
                                    value={searchQuery}
                                    onChange={(e) => setSearchQuery(e.target.value)}
                                />
                                <button className="btn btn-outline-light me-2" type="submit">
                                    Search
                                </button>
                                <select
                                    className="form-select"
                                    value={selectedCategory}
                                    onChange={(e) => handleCategorySelect(e.target.value)}
                                    style={{ maxWidth: '150px' }}
                                >
                                    <option value="">Category</option>
                                    {categories.map((category, index) => (
                                        <option key={index} value={category}>
                                            {category}
                                        </option>
                                    ))}
                                </select>
                            </form>
                        )}


                        {/* Authentication Buttons */}
                        <div className="d-flex ms-auto justify-content-end align-items-center flex-wrap">
                            {isLoggedIn ? (
                                userEmail === 'admin@admin.com' ? (
                                    // Tombol untuk admin
                                    <>
                                        <Link
                                            to="/barang-admin"
                                            className={`btn fw-bold me-2 mb-2 ${location.pathname === '/barang-admin' ? 'btn-success' : 'btn-secondary'}`}
                                        >
                                            Items
                                        </Link>
                                        <Link
                                            to="/lelang-admin"
                                            className={`btn fw-bold me-2 mb-2 ${location.pathname === '/lelang-admin' ? 'btn-success' : 'btn-secondary'}`}
                                        >
                                            Auctions
                                        </Link>
                                        <Link
                                            to="/bid-admin"
                                            className={`btn fw-bold me-2 mb-2 ${location.pathname === '/bid-admin' ? 'btn-success' : 'btn-secondary'}`}
                                        >
                                            Bids
                                        </Link>
                                        <Link
                                            to="/transactions-admin"
                                            className={`btn fw-bold me-2 mb-2 ${location.pathname === '/transactions-admin' ? 'btn-success' : 'btn-secondary'}`}
                                        >
                                            Transactions
                                        </Link>
                                        <Link
                                            to="/admin"
                                            className={`btn fw-bold me-2 mb-2 ${location.pathname === '/admin' ? 'btn-success' : 'btn-secondary'}`}
                                        >
                                            User
                                        </Link>
                                        <button
                                            className="btn btn-danger fw-bold mb-2"
                                            onClick={() => setShowLogoutModal(true)}
                                        >
                                            Logout
                                        </button>
                                    </>
                                ) : (
                                    // Tombol untuk pengguna biasa
                                    <>
                                        <Link
                                            to="/transactions"
                                            className="nav-link text-white text-center me-3 border-end border-white pe-3 mb-2"
                                        >
                                            Transactions
                                        </Link>
                                        <Link
                                            to="/wallet"
                                            className="nav-link text-white text-center me-3 border-end border-white pe-3 mb-2"
                                        >
                                            My Wallet
                                        </Link>
                                        <Link
                                            to="/profile"
                                            className="nav-link text-white text-center me-3 pe-3 mb-2"
                                        >
                                            Profile
                                        </Link>
                                        <button
                                            className="btn btn-danger mt-2 mt-lg-0 mb-2"
                                            onClick={() => setShowLogoutModal(true)}
                                        >
                                            Logout
                                        </button>
                                    </>
                                )
                            ) : (
                                // Tombol untuk pengguna belum login
                                <>
                                    <Link
                                        to="/register"
                                        className="btn btn-warning fw-bold me-2 mb-2"
                                        style={{ color: '#002855' }}
                                    >
                                        Create Account
                                    </Link>
                                    <Link
                                        to="/login"
                                        className="btn btn-success fw-bold mb-2"
                                        style={{ color: 'white' }}
                                    >
                                        Login
                                    </Link>
                                </>
                            )}
                        </div>


                    </div>
                </div>
            </nav>

            {/* Logout Modal */}
            {showLogoutModal && (
                <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
                    <div className="modal-dialog modal-dialog-centered">
                        <div className="modal-content">
                            <div className="modal-header">
                                <h5 className="modal-title">Logout Confirmation</h5>
                                <button
                                    type="button"
                                    className="btn-close"
                                    onClick={() => setShowLogoutModal(false)}
                                ></button>
                            </div>
                            <div className="modal-body">
                                <p>Are you sure you want to logout?</p>
                            </div>
                            <div className="modal-footer">
                                <button className="btn btn-secondary" onClick={() => setShowLogoutModal(false)}>
                                    No
                                </button>
                                <button className="btn btn-danger" onClick={handleLogout}>
                                    Yes
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            )}
        </>
    );
};

export default Navbar;
