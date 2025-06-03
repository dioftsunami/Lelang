import React, { useEffect, useState } from 'react';
import { useParams, useNavigate, useLocation } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const UpdateTransaction = () => {
   const { transactionId } = useParams(); // Ambil transaction ID dari URL
   const navigate = useNavigate();
   const location = useLocation(); // Ambil data dari state yang dikirim sebelumnya
   const token = localStorage.getItem('auth_token'); // Ambil token autentikasi

   // State untuk form data transaksi
   const [formData, setFormData] = useState({
      id_user: '',
      id_lelang: '',
      id_bid: '',
      total_price: '',
      shipment_status: '',
   });

   // Fetch data transaksi jika tidak ada state dari navigasi
   useEffect(() => {
      if (location.state && location.state.transaction) {
         setFormData(location.state.transaction); // Set data transaksi dari state
      } else {
         fetchTransactionData();
      }
   }, [transactionId, token, location.state]);

   const fetchTransactionData = async () => {
      try {
         const response = await axios.get(`/transactions/${transactionId}`, {
            headers: { Authorization: `Bearer ${token}` },
         });
         setFormData(response.data);
      } catch (error) {
         toast.error('Failed to fetch transaction data');
         console.error(error);
      }
   };

   const handleSubmit = async (e) => {
      e.preventDefault();
      try {
         await axios.put(
            `/transactions/${transactionId}`,
            formData,
            { headers: { Authorization: `Bearer ${token}` } }
         );
         toast.success('Transaction updated successfully', { autoClose: 1500 });
         setTimeout(() => navigate(-1), 1800); // Kembali ke halaman sebelumnya
      } catch (error) {
         console.error('Error response:', error.response);
         toast.error('Failed to update transaction');
      }
   };

   const handleChange = (e) => {
      const { name, value } = e.target;
      setFormData((prevData) => ({
         ...prevData,
         [name]: value,
      }));
   };

   return (
      <div className="container mt-5 pt-3">
         <div className="card shadow-lg p-4 mt-5 mx-auto" style={{ maxWidth: '500px' }}>
            <h2 className="fw-bold mb-4 text-center">Update Transaction</h2>
            <form onSubmit={handleSubmit}>
               {/* ID User (Read-Only) */}
               <div className="mb-3">
                  <label className="form-label fw-bold">ID User</label>
                  <input
                     type="text"
                     className="form-control"
                     name="id_user"
                     value={formData.id_user}
                     readOnly
                     style={{
                        backgroundColor: '#e9ecef', // Warna abu-abu
                        color: '#495057',           // Warna teks default
                        cursor: 'not-allowed',      // Tidak bisa di-hover
                     }}
                  />
               </div>
   
               {/* ID Lelang (Read-Only) */}
               <div className="mb-3">
                  <label className="form-label fw-bold">ID Lelang</label>
                  <input
                     type="text"
                     className="form-control"
                     name="id_lelang"
                     value={formData.id_lelang}
                     readOnly
                     style={{
                        backgroundColor: '#e9ecef',
                        color: '#495057',
                        cursor: 'not-allowed',
                     }}
                  />
               </div>
   
               {/* ID Bid (Read-Only) */}
               <div className="mb-3">
                  <label className="form-label fw-bold">ID Bid</label>
                  <input
                     type="text"
                     className="form-control"
                     name="id_bid"
                     value={formData.id_bid}
                     readOnly
                     style={{
                        backgroundColor: '#e9ecef',
                        color: '#495057',
                        cursor: 'not-allowed',
                     }}
                  />
               </div>
   
               {/* Total Price (Read-Only) */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Total Price</label>
                  <input
                     type="text"
                     className="form-control"
                     name="total_price"
                     value={formData.total_price}
                     readOnly
                     style={{
                        backgroundColor: '#e9ecef',
                        color: '#495057',
                        cursor: 'not-allowed',
                     }}
                  />
               </div>
   
               {/* Shipment Address */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Shipment Address</label>
                  <textarea
                     className="form-control"
                     name="shipment_address"
                     value={formData.shipment_address || ''}
                     onChange={handleChange}
                     rows="3"
                     placeholder="Enter shipment address"
                     required
                  ></textarea>
               </div>
   
               {/* Shipment Status */}
               <div className="mb-3">
                  <label className="form-label fw-bold">Payment Status</label>
                  <select
                     className="form-select"
                     name="shipment_status"
                     value={formData.shipment_status}
                     onChange={handleChange}
                     required
                  >
                     <option value="">Select Status</option>
                     <option value="pending">Pending</option>
                     <option value="On Shipment">On Shipment</option>
                     <option value="Delivered">Delivered</option>
                  </select>
               </div>
   
               {/* Buttons */}
               <button type="submit" className="btn btn-success w-100 fw-bold mt-3">
                  Update Transaction
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

export default UpdateTransaction;
