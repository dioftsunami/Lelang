// Footer.jsx
import React from 'react';
import { Link } from 'react-router-dom'; // Import Link

const Footer = () => {
    return (
        <footer style={styles.footer}>
            <div style={styles.container}>
                <p style={styles.text}>
                    © {new Date().getFullYear()} Lelangin | All Rights Reserved.
                </p>
                <div style={styles.links}>
                    <Link to="/about" style={styles.link}>About Us</Link>
                    <Link to="/contact" style={styles.link}>Contact</Link>
                    <Link to="/terms" style={styles.link}>Terms & Conditions</Link>
                </div>
            </div>
        </footer>
    );
};

const styles = {
    footer: {
        backgroundColor: '#002855',
        color: '#fff',
        padding: '20px 0',
        marginTop: '20px',
        textAlign: 'center',
        width: '100%',
    },
    container: {
        maxWidth: '1200px',
        margin: '0 auto',
        padding: '0 15px',
    },
    text: {
        marginBottom: '10px',
        fontSize: '14px',
    },
    links: {
        display: 'flex',
        justifyContent: 'center',
        gap: '15px',
        marginTop: '10px',
    },
    link: {
        color: '#FFD700',
        textDecoration: 'none',
        fontSize: '14px',
    },
};

export default Footer;
