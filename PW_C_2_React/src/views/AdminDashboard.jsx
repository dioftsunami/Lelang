import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from '../api/axios';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';

const AdminDashboard = () => {
   const [users, setUsers] = useState([]); // State untuk daftar user
   const [filteredUsers, setFilteredUsers] = useState([]); // State untuk hasil pencarian
   const [showModal, setShowModal] = useState(false); // State untuk modal Add User
   const [formData, setFormData] = useState({
      name: '',
      email: '',
      password: '',
      password_confirmation: '',
      date_of_birth: '',
   });
   const [searchTerm, setSearchTerm] = useState(''); // State untuk search input

   const navigate = useNavigate();
   const token = localStorage.getItem('auth_token');

   // Fetch daftar user saat komponen dimuat
   useEffect(() => {
      fetchUsers();
   }, []);

   const fetchUsers = async () => {
      try {
         const response = await axios.get('/users', {
            headers: { Authorization: `Bearer ${token}` },
         });
         setUsers(response.data.users);
         setFilteredUsers(response.data.users); // Awalnya filteredUsers sama dengan semua user
      } catch (error) {
         toast.error('Failed to fetch users');
         console.error(error);
      }
   };

   const handleSubmit = async (e) => {
      e.preventDefault();
      if (formData.password.length < 8) {
         toast.error('Password must be at least 8 characters', { autoClose: 3000 });
         return;
      }

      try {
         await axios.post(
            '/register',
            formData,
            { headers: { Authorization: `Bearer ${token}` } }
         );
         toast.success('User added successfully!', { autoClose: 1500 });
         fetchUsers(); // Refresh daftar user
         setShowModal(false); // Tutup modal
         setFormData({ name: '', email: '', password: '', password_confirmation: '', date_of_birth: '' });
      } catch (error) {
         toast.error(error.response?.data?.message || 'Failed to add user');
         console.error('Failed to add user:', error);
      }
   };

   // Fungsi handleSearch untuk memfilter user
   const handleSearch = (e) => {
      const value = e.target.value.toLowerCase();
      setSearchTerm(value);
      const filtered = users.filter((user) =>
         user.name.toLowerCase().includes(value) || user.email.toLowerCase().includes(value)
      );
      setFilteredUsers(filtered); // Perbarui hasil filter
   };

   return (
      <div className="container mt-5 pt-3">
         {/* Header Section */}
         <div className="mb-4">
            <h1 className="fw-bold mb-0 text-center mt-6 pt-3">Admin Dashboard</h1>
         </div>

         {/* Daftar User */}
         <div className="card shadow p-4 mb-4">
            <div className="d-flex justify-content-between align-items-center mb-3">
               <h3 className="fw-bold mb-0">User List</h3>
               <button
                  className="btn btn-sm btn-success fw-bold px-4 py-2" // Padding horizontal (px) & vertical (py)
                  style={{ fontSize: '1rem', height: '45px' }} // Inline style untuk tinggi tambahan
                  onClick={() => setShowModal(true)}
               >
                  Add
               </button>
            </div>

            {/* Search Bar */}
            <div className="mb-3">
               <input
                  type="text"
                  className="form-control"
                  placeholder="Search users by name or email..."
                  value={searchTerm}
                  onChange={handleSearch}
                  style={{
                     backgroundColor: '#f8f9fa', // Warna abu-abu pudar
                     border: '1px solid #ced4da', // Border abu-abu
                     color: '#495057', // Warna teks
                     fontWeight: '500', // Teks sedikit tebal
                  }}
               />
            </div>

            {/* List Users */}
            <ul className="list-group">
               {filteredUsers.map((user) => (
                  <li
                     key={user.id}
                     className="list-group-item d-flex justify-content-between align-items-center"
                  >
                     <span>
                        <strong>ID:</strong> {user.id} | <strong>Name:</strong> {user.name} |{' '}
                        <strong>Email:</strong> {user.email}
                     </span>
                     <button
                        className="btn btn-sm btn-primary"
                        onClick={() => navigate(`/update-user/${user.id}`)}
                     >
                        Update
                     </button>
                  </li>
               ))}
            </ul>
         </div>

         {/* Modal Add User */}
         {showModal && (
            <div className="modal fade show d-block" tabIndex="-1" style={{ backgroundColor: 'rgba(0,0,0,0.5)' }}>
               <div className="modal-dialog modal-dialog-centered">
                  <div className="modal-content">
                     <div className="modal-header">
                        <h5 className="modal-title">Add User</h5>
                        <button type="button" className="btn-close" onClick={() => setShowModal(false)}></button>
                     </div>
                     <div className="modal-body">
                        <form onSubmit={handleSubmit}>
                           <div className="mb-3">
                              <label className="form-label fw-bold">Full Name</label>
                              <input
                                 type="text"
                                 className="form-control"
                                 value={formData.name}
                                 onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                                 required
                              />
                           </div>
                           <div className="mb-3">
                              <label className="form-label fw-bold">Email</label>
                              <input
                                 type="email"
                                 className="form-control"
                                 value={formData.email}
                                 onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                                 required
                              />
                           </div>
                           <div className="mb-3">
                              <label className="form-label fw-bold">Password</label>
                              <input
                                 type="password"
                                 className="form-control"
                                 value={formData.password}
                                 onChange={(e) => setFormData({ ...formData, password: e.target.value })}
                                 required
                              />
                           </div>
                           <div className="mb-3">
                              <label className="form-label fw-bold">Confirm Password</label>
                              <input
                                 type="password"
                                 className="form-control"
                                 value={formData.password_confirmation}
                                 onChange={(e) =>
                                    setFormData({ ...formData, password_confirmation: e.target.value })
                                 }
                                 required
                              />
                           </div>
                           <div className="mb-3">
                              <label className="form-label fw-bold">Date of Birth</label>
                              <input
                                 type="date"
                                 className="form-control"
                                 value={formData.date_of_birth}
                                 onChange={(e) =>
                                    setFormData({ ...formData, date_of_birth: e.target.value })
                                 }
                                 required
                              />
                           </div>
                           <div className="d-flex justify-content-between">
                              <button type="button" className="btn btn-secondary" onClick={() => setShowModal(false)}>
                                 Back
                              </button>
                              <button type="submit" className="btn btn-success">
                                 Add User
                              </button>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         )}

         <ToastContainer />
      </div>
   );
};

export default AdminDashboard;
