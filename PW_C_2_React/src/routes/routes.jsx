import React from 'react';
import { Routes, Route, Navigate } from 'react-router-dom';
import ProtectedRoute from '../components/ProtectedRoute';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import Home from '../views/Home';
import Bids from '../views/Bids';
import Login from '../views/Login';
import Register from '../views/Register';
import LelangUnlogin from '../views/LelangUnlogin';
import LelangSearchUnlogin from '../views/LelangSearchUnlogin';
import LelangSearchLogin from '../views/LelangSearchLogin';
import UpdateProfile from '../views/UpdateProfile';
import ResetPasswordLogin from '../views/ResetPasswordLogin';
import DetailLogin from '../views/DetailLogin';
import MyWallet from '../views/MyWallet'; // Tambahkan MyWallet
import About from '../views/About';
import Contact from '../views/Contact';
import Terms from '../views/Terms';
import NotFound from '../views/NotFound';
import Transactions from '../views/Transactions';
import AdminDashboard from '../views/AdminDashboard';
import UpdateUser from '../views/UpdateUser';
import TransactionPage from '../views/TransactionPage';
import UpdateTransaction from '../views/UpdateTransaction';
import LelangPage from '../views/LelangPage';
import UpdateLelang from '../views/UpdateLelang';
import BarangPage from '../views/BarangPage';
import UpdateBarang from '../views/UpdateBarang';
import BidPage from '../views/BidPage';
import ScrollToTop from '../components/ScrollToTop';
import ResetPassword from '../views/ResetPassword';

const AppRoutes = () => {
    const isLoggedIn = !!localStorage.getItem('auth_token');

    return (
        <>
            <Navbar />
            <ScrollToTop />
            <div className="container">
                <Routes>
                    {/* Rute publik */}
                    <Route path="/login" element={<Login />} />
                    <Route path="/register" element={<Register />} />
                    <Route path="/reset-password" element={<ResetPassword />} />
                    <Route path="/lelangs" element={<LelangUnlogin />} />
                    <Route path="/lelangSearchUnlogin" element={<LelangSearchUnlogin />} />
                    <Route path="/about" element={<About />} />
                    <Route path="/contact" element={<Contact />} />
                    <Route path="/terms" element={<Terms />} />

                    {/* Rute profil */}
                    <Route
                        path="/profile"
                        element={
                            <ProtectedRoute>
                                <UpdateProfile />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/reset-password-login"
                        element={
                            <ProtectedRoute>
                                <ResetPasswordLogin />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/detail/:id"
                        element={
                            <ProtectedRoute>
                                <DetailLogin />
                            </ProtectedRoute>
                        }
                    />

                    {/* Rute wallet untuk pengguna login */}
                    <Route
                        path="/wallet"
                        element={
                            <ProtectedRoute>
                                <MyWallet />
                            </ProtectedRoute>
                        }
                    />

                    {/* Rute search untuk pengguna login */}
                    <Route
                        path="/lelangSearchLogin"
                        element={
                            <ProtectedRoute>
                                <LelangSearchLogin />
                            </ProtectedRoute>
                        }
                    />

                    {/* Rute terlindungi */}
                    <Route
                        path="/"
                        element={
                            <ProtectedRoute>
                                <Home />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/bids/:id"
                        element={
                            <ProtectedRoute>
                                <Bids />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/transactions"
                        element={
                            <ProtectedRoute>
                                <Transactions />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/admin"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <AdminDashboard />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/update-user/:userId"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <UpdateUser />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/transactions-admin"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <TransactionPage />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/update-transaction/:transactionId"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <UpdateTransaction />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/lelang-admin"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <LelangPage />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/update-lelang/:lelangId"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <UpdateLelang />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/barang-admin"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <BarangPage />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/update-barang/:id"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <UpdateBarang />
                            </ProtectedRoute>
                        }
                    />
                    <Route
                        path="/bid-admin"
                        element={
                            <ProtectedRoute adminOnly={true}>
                                <BidPage />
                            </ProtectedRoute>
                        }
                    />

                    {/* Redirect untuk path tidak dikenal */}
                    <Route
                        path="*"
                        element={
                            isLoggedIn ? (
                                <Navigate to="/" replace /> //home
                            ) : (
                                <Navigate to="/lelangs" replace /> //lelangunlogin
                            )
                        }
                    />
                </Routes>
            </div>
            <Footer />
        </>
    );
};

export default AppRoutes;
