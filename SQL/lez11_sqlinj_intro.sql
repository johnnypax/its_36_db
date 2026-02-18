DROP DATABASE lez11_ecommerce;
CREATE DATABASE lez11_ecommerce;
USE lez11_ecommerce;

CREATE TABLE Utente(
	utenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    ruolo VARCHAR(10) CHECK (ruolo IN ("user", "admin")) DEFAULT "user"
);
INSERT INTO Utente (nome, cognome, email, ruolo) VALUES
("Luca", "Rossi", "luca@a.it", "user"),
("Marco", "Bianchi", "marco@a.it", "admin"),
("Sara", "Verdi", "sara@a.it", "user"),
("Giulia", "Neri", "giulia@a.it", "user"),
("Paolo", "Russo", "paolo@a.it", "admin"),
("Anna", "Gallo", "anna@a.it", "user"),
("Marta", "Costa", "marta@a.it", "user"),
("Davide", "Fonti", "davide@a.it", "admin"),
("Elisa", "Greco", "elisa@a.it", "user"),
("Stefano", "Valli", "stefano@a.it", "user"),
("Giorgio", "Sala", "giorgio@a.it", "admin"),
("Chiara", "Pini", "chiara@a.it", "user"),
("Alessio", "Ferri", "alessio@a.it", "user"),
("Irene", "Longo", "irene@a.it", "admin"),
("Fabio", "Testa", "fabio@a.it", "user"),
("Valeria", "Moretti", "valeria@a.it", "user"),
("Simone", "Colle", "simone@a.it", "admin"),
("Elena", "Riva", "elena@a.it", "user"),
("Nicola", "Pace", "nicola@a.it", "user"),
("Roberta", "Santi", "roberta@a.it", "admin");

-- var varEmai = "' OR 1=1-- ";

SELECT * FROM Utente WHERE email = '' OR 1=1-- ';
