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

CREATE TABLE Carta(
	cartaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(10) NOT NULL UNIQUE,
    negozio VARCHAR(250) NOT NULL,
    personaRIF INTEGER NOT NULL,
    FOREIGN KEY(personaRIF) REFERENCES Persona(personaID)
);

INSERT INTO Carta(codice, negozio, personaRIF) VALUES
("CC001", "Conad", 1),
("CC002", "Conad", 2),
("CC003", "Conad", 3),
("PP01", "Coop", 1),
("PP02", "Coop", 2),
("TT001", "Tigotà", 2);




SELECT * FROM Persona;
SELECT * FROM Carta;
