import axios from 'axios';

const api = axios.create({
    baseURL: 'https://mediumpurple-bear-679609.hostingersite.com/api', // Ganti dengan URL backend Anda
    headers: {
        Accept: 'application/json',
    }
});
    
api.interceptors.request.use((config) => {
    const token = localStorage.getItem('auth_token');
    if (token) {
        config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
});

export default api;