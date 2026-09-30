-- Clinic Management System
-- Database Schema

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE appointments (
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients(id),
    appointment_date TIMESTAMP NOT NULL,
    treatment VARCHAR(100)
);

CREATE TABLE follow_ups (
    id SERIAL PRIMARY KEY,
    appointment_id INTEGER REFERENCES appointments(id),
    follow_up_date DATE NOT NULL,
    status VARCHAR(50),
    notes TEXT
);  