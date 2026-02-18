DROP DATABASE IF EXISTS lez04_otm_gest_cart;
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
    FOREIGN KEY(personaRIF) REFERENCES Persona(personaID) ON DELETE CASCADE
);

INSERT INTO Carta(codice, negozio, personaRIF) VALUES
("CC001", "Conad", 1),
("CC002", "Conad", 2),
("CC003", "Conad", 3),
("PP01", "Coop", 1),
("PP02", "Coop", 2),
("TT001", "Tigotà", 2);

-- DELETE FROM Persona WHERE email = "gio@pace.com";
-- SELECT * FROM Persona;
-- SELECT * FROM Carta;

-- Tutte le carte di Giovanni
SELECT * 
	FROM Persona 
    JOIN Carta ON Persona.personaID = Carta.personaRIF;
    -- WHERE email = "gio@pace.com"
    
SELECT nome, cognome, email, codice, negozio
	FROM Persona 
    JOIN Carta ON Persona.personaID = Carta.personaRIF;
    
-- Tutte le carte di tutte le persone, comprese quelle che non ce l'hanno
SELECT * 
	FROM Persona 
    LEFT JOIN Carta ON Persona.personaID = Carta.personaRIF;
    
-- Voglio conoscere il proprietario di CC002
SELECT *
	FROM Carta
    JOIN Persona ON Carta.personaRIF = Persona.personaID;
    -- WHERE codice = "CC002";

-- Tutte le carte con i relativi proprietari e i proprietari senza carte
SELECT *
	FROM Carta
    RIGHT JOIN Persona ON Carta.personaRIF = Persona.personaID;
    
-- 
