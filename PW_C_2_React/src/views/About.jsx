import React from "react";
import 'bootstrap/dist/css/bootstrap.min.css';

const cardData = [
    {
        id: 1,
        title: "The Future of Trusted Auction Services",
        description:
            "Welcome to LELANGIN – a trusted and high-integrity auction platform. We are committed to delivering exceptional service, ensuring your needs are met with professionalism and excellence",
        image: "https://i.pinimg.com/736x/1e/3d/76/1e3d769289c830f81d5f1447907d09e4.jpg",
    },
    {
        id: 2,
        title: "The Vision of Becoming the Most Trusted Auction Service Provider",
        description:
            "To become the most trusted auction service provider, prioritizing integrity, professionalism, and customer satisfaction.",
        image: "https://i.pinimg.com/736x/74/a5/c5/74a5c5256dff6317fda83322f9ea8076.jpg",
    },
    {
        id: 3,
        title: "The Mission of Expanding Reach and Collaboration",
        description:
            "To connect sellers and buyers worldwide by creating a globally competitive online auction marketplace.",
        image: "https://i.pinimg.com/736x/f8/f1/80/f8f18021b4706fc0de8b5ed1f450d1fd.jpg",
    },
];

const About = () => {
    return (
        <div className="bg-white text-black mt-5">
            {/* Hero Section */}
            <section className="text-center py-5 bg-dark text-white" style={{ marginTop: "60px" }}>
                <h1 className="display-4 fw-bold mb-2 mt-4">About Us</h1>
                <p className="lead">Discover Who We Are</p>
            </section>

            {/* Card Section */}
            <div className="container mt-5">
                {cardData.map((card, index) => (
                    <div
                        key={card.id}
                        className={`row align-items-center mb-5 ${
                            index % 2 === 0 ? "" : "flex-row-reverse"
                        }`}
                    >
                        {/* Kolom untuk gambar */}
                        <div
                            className={`col-md-5 d-flex justify-content-${
                                index % 2 === 0 ? "end" : "start"
                            }`}
                        >
                            <img
                                src={card.image}
                                alt={card.title}
                                className="img-fluid rounded shadow"
                                style={{ maxWidth: "300px", height: "auto" }}
                            />
                        </div>

                        {/* Kolom untuk teks */}
                        <div
                            className={`col-md-7 text-${
                                index % 2 === 0 ? "start" : "end"
                            } d-flex flex-column`}
                        >
                            <h3 className="fw-bold mb-3">{card.title}</h3>
                            <p className="lead">{card.description}</p>
                        </div>
                    </div>
                ))}
            </div>
        </div>
    );
};

export default About;
