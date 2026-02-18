CREATE DATABASE lez10_scuola;
USE lez10_scuola;

CREATE TABLE Studente(
	studenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    matricola VARCHAR(10) NOT NULL UNIQUE
);

INSERT INTO Studente (nome, cognome, matricola) VALUES ('Luca', 'Rossi', 'MAT000001');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Marco', 'Bianchi', 'MAT000002');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Giulia', 'Verdi', 'MAT000003');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Sara', 'Neri', 'MAT000004');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Francesco', 'Gallo', 'MAT000005');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Elena', 'Fontana', 'MAT000006');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Paolo', 'Greco', 'MAT000007');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Chiara', 'De Luca', 'MAT000008');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Matteo', 'Ferrari', 'MAT000009');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Alessia', 'Costa', 'MAT000010');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Davide', 'Rinaldi', 'MAT000011');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Ilaria', 'Moretti', 'MAT000012');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Simone', 'Caruso', 'MAT000013');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Martina', 'Lombardi', 'MAT000014');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Giorgio', 'Sartori', 'MAT000015');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Valentina', 'Ricci', 'MAT000016');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Andrea', 'Pellegrini', 'MAT000017');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Federica', 'Marini', 'MAT000018');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Stefano', 'Barbieri', 'MAT000019');
INSERT INTO Studente (nome, cognome, matricola) VALUES ('Roberta', 'Colombo', 'MAT000020');

