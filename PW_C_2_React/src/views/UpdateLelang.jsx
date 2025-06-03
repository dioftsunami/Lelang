import React, { useEffect, useState } from 'react';
import { useParams, useNavigate, useLocation } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const UpdateLelang = () => {
   const { lelangId } = useParams(); // Ambil lelang ID dari URL
   console.log('Lelang ID:', lelangId);
   const navigate = useNavigate();
   const location = useLocation();
   const token = localStorage.getItem('auth_token');

   // State untuk form data lelang
   const [formData, setFormData] = useState({
      title: '',
      deskripsi: '',
      start_time: '',
      end_time: '',
      status: '',
      harga_awal: '',
   });

   // Enum status yang tersedia
   const statusOptions = ['active', 'completed', 'cancelled', 'ended'];

   useEffect(() => {
      // Ambil data lelang dari state atau fetch jika tidak tersedia
      if (location.state?.lelang) {
         setFormData(location.state.lelang);
      } else {
         fetchLelangData();
      }
   }, [lelangId, location.state]);

   const fetchLelangData = async () => {
      try {
         const response = await axios.get(`/lelang/${lelangId}`, {
            headers: { Authorization: `Bearer ${token}` },
         });
         setFormData(response.data);
      } catch (error) {
         toast.error('Failed to fetch auction data');
         console.error(error);
      }
   };

   const handleSubmit = async (e) => {
      e.preventDefault();
      try {
         await axios.put(`/lelang/${lelangId}`, formData, {
            headers: { Authorization: `Bearer ${token}` },
         });
         toast.success('Auction updated successfully!');
         setTimeout(() => navigate(-1), 1500);
      } catch (error) { 
         console.error('Error response:', error.response?.data || error.message);
         toast.error('Failed to update auction');
         console.error(error);
      }
   };

   const handleChange = (e) => {
      const { name, value } = e.target;
      setFormData((prevData) => ({ ...prevData, [name]: value }));
   };

   return (
      <div className="container mt-5 pt-3">
         <div className="card shadow-lg p-4 mt-5 mx-auto" style={{ maxWidth: '500px' }}>
            <h2 className="fw-bold mb-4 text-center">Update Auction</h2>
            <form onSubmit={handleSubmit}>
               {/* Title */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Title</label>
                  <input
                     type="text"
                     className="form-control"
                     name="title"
                     value={formData.title}
                     onChange={handleChange}
                     placeholder="Enter auction title"
                     required
                  />
               </div>

               {/* Description */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Description</label>
                  <textarea
                     className="form-control"
                     name="deskripsi"
                     value={formData.deskripsi}
                     onChange={handleChange}
                     rows="3"
                     placeholder="Enter description"
                     required
                  ></textarea>
               </div>

               {/* Start Time */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Start Time</label>
                  <input
                     type="datetime-local"
                     className="form-control"
                     name="start_time"
                     value={formData.start_time}
                     onChange={handleChange}
                     required
                  />
               </div>

               {/* End Time */}
               <div className="mb-3">
                  <label className="form-label fw-bold">End Time</label>
                  <input
                     type="datetime-local"
                     className="form-control"
                     name="end_time"
                     value={formData.end_time}
                     onChange={handleChange}
                     required
                  />
               </div>

               {/* Status */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Status</label>
                  <select
                     className="form-select"
                     name="status"
                     value={formData.status}
                     onChange={handleChange}
                     required
                  >
                     <option value="" disabled>Select Status</option>
                     {statusOptions.map((status) => (
                        <option key={status} value={status}>
                           {status.charAt(0).toUpperCase() + status.slice(1)}
                        </option>
                     ))}
                  </select>
               </div>

               {/* Starting Price */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Starting Price</label>
                  <input
                     type="number"
                     className="form-control"
                     name="harga_awal"
                     value={formData.harga_awal}
                     onChange={handleChange}
                     placeholder="Enter starting price"
                     required
                  />
               </div>

               {/* Buttons */}
               <button type="submit" className="btn btn-success w-100 fw-bold">
                  Update Auction
               </button>
               <button
                  type="button"
                  className="btn btn-secondary w-100 fw-bold mt-2"
                  onClick={() => navigate(-1)}
               >
                  Back
               </button>
            </form>
         </div>
         <ToastContainer />
      </div>
   );
};

export default UpdateLelang;
