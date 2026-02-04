DROP DATABASE IF EXISTS lez08_farmacia;
CREATE DATABASE lez08_farmacia;
USE lez08_farmacia;

CREATE TABLE Farmaco(
	farmacoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL UNIQUE,
    quantita INTEGER CHECK (quantita >= 0),
    scadenza DATE CHECK (scadenza BETWEEN "1970-01-01" AND "2100-01-01"),
    categoria VARCHAR(255) CHECK (categoria IN ("Antipiretico", "Crema", "Supposte"))
);

INSERT INTO Farmaco(nome, quantita, scadenza, categoria) VALUES
("Tachi bustine 500", 89, "2026-01-01", "Crema");

SELECT * FROM Farmaco;


