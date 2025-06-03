import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";

const Contact = () => {
    return (
        <div className="bg-light text-dark" style={{ fontFamily: "Arial, sans-serif", marginTop: "80px" }}>
            {/* Hero Section */}
            <section
                className="text-center py-5 text-white"
                style={{
                    backgroundImage: `url("https://i.pinimg.com/736x/e6/93/8a/e6938ad766b90fc5a70f2b7d0114a4e5.jpg")`,
                    backgroundSize: "cover",
                    backgroundPosition: "center",
                    backgroundBlendMode: "darken",
                    backgroundColor: "rgba(0, 0, 0, 0.6)",
                }}
            >
                <h1 className="display-4 fw-bold">CONTACT US</h1>
                <p className="lead">
                    Need an expert? You are more than welcomed to leave your contact info and we will be in touch shortly.
                </p>
            </section>

            {/* Contact Details Section */}
            <div className="container mt-5 mb-5">
                <div className="row g-4 text-center">
                    {/* Contact Location */}
                    <div className="col-md-4">
                        <div className="card shadow border-0">
                            <div className="card-body">
                                <div className="mb-3">
                                    <i className="fas fa-map-marker-alt fa-3x text-danger"></i>
                                </div>
                                <h5 className="fw-bold mb-3">VISIT US</h5>
                                <p className="mb-0">IKN, East Kalimantan, Indonesia</p>
                            </div>
                        </div>
                    </div>

                    {/* Contact Call */}
                    <div className="col-md-4">
                        <div className="card shadow border-0">
                            <div className="card-body">
                                <div className="mb-3">
                                    <i className="fas fa-phone-alt fa-3x text-danger"></i>
                                </div>
                                <h5 className="fw-bold mb-3">CALL US</h5>
                                <p className="mb-0">+62 812 3456 8888</p>
                            </div>
                        </div>
                    </div>

                    {/* Contact Email */}
                    <div className="col-md-4">
                        <div className="card shadow border-0">
                            <div className="card-body">
                                <div className="mb-3">
                                    <i className="fas fa-envelope fa-3x text-danger"></i>
                                </div>
                                <h5 className="fw-bold mb-3">CONTACT US</h5>
                                <p className="mb-0">customerservice@lelangin.co.id</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default Contact;
