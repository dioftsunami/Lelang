import React, { useState, useEffect, useContext } from 'react';
import { useNavigate } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import api from '../api/axios';

const MyWallet = () => {
   const { user } = useContext(AuthContext);
   const [wallet, setWallet] = useState(null);
   const [creditInput, setCreditInput] = useState('');
   const [paymentMethod, setPaymentMethod] = useState('');
   const navigate = useNavigate();

   useEffect(() => {
      const fetchWalletData = async () => {
         try {
            const response = await api.get('/user');
            const userData = response.data.user;
            setWallet(userData.uang_dp || null);
         } catch (error) {
            toast.error('Failed to load wallet data. Please try again.', { autoClose: 3000 });
            console.error(error);
         }
      };

      fetchWalletData();
   }, []);

   const handleAddCredit = async () => {
      const MAX_WALLET_LIMIT = 100_000_000_000;

      if (!paymentMethod) {
         toast.error('Please select a payment method.', { autoClose: 3000 });
         return;
      }

      const addedCredit = parseInt(creditInput.replace(/\./g, ''), 10);

      if (isNaN(addedCredit) || addedCredit <= 0) {
         toast.error('Please enter a valid credit amount.', { autoClose: 3000 });
         return;
      }

      const newWalletAmount = parseInt(wallet || 0) + addedCredit;

      if (newWalletAmount > MAX_WALLET_LIMIT) {
         toast.error(`Maximum of money in wallet is Rp ${formatPrice(MAX_WALLET_LIMIT)}.`, { autoClose: 3000 });
         return;
      }

      try {
         await api.put('/user', { uang_dp: newWalletAmount });
         setWallet(newWalletAmount);
         toast.success(`Added Rp ${formatPrice(addedCredit)} credits using ${paymentMethod}.`, { autoClose: 3000 });
         setCreditInput('');
      } catch (error) {
         toast.error('Failed to add credits. Please try again.', { autoClose: 3000 });
         console.error(error);
      }
   };

   const handleBack = () => {
      navigate(-1);
   };

   const handleInputChange = (e) => {
      const value = e.target.value.replace(/\./g, '');
      if (!isNaN(value)) {
         setCreditInput(formatPrice(value));
      }
   };

   const formatPrice = (price) => {
      return price.toString().replace(/\.00$/, '').replace(/\B(?=(\d{3})+(?!\d))/g, '.');
   };

   return (
      <div className="container d-flex flex-column justify-content-center align-items-center vh-100">
         <h1 className="text-center fw-bold mb-4" style={{ color: '#002855' }}>My Wallet</h1>

         {/* Wallet Box */}
         <div className="card shadow" style={{ width: '100%', maxWidth: '400px', backgroundColor: '#FFD700' }}>
            <div className="card-body p-4">
               <p className="fw-bold mb-3 text-center" style={{ fontSize: '1.2rem', color: '#000' }}>
                  Your Wallet: {wallet !== null ? `Rp ${formatPrice(wallet)}` : '-'}
               </p>

               {/* Add Credit Input */}
               <div className="mb-3">
                  <label className="form-label fw-bold text-dark">Add Credit</label>
                  <input
                     type="text"
                     className="form-control"
                     value={creditInput}
                     onChange={handleInputChange}
                     placeholder="Enter amount"
                  />
               </div>

               {/* Payment Method Dropdown */}
               <div className="mb-4">
                  <label className="form-label fw-bold text-dark">Payment Method</label>
                  <select
                     className="form-select"
                     value={paymentMethod}
                     onChange={(e) => setPaymentMethod(e.target.value)}
                  >
                     <option value="">Select Payment Method</option>
                     <option value="Credit Cards">Credit Cards</option>
                     <option value="Debit Cards">Debit Cards</option>
                     <option value="Paypal">Paypal</option>
                  </select>
               </div>

               {/* Buttons */}
               <button
                  className="btn btn-success w-100 fw-bold mb-2"
                  onClick={handleAddCredit}
               >
                  Add Credits
               </button>
               <button
                  className="btn btn-secondary w-100 fw-bold"
                  onClick={handleBack}
               >
                  Back
               </button>
            </div>
         </div>
         <ToastContainer />
      </div>
   );
};

export default MyWallet;
