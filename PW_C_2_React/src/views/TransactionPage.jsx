import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const TransactionPage = () => {
   const [transactions, setTransactions] = useState([]);
   const [filteredTransactions, setFilteredTransactions] = useState([]);
   const [loading, setLoading] = useState(true);
   const [showModal, setShowModal] = useState(false);
   const [deleteTransactionId, setDeleteTransactionId] = useState(null);
   const [idLelang, setIdLelang] = useState(null); // Untuk menyimpan id_lelang
   const [searchTerm, setSearchTerm] = useState('');
   const token = localStorage.getItem('auth_token');
   const navigate = useNavigate();

   // Fetch transactions
   useEffect(() => {
      fetchTransactions();
   }, []);

   const fetchTransactions = async () => {
      try {
         const response = await axios.get('/transactions', {
            headers: { Authorization: `Bearer ${token}` },
         });

         if (Array.isArray(response.data)) {
            setTransactions(response.data);
            setFilteredTransactions(response.data);
         } else {
            setTransactions([]);
            setFilteredTransactions([]);
         }
         setLoading(false);
      } catch (error) {
         console.error('Failed to fetch transactions:', error);
         toast.error('Failed to fetch transactions');
         setLoading(false);
      }
   };

   const handleDelete = async () => {
      try {
         const transaction = transactions.find((t) => t.id === deleteTransactionId);

         if (transaction && transaction.id_lelang) {
            // Update status lelang menjadi 'active'
            await axios.put(
               `/lelang/${transaction.id_lelang}`,
               { status: 'active' },
               { headers: { Authorization: `Bearer ${token}` } }
            );
            // Toast sukses hanya satu kali
            toast.success('Transaction deleted and Lelang status updated successfully');
         } else {
            toast.success('Transaction deleted');
         }

         // Hapus transaksi setelah update
         await axios.delete(`/transactions/${deleteTransactionId}`, {
            headers: { Authorization: `Bearer ${token}` },
         });

         // Update state
         setTransactions((prev) => prev.filter((transaction) => transaction.id !== deleteTransactionId));
         setFilteredTransactions((prev) => prev.filter((transaction) => transaction.id !== deleteTransactionId));

      } catch (error) {
         console.error('Error during delete or update:', error);
         toast.error('Failed to process the request');
      } finally {
         setShowModal(false);
         setDeleteTransactionId(null);
      }
   };

   const handleShowModal = (id, lelangId) => {
      setDeleteTransactionId(id);
      setIdLelang(lelangId);
      setShowModal(true);
   };

   const handleCloseModal = () => {
      setShowModal(false);
      setDeleteTransactionId(null);
      setIdLelang(null);
   };

   const handleSearch = (e) => {
      const value = e.target.value.toLowerCase();
      setSearchTerm(value);
      const filtered = transactions.filter(
         (transaction) =>
            transaction.id.toString().includes(value) ||
            transaction.id_user?.toString().includes(value) ||
            transaction.shipment_status?.toLowerCase().includes(value)
      );
      setFilteredTransactions(filtered);
   };

   return (
      <div className="container mt-5 ">
         <h1 className="text-center fw-bold mb-4 mt-5 pt-4">Transaction Management</h1>
         <h6 className=" mb-1">Guidance :</h6>
         <h6 className=" mb-1">1. Transaction will be added automatically after admin end the auction in auction management page</h6>
         <h6 className=" mb-1">2. Admin can't update transaction data if user hasn't input their address yet</h6>
         <h6 className=" mb-1">3. If you delete a transaction that have an active auction event, that auction will be activated again</h6>
         <h6 className=" mb-2">4. The bid id, auction id, can be missing if the bid or the auction is deleted.</h6>
         {/* Search Bar */}
         <div className="mb-3">
            <input
               type="text"
               className="form-control"
               placeholder="Search transaction by ID, User ID, or Payment Status..."
               value={searchTerm}
               onChange={handleSearch}
               style={{
                  backgroundColor: '#f8f9fa',
                  border: '1px solid #ced4da',
                  color: '#495057',
                  fontWeight: '500',
               }}
            />
         </div>

         {/* Wrapper dan tulisan Transaction List */}
         <div className="card shadow p-4">
            <div className="d-flex justify-content-between align-items-center mb-4">
               <h3 className="fw-bold mb-0">Transaction List</h3>
            </div>

            {loading ? (
               <p className="text-center">Loading...</p>
            ) : filteredTransactions.length > 0 ? (
               <ul className="list-group">
                  {filteredTransactions.map((transaction) => (
                     <li
                        key={transaction.id}
                        className="list-group-item d-flex justify-content-between align-items-center"
                     >
                        <span>
                           <strong>ID:</strong> {transaction.id} |{' '}
                           <strong>ID User:</strong> {transaction.id_user || 'N/A'} |{' '}
                           <strong>ID Auction:</strong> {transaction.id_lelang || 'N/A'} |{' '}
                           <strong>ID Bid:</strong> {transaction.id_bid || 'N/A'} |{' '}
                           <strong>Total Price:</strong> Rp {transaction.total_price || '0'} |{' '}
                           <strong>Payment Status:</strong> {transaction.shipment_status || 'N/A'}
                        </span>
                        <div>
                           <button
                              className="btn btn-sm btn-primary me-2"
                              onClick={() => {
                                 // Cek apakah shipment_address null
                                 // Jika shipment_address null dan shipment_status bukan null/empty,
                                 // maka admin tidak boleh update
                                 if (!transaction.shipment_address && transaction.shipment_status && transaction.shipment_status.trim() !== '') {
                                    toast.error('Cannot update status. User has not provided an address yet.');
                                    return;
                                 }
                                 navigate(`/update-transaction/${transaction.id}`, {
                                    state: { transaction },
                                 });
                              }}
                           >
                              Update
                           </button>
                           <button
                              className="btn btn-sm btn-danger"
                              onClick={() =>
                                 handleShowModal(transaction.id, transaction.id_lelang)
                              }
                           >
                              Delete
                           </button>
                        </div>
                     </li>
                  ))}
               </ul>
            ) : (
               <p className="text-center text-muted">No transactions available.</p>
            )}
         </div>

         {/* Modal Konfirmasi Hapus */}
         {showModal && (
            <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
               <div className="modal-dialog modal-dialog-centered">
                  <div className="modal-content">
                     <div className="modal-header">
                        <h5 className="modal-title">Confirm Deletion</h5>
                        <button type="button" className="btn-close" onClick={handleCloseModal}></button>
                     </div>
                     <div className="modal-body">
                        Are you sure you want to delete this transaction?
                     </div>
                     <div className="modal-footer">
                        <button className="btn btn-secondary" onClick={handleCloseModal}>
                           Cancel
                        </button>
                        <button className="btn btn-danger" onClick={handleDelete}>
                           Confirm
                        </button>
                     </div>
                  </div>
               </div>
            </div>
         )}

         <ToastContainer />
      </div>
   );
};

export default TransactionPage;
