CREATE DATABASE HospitalDB;
USE HospitalDB;

CREATE TABLE Doctors(
DoctorID INT PRIMARY KEY,
DoctorName VARCHAR(100),
Specialty VARCHAR(50),
ConsultationFee DECIMAL(10,2)
);

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    PatientName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50)
);
CREATE TABLE Admissions (
    AdmissionID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AdmissionDate DATE,
    DischargeDate DATE,
    Diagnosis VARCHAR(100),
    Status VARCHAR(20), -- e.g., Discharged, Admitted
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Insert Doctors
INSERT INTO Doctors VALUES 
(101, 'Dr. Alice Smith', 'Cardiology', 150.00),
(102, 'Dr. Bob Jones', 'Pediatrics', 100.00),
(103, 'Dr. Charlie Brown', 'Orthopedics', 120.00),
(104, 'Dr. Diana Prince', 'General Medicine', 80.00);

-- Insert Patients
INSERT INTO Patients VALUES 
(1, 'John Doe', 45, 'Male', 'New York'),
(2, 'Jane Doe', 34, 'Female', 'Los Angeles'),
(3, 'Sam Smith', 9, 'Male', 'New York'),
(4, 'Emily Davis', 62, 'Female', 'Chicago'),
(5, 'Michael Brown', 50, 'Male', 'Miami');

-- Insert Admissions
INSERT INTO Admissions VALUES 
(1001, 1, 101, '2026-05-01', '2026-05-05', 'Heart Attack', 'Discharged'),
(1002, 2, 103, '2026-05-03', '2026-05-10', 'Fracture', 'Discharged'),
(1003, 3, 102, '2026-05-10', '2026-05-12', 'Fever', 'Discharged'),
(1004, 4, 104, '2026-05-15', NULL, 'Diabetes Checkup', 'Admitted'),
(1005, 5, 101, '2026-05-20', '2026-05-22', 'Heart Arrhythmia', 'Discharged'),
(1006, 1, 104, '2026-06-01', NULL, 'High Blood Pressure', 'Admitted');

SELECT*FROM Doctors;
SELECT*FROM Patients;
SELECT*FROM Admissions;