import React from 'react';

const NotFound = () => {
    return (
        <div style={styles.container}>
            <h1 style={styles.title}>404 - Page Not Found</h1>
            <p style={styles.message}>
                The page you are looking for doesn't exist. Please check the URL or go back to the homepage.
            </p>
        </div>
    );
};

const styles = {
    container: {
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'center',
        alignItems: 'center',
        height: '100vh',
        backgroundColor: '#f8f9fa',
    },
    title: {
        fontSize: '2rem',
        color: '#343a40',
        marginBottom: '10px',
    },
    message: {
        fontSize: '1rem',
        color: '#6c757d',
    },
};

export default NotFound;
