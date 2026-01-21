-- Data Definition Language
CREATE DATABASE lez00_intro;
USE lez00_intro;

CREATE TABLE Persona(
	nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    cod_fis VARCHAR(16) NOT NULL UNIQUE,
    telefono VARCHAR(255)
);

-- Data Manipulation Language
INSERT INTO Persona (nome, cognome, cod_fis, telefono) VALUES
("Giovanni", "Pace", "PCAGNN", "123456");

INSERT INTO Persona (nome, cognome, cod_fis, telefono) VALUES
("Valeria", "Verdi", "VLRVRD", "123457"),
("Giovanni", "Pace", "PCAGNN", "123456");

-- Querying language
SELECT * FROM Persona;
