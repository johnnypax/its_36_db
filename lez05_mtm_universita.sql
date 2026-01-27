CREATE DATABASE lez05_mtm_universita;
USE lez05_mtm_universita;

CREATE TABLE Studente(
	studenteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    cognome VARCHAR(250) NOT NULL,
    matricola VARCHAR(10) NOT NULL UNIQUE
);

CREATE TABLE Esame(
	esameID INTEGER PRIMARY KEY AUTO_INCREMENT,
    materia VARCHAR(250) NOT NULL,
    data_svolgimento DATETIME
);

CREATE TABLE Studente_Esame(
	studenteRIF INTEGER NOT NULL,
    esameRIF INTEGER NOT NULL,
    FOREIGN KEY (studenteRIF) REFERENCES Studente(studenteID),
    FOREIGN KEY (esameRIF) REFERENCES Esame(esameID),
    PRIMARY KEY(studenteRIF, esameRIF)
);

INSERT INTO Studente(nome, cognome, matricola) VALUES
("Giovanni", "Pace", "AB12345"),
("Valeria", "Verdi", "AB12346"),
("Marika", "Mariko", "AB12347");

INSERT INTO Esame(materia, data_svolgimento) VALUES
("Programmazione", "2026-01-01"),
("Programmazione", "2026-01-02"),
("Programmazione", "2026-01-03"),
("Basi di dati", "2026-01-04"),
("Basi di dati", "2026-01-05"),
("Filosofia", "2026-01-06");

INSERT INTO Studente_Esame(studenteRIF, esameRIF) VALUES
(1,	6),
(1,	4),
(2,	6),
(2,	4),
(2,	1);

SELECT * FROM Studente;
SELECT * FROM Studente_Esame;
SELECT * FROM Esame;
