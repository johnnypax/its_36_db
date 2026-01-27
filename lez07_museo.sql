DROP DATABASE IF EXISTS lez07_museo;
CREATE DATABASE lez07_museo;
USE lez07_museo;

CREATE TABLE Museo(
	museoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
	citta VARCHAR(250) NOT NULL,
	indirizzo VARCHAR(250) NOT NULL,
	direttore VARCHAR(250) NOT NULL,
    UNIQUE(nome, citta)
);

CREATE TABLE Artista(
	artistaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL UNIQUE,
	nazionalita VARCHAR(250) NOT NULL,
	data_nas DATE NOT NULL,
	data_mor DATE
);

CREATE TABLE Scultura(
	sculturaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(10) NOT NULL UNIQUE,
	titolo VARCHAR(250) NOT NULL,
	anno_crea INTEGER NOT NULL,
	materiale VARCHAR(250) NOT NULL,
	altezza INTEGER NOT NULL,
	peso INTEGER NOT NULL,
    museoRIF INTEGER,
    artistaRIF INTEGER NOT NULL,
    FOREIGN KEY (museoRIF) REFERENCES Museo(museoID) ON DELETE SET NULL,
    FOREIGN KEY (artistaRIF) REFERENCES Artista(artistaID) ON DELETE CASCADE
);

CREATE TABLE Dipinto(
	dipintoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(10) NOT NULL UNIQUE,
	titolo VARCHAR(250) NOT NULL,
	anno_crea INTEGER NOT NULL,
	tipo VARCHAR(250) NOT NULL,
	dimensione VARCHAR(250) NOT NULL,
    museoRIF INTEGER,
    artistaRIF INTEGER NOT NULL,
    FOREIGN KEY (museoRIF) REFERENCES Museo(museoID) ON DELETE SET NULL,
    FOREIGN KEY (artistaRIF) REFERENCES Artista(artistaID) ON DELETE CASCADE
);

CREATE TABLE Personaggio(
	personaggioID INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(250) NOT NULL
);

CREATE TABLE Personaggio_Dipinto(
	personaggioRIF INTEGER NOT NULL,
    dipintoRIF INTEGER NOT NULL,
	FOREIGN KEY (personaggioRIF) REFERENCES Personaggio(personaggioID) ON DELETE CASCADE,
	FOREIGN KEY (dipintoRIF) REFERENCES Dipinto(dipintoID) ON DELETE CASCADE,
	PRIMARY KEY (personaggioRIF, dipintoRIF)
);

CREATE TABLE Personaggio_Scultura(
	personaggioRIF INTEGER NOT NULL,
    sculturaRIF INTEGER NOT NULL,
	FOREIGN KEY (personaggioRIF) REFERENCES Personaggio(personaggioID) ON DELETE CASCADE,
	FOREIGN KEY (sculturaRIF) REFERENCES Scultura(sculturaID) ON DELETE CASCADE,
	PRIMARY KEY (personaggioRIF, sculturaRIF)
);

INSERT INTO Museo (nome, citta, indirizzo, direttore) VALUES
('Museo degli Uffizi', 'Firenze', 'Piazzale degli Uffizi 6', 'Lorenzo Berti'),
('Museo del Louvre', 'Parigi', 'Rue de Rivoli 99', 'Claire Dubois'),
('Museo del Prado', 'Madrid', 'Calle Ruiz 45', 'Carlos Ortega'),
('Galleria Borghese', 'Roma', 'Piazzale Scipione Borghese 5', 'Giulia Conti'),
('Museo Archeologico', 'Napoli', 'Via Foria 12', 'Alessandro Romano'),
('Tate Modern', 'Londra', 'Bankside 53', 'Emily Carter'),
('Metropolitan Museum', 'New York', '5th Avenue 1000', 'Michael Johnson'),
('Museo Egizio', 'Torino', 'Via Accademia delle Scienze 6', 'Paolo Ricci'),
('Rijksmuseum', 'Amsterdam', 'Museumstraat 1', 'Anna Van Dijk'),
('Museo Picasso', 'Barcellona', 'Carrer Montcada 15', 'Jordi Martinez');

INSERT INTO Artista (nome, nazionalita, data_nas, data_mor) VALUES
('Michelangelo Buonarroti', 'Italiana', '1475-03-06', '1564-02-18'),
('Leonardo da Vinci', 'Italiana', '1452-04-15', '1519-05-02'),
('Pablo Picasso', 'Spagnola', '1881-10-25', '1973-04-08'),
('Vincent van Gogh', 'Olandese', '1853-03-30', '1890-07-29'),
('Claude Monet', 'Francese', '1840-11-14', '1926-12-05'),
('Donatello', 'Italiana', '1386-01-01', '1466-12-13'),
('Gian Lorenzo Bernini', 'Italiana', '1598-12-07', '1680-11-28'),
('Salvador Dalí', 'Spagnola', '1904-05-11', '1989-01-23'),
('Frida Kahlo', 'Messicana', '1907-07-06', '1954-07-13'),
('Jackson Pollock', 'Americana', '1912-01-28', '1956-08-11');

INSERT INTO Scultura (codice, titolo, anno_crea, materiale, altezza, peso, museoRIF, artistaRIF) VALUES
('SCU001', 'David', 1504, 'Marmo', 517, 6000, 1, 1),
('SCU002', 'Pietà', 1499, 'Marmo', 174, 3000, 1, 1),
('SCU003', 'Il Pensatore', 1904, 'Bronzo', 186, 700, 6, 1),
('SCU004', 'Amore e Psiche', 1793, 'Marmo', 155, 900, 2, 1),
('SCU005', 'Ercole e Lica', 1795, 'Marmo', 317, 2500, 4, 1),
('SCU006', 'Laocoonte', 40, 'Marmo', 208, 1800, 5, 1),
('SCU007', 'Venere di Milo', -130, 'Marmo', 204, 900, 2, 1),
('SCU008', 'Statua di Ramses II', -1250, 'Granito', 260, 5000, 8, 1),
('SCU009', 'Apollo del Belvedere', 120, 'Marmo', 224, 1200, 4, 1),
('SCU010', 'Discobolo', -450, 'Marmo', 155, 800, 3, 1);

INSERT INTO Dipinto (codice, titolo, anno_crea, tipo, dimensione, museoRIF, artistaRIF) VALUES
('DIP001', 'La Gioconda', 1503, 'Olio su tavola', '77x53 cm', 2, 1),
('DIP002', 'Guernica', 1937, 'Olio su tela', '349x776 cm', 10, 1),
('DIP003', 'Notte stellata', 1889, 'Olio su tela', '73x92 cm', 7, 1),
('DIP004', 'Le Ninfee', 1916, 'Olio su tela', '200x180 cm', 6, 1),
('DIP005', 'La Ragazza con l’orecchino di perla', 1665, 'Olio su tela', '44x39 cm', 9, 1),
('DIP006', 'La Primavera', 1482, 'Tempera su tavola', '203x314 cm', 1, 1),
('DIP007', 'La Deposizione', 1604, 'Olio su tela', '300x203 cm', 4, 1),
('DIP008', 'Il Sogno', 1932, 'Olio su tela', '130x97 cm', 10, 1),
('DIP009', 'Autoritratto', 1940, 'Olio su masonite', '60x80 cm', 7, 1),
('DIP010', 'La Persistenza della memoria', 1931, 'Olio su tela', '24x33 cm', 10, 1);

INSERT INTO Personaggio (nome) VALUES
('Gesù'),
('Maria'),
('Giuda'),
('San Pietro'),
('Venere'),
('Apollo'),
('Minerva'),
('Adamo'),
('Eva'),
('Cupido');

INSERT INTO Personaggio_Dipinto (personaggioRIF, dipintoRIF) VALUES
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 6),
(8, 6),
(9, 6),
(10, 8),
(5, 5),
(6, 3),
(7, 3),
(10, 10);

INSERT INTO Personaggio_Scultura (personaggioRIF, sculturaRIF) VALUES
(5, 7),
(6, 9),
(10, 4),
(8, 1),
(9, 1),
(5, 10),
(6, 10),
(7, 9),
(10, 3),
(5, 2),
(8, 6);

-- Tutti gli artisti che hanno fatto dipinti presenti in un museo.
SELECT * 
	FROM Museo 
    JOIN Dipinto ON Museo.museoID = Dipinto.museoRIF
    JOIN Artista ON Dipinto.artistaRIF = Artista.artistaID
    WHERE Museo.nome = "Museo degli Uffizi";

