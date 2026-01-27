CREATE DATABASE lez04_otm_gest_cart;
USE lez04_otm_gest_cart;

CREATE TABLE Persona(
	personaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    cognome VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL UNIQUE
);

INSERT INTO Persona(nome, cognome, email) VALUES
("Giovanni", "Pace", "gio@pace.com"),
("Valeria", "Verdi", "val@verdi.com"),
("Marika", "Mariko", "mar@mar.com"),
("Mario", "Rossi", "mar@ros.com");

SELECT * FROM Persona;
