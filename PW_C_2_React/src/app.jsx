import React from 'react';
import { ToastContainer } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css'; // Impor gaya toastify
import AppRoutes from './routes/routes';

const App = () => (
    <>
        <AppRoutes />
        <ToastContainer />
    </>
);

export default App;
