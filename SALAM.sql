CREATE SCHEMA IF NOT EXISTS salam;

CREATE TABLE salam.mahasiswas (
    id SERIAL PRIMARY KEY,  
    nama VARCHAR(50) NOT NULL,
    nim VARCHAR(10) UNIQUE,  
    jurusan VARCHAR(50),
    semester INT CHECK (semester >= 1 AND semester <= 8)  
);
INSERT INTO salam.mahasiswas (nama, nim, jurusan, semester) VALUES
    ('Dani Ramdani', '12345678', 'Teknik Informatika', 4),
    ('Athif Zharfan', '87654321', 'Manajemen Bisnis', 6),
    ('Arif Rahman', '12345678', 'Psikologi', 2); 


SELECT * FROM salam.mahasiswas;
