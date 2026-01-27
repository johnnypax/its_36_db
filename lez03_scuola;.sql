CREATE DATABASE lez03_scuola;
USE lez03_scuola;

CREATE TABLE Studente(
	studenteID INTEGER AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    cognome VARCHAR(250) NOT NULL,
    matricola VARCHAR(10) NOT NULL,
    email VARCHAR(250),
    PRIMARY KEY(studenteID),
    UNIQUE(matricola)
);

INSERT INTO Studente (nome, cognome, matricola, email) VALUES
('Luca', 'Rossi', 'A000000001', 'luca.rossi@example.com'),
('Maria', 'Bianchi', 'A000000002', 'maria.bianchi@example.com'),
('Giulia', 'Verdi', 'A000000003', 'giulia.verdi@example.com'),
('Marco', 'Esposito', 'A000000004', 'marco.esposito@example.com'),
('Francesca', 'Russo', 'A000000005', 'francesca.russo@example.com'),
('Alessandro', 'Ferrari', 'A000000006', 'alessandro.ferrari@example.com'),
('Chiara', 'Gallo', 'A000000007', 'chiara.gallo@example.com'),
('Davide', 'Costa', 'A000000008', 'davide.costa@example.com'),
('Elena', 'Fontana', 'A000000009', 'elena.fontana@example.com'),
('Simone', 'Moretti', 'A000000010', 'simone.moretti@example.com');

SELECT nome, cognome, matricola FROM Studente WHERE matricola = "A000000003";

INSERT INTO Studente (studenteID, nome, cognome, matricola, email) VALUES
(105, 'Marika', 'Mariko', 'A000000011', 'mar@mar.com');

SELECT * FROM Studente;

INSERT INTO Studente (studenteID, nome, cognome, matricola, email) VALUES
(100, 'L', '', 'A000000012', 'L@l.com');