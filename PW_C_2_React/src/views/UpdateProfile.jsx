import React, { useState, useEffect, useContext } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { AuthContext } from '../context/AuthContext';
import { toast, ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import api from '../api/axios';

const UpdateProfile = () => {
   const { user } = useContext(AuthContext);
   const [formData, setFormData] = useState({
      name: '',
      email: '',
      date_of_birth: '',
      telepon: '',
   });
   const navigate = useNavigate();

   useEffect(() => {
      const fetchUserData = async () => {
         try {
            const response = await api.get('/user');
            const userData = response.data.user;

            setFormData({
               name: userData.name || '',
               email: userData.email || '',
               date_of_birth: userData.date_of_birth || '',
               telepon: userData.telepon || '-',
            });
         } catch (error) {
            toast.error('Failed to load user data. Please try again.', { autoClose: 3000 });
            console.error(error);
         }
      };

      fetchUserData();
   }, []);

   const handleSubmit = async (e) => {
      e.preventDefault();

      try {
         await api.put('/user', formData);
         toast.success('Profile updated successfully!', { autoClose: 3000 });
         // setTimeout(() => navigate('/'), 3000);
      } catch (error) {
         toast.error('Failed to update profile. Please try again.', { autoClose: 3000 });
         console.error(error);
      }
   };

   const handleBack = () => {
      navigate('/');
   };

   return (
      <div className="container d-flex justify-content-center align-items-center vh-100 mt-5">
         <div className="card shadow p-4" style={{ width: '100%', maxWidth: '600px', backgroundColor: '#FFD700' }}>
            <h1 className="text-center text-dark fw-bold mb-4" >
               Update Profile
            </h1>
            <form onSubmit={handleSubmit}>
               <div className="mb-3">
                  <label htmlFor="name" className="form-label fw-bold text-dark">
                     Full Name
                  </label>
                  <input
                     type="text"
                     id="name"
                     className="form-control"
                     value={formData.name}
                     onChange={(e) => setFormData({ ...formData, name: e.target.value })}
                     required
                     placeholder="Enter your full name"
                  />
               </div>
               <div className="mb-3">
                  <label htmlFor="email" className="form-label fw-bold text-dark">
                     Email
                  </label>
                  <input
                     type="email"
                     id="email"
                     className="form-control"
                     value={formData.email}
                     onChange={(e) => setFormData({ ...formData, email: e.target.value })}
                     disabled
                     placeholder="Enter your email"
                  />
               </div>
               <div className="mb-3">
                  <label htmlFor="date_of_birth" className="form-label fw-bold text-dark">
                     Date of Birth
                  </label>
                  <input
                     type="date"
                     id="date_of_birth"
                     className="form-control"
                     value={formData.date_of_birth}
                     onChange={(e) => setFormData({ ...formData, date_of_birth: e.target.value })}
                     required
                  />
               </div>
               <div className="mb-4">
                  <label htmlFor="telepon" className="form-label fw-bold text-dark">
                     Phone
                  </label>
                  <input
                     type="text"
                     id="telepon"
                     className="form-control"
                     value={formData.telepon}
                     onChange={(e) => setFormData({ ...formData, telepon: e.target.value })}
                     placeholder="Enter your phone number"
                  />
               </div>
               <div className="text-end mb-3">
                  <Link to="/reset-password-login" className="text-decoration-none fw-bold text-dark">
                     Reset Password?
                  </Link>
               </div>
               <button type="submit" className="btn btn-success w-100 fw-bold mb-2">
                  Update Profile
               </button>
               <button
                  type="button"
                  className="btn btn-secondary w-100 fw-bold"
                  onClick={handleBack}
               >
                  Back
               </button>
            </form>
         </div>
         <ToastContainer />
      </div>
   );
};

export default UpdateProfile;
