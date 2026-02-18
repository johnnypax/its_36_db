CREATE DATABASE lez09_ospedale;
USE lez09_ospedale;

CREATE TABLE Paziente(
	pazienteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    cod_fis  VARCHAR(16) NOT NULL UNIQUE
);

CREATE TABLE Reparto(
	repartoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Medico(
	medicoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cognome VARCHAR(255) NOT NULL,
    codice  VARCHAR(16) NOT NULL UNIQUE,
    repartoRIF INTEGER NOT NULL,
    FOREIGN KEY (repartoRIF) REFERENCES Reparto(repartoID) ON DELETE CASCADE
);

CREATE TABLE Visita(
	visitaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    data_vis DATETIME NOT NULL,
    esito VARCHAR(255) NOT NULL,
	pazienteRIF INTEGER NOT NULL,
    medicoRIF INTEGER NOT NULL,
    FOREIGN KEY (pazienteRIF) REFERENCES Paziente(pazienteID) ON DELETE CASCADE,
    FOREIGN KEY (medicoRIF) REFERENCES Medico(medicoID) ON DELETE CASCADE 
);


CREATE TABLE Ricovero(
	ricoveroID INTEGER PRIMARY KEY AUTO_INCREMENT,
    data_inizio DATETIME NOT NULL,
    data_fine DATETIME,
    pazienteRIF INTEGER NOT NULL,
    repartoRIF INTEGER NOT NULL,
    FOREIGN KEY (pazienteRIF) REFERENCES Paziente(pazienteID) ON DELETE CASCADE,
    FOREIGN KEY (repartoRIF) REFERENCES Reparto(repartoID) ON DELETE CASCADE
);

CREATE TABLE Esame(
	esameID INTEGER PRIMARY KEY AUTO_INCREMENT,
    data_esame DATETIME NOT NULL,
    tipo VARCHAR(255) NOT NULL CHECK (tipo IN ("Urine", "Sangue")),
    esito TEXT,
    pazienteRIF INTEGER NOT NULL,
    FOREIGN KEY (pazienteRIF) REFERENCES Paziente(pazienteID) ON DELETE CASCADE
    );
    
-- Identificato un paziente, voglio conoscere tutti i suoi esami
-- Identificato un paziente, voglio conoscere tutte le visite che ha effettuato
-- Identificato un paziente, voglio conoscere tutti i medici che lo hanno visitato
-- Dato un medico, voglio conoscere tutti i pazienti che hanno subito un ricovero che sono stati visitati da lui.
-- Dato un paziente, voglio conoscere tutti i reparti dove è stato ricoverato
-- Crea una view a piacere tra quelle possibili sopra.