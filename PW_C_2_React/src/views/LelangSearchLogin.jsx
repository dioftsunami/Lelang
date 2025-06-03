import React, { useEffect, useState } from 'react';
import { useSearchParams, useNavigate } from 'react-router-dom';
import api from '../api/axios';
import 'bootstrap/dist/css/bootstrap.min.css';

const LelangSearchLogin = () => {
   const [lelangs, setLelangs] = useState([]);
   const [searchParams] = useSearchParams();
   const searchQuery = searchParams.get('query'); // Get the search query
   const navigate = useNavigate();

   useEffect(() => {
      const fetchLelangs = async () => {
         try {
            const response = await api.get('/lelangs');
            const filteredLelangs = response.data.filter((item) =>
               item.barang.nama_item.toLowerCase().includes(searchQuery.toLowerCase())
            );
            setLelangs(filteredLelangs);
         } catch (error) {
            console.error('Error fetching lelangs:', error);
         }
      };
      fetchLelangs();
   }, [searchQuery]);

   const formatPrice = (price) => {
      return price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');
   };

   const handleViewDetails = (lelang) => {
      navigate(`/detail/${lelang.id}`);
   };

   // Render conditionally using if-else logic
   if (lelangs.length === 0) {
      return (
         <div
            className="d-flex flex-column justify-content-center align-items-center"
            style={{ minHeight: '100vh' }}
         >
            <h1 className="display-4 text-dark">Search Results</h1>
            <p className="lead text-secondary text-center">Currently not available</p>
         </div>
      );
   }

   return (
      <div className="w-100 m-0 p-0">
         {/* Title Section */}
         <div className="text-center mb-4 mt-5 pt-3">
            <h1 className="display-4 text-dark">Search Results</h1>
         </div>

         {/* Cards Grid */}
         <div className="container px-4">
            <div className="row g-4">
               {lelangs.map((lelang) => (
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
                           <div
                              className="bg-light d-flex align-items-center justify-content-center"
                              style={{ height: '150px' }}
                           >
                              Picture Unavailable
                           </div>
                        )}
                        <div className="card-body d-flex flex-column">
                           <h5 className="card-title fw-bold text-dark">
                              {lelang.barang.nama_item}
                           </h5>
                           <p className="card-text text-muted mb-2">
                              {lelang.barang.deskripsi}
                           </p>
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
      </div>
   );
};

export default LelangSearchLogin;
