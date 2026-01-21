-- DDL
-- DROP DATABASE IF EXISTS lez01_comandi_ddl;
CREATE DATABASE lez01_comandi_ddl;
USE lez01_comandi_ddl;

CREATE TABLE Persona(
	nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    cod_fis VARCHAR(16) NOT NULL UNIQUE,
    telefono VARCHAR(255)
);

ALTER TABLE Persona ADD COLUMN email VARCHAR(255) AFTER cod_fis;
ALTER TABLE Persona DROP COLUMN email;
ALTER TABLE Persona MODIFY COLUMN cod_fis VARCHAR(14);

-- DML
INSERT INTO Persona (nome, cognome, cod_fis, telefono) VALUES
('Marco', 'Rossi', 'RSSMRC80A01H501U', '3331234567'),
('Luca', 'Bianchi', 'BNCLCU85B15F205Z', '3209876543'),
('Giulia', 'Verdi', 'VRDGLI90C22L219X', '3471122334'),
('Sara', 'Ferrari', 'FRRSRA75D10H224P', '3895566778'),
('Paolo', 'Conti', 'CNTPLA82E05F205V', '3289988776'),
('Elena', 'Gallo', 'GLLLNE93F18H501S', '3456677889'),
('Davide', 'Moretti', 'MRTDVD79G30L219Q', '3314455667'),
('Chiara', 'Romano', 'RMNCHR88H12F205T', '3923344556'),
('Francesco', 'De Luca', 'DLCFNC91L20H501R', '3507788991'),
('Alessia', 'Greco', 'GRCLSS86M05L219W', '3661122445');

-- SET SQL_SAFE_UPDATES = 1;
DELETE FROM Persona WHERE cod_fis = "GRCLSS86M05L219W";

UPDATE Persona 
	SET nome = "Giulio", cognome = "Bianchi" 
    WHERE cod_fis = "RSSMRC80A01H501U";


SELECT * FROM Persona;