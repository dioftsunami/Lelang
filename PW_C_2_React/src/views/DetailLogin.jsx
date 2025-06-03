import React, { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import api from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const DetailLogin = () => {
   const { id } = useParams();
   const [lelang, setLelang] = useState(null);
   const [loading, setLoading] = useState(true);
   const [error, setError] = useState(null);
   const navigate = useNavigate();

   useEffect(() => {
      window.scrollTo(0, 0);
      const fetchLelang = async () => {
         try {
            const response = await api.get(`/lelang/${id}`);
            setLelang(response.data);
            setLoading(false);
         } catch (err) {
            console.error('Error fetching lelang:', err);
            setError('Failed to fetch lelang details.');
            setLoading(false);
         }
      };

      fetchLelang();
   }, [id]);

   if (loading) {
      return (
         <div className="d-flex justify-content-center align-items-center vh-100">
            <p>Loading...</p>
         </div>
      );
   }

   if (error) {
      return (
         <div className="container text-center mt-5">
            <p>{error}</p>
            <ToastContainer />
         </div>
      );
   }

   if (!lelang) {
      return (
         <div className="container text-center mt-5">
            <p>Lelang not found.</p>
            <ToastContainer />
         </div>
      );
   }

   return (
      <div className="container mt-5 py-5">
         <div className="card shadow-lg p-4">
            {/* Title and Description */}
            <div className="mb-4 text-start">
               <h1 className="fw-bold text-dark mb-2 text-start">{lelang.title}</h1>
               <p className="text-secondary">{lelang.deskripsi}</p>
            </div>

            {/* Image and Details */}
            <div className="row gx-4 gy-3">
               <div className="col-md-6 d-flex">
                  <img
                     src={lelang.barang.image_url}
                     alt={lelang.barang.nama_item}
                     className="img-fluid rounded w-100 h-100"
                     style={{ objectFit: 'cover' }}
                  />
               </div>
               <div className="col-md-6">
                  <div className="p-3 bg-light rounded shadow-sm h-100">
                     <p className="mb-2"><strong>Code Auction:</strong> {lelang.id}</p>
                     <p className="mb-2"><strong>Price start from:</strong> Rp {formatPrice(lelang.harga_awal)}</p>
                     <p className="mb-2"><strong>Item Name:</strong> {lelang.barang.nama_item}</p>
                     <p className="mb-2"><strong>Description:</strong> {lelang.barang.deskripsi}</p>
                     <p className="mb-2"><strong>Category:</strong> {lelang.barang.kategori}</p>
                     <p className="mb-2"><strong>Conditions:</strong> {lelang.barang.kondisi_barang}</p>
                  </div>
               </div>
            </div>

            {/* Buttons */}
            <div className="d-flex justify-content-end mt-4 gap-2">
               <button
                  className="btn btn-success fw-bold btn-lg"
                  style={{ padding: '12px 24px', fontSize: '1.2rem' }}
                  onClick={() => navigate(`/bids/${lelang.id}`)}
               >
                  Bids
               </button>
               <button
                  className="btn btn-secondary fw-bold btn-lg"
                  style={{ padding: '12px 24px', fontSize: '1.2rem' }}
                  onClick={() => navigate(-1)}
               >
                  Back
               </button>
            </div>

         </div>
         <ToastContainer />
      </div>
   );
};

const formatPrice = (price) => {
   return price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');
};

export default DetailLogin;
