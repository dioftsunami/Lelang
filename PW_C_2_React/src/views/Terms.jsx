import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import { toast, ToastContainer } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";
import { useNavigate } from "react-router-dom";

const Terms = () => {
    const navigate = useNavigate();
    const handleAccept = () => {
        toast.success("You have accepted the terms and conditions.", { autoClose: 2000 });
        setTimeout(() => navigate('/'), 2300);
    };

    return (
        <div
            className="d-flex justify-content-center align-items-center"
            style={{
                minHeight: "100vh",
                backgroundColor: "#f8f9fa", // Default background
            }}
        >
            {/* Main Container */}
            <div
                className="p-4 rounded shadow bg-white"
                style={{
                    maxWidth: "600px",
                    border: "1px solid #ddd",
                }}
            >
                {/* Close Button */}
                <div className="text-end">
                    <button
                        type="button"
                        className="btn-close"
                        aria-label="Close"
                        onClick={() => navigate('/')} // Replace with proper routing if needed
                    ></button>
                </div>

                {/* Title */}
                <h2 className="text-center fw-bold mb-4">TERMS AND CONDITIONS</h2>

                {/* Content Section */}
                <div
                    style={{
                        maxHeight: "400px",
                        overflowY: "auto",
                        textAlign: "justify",
                    }}
                >
                    <h5 className="fw-semibold">Introduction</h5>
                    <p>
                        Welcome to LELANGIN, a trusted online auction platform. By using our
                        services, you agree to comply with the terms and conditions set forth
                        on this platform. Please read carefully before proceeding.
                    </p>

                    <h5 className="fw-semibold">1. Agreement to Terms and Conditions</h5>
                    <p>
                        By providing products and services to the Purchaser, the Supplier agrees
                        to be bound by this Agreement.
                    </p>

                    <h5 className="fw-semibold">2. Scope of Delivery</h5>
                    <p>
                        The products must always meet the specifications, as well as all agreed-upon
                        technical and quality requirements, and comply with the provided description.
                    </p>

                    <h5 className="fw-semibold">3. Liability and Compliance</h5>
                    <p>
                        Suppliers must ensure full compliance with all applicable laws, regulations,
                        and environmental standards. Any non-compliance may result in the termination
                        of the agreement.
                    </p>

                    <h5 className="fw-semibold">4. Acceptance of Terms</h5>
                    <p>
                        By clicking the "Accept" button below, you acknowledge that you have read,
                        understood, and agreed to abide by these terms and conditions.
                    </p>
                </div>

                {/* Accept Button */}
                <div className="text-center mt-4">
                    <button
                        type="button"
                        className="btn btn-success btn-lg w-100" // Green button
                        onClick={handleAccept}
                    >
                        Accept
                    </button>
                </div>
            </div>
            <ToastContainer />
        </div>
    );
};

export default Terms;
