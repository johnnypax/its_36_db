DROP DATABASE IF EXISTS lez02_alimentari;
CREATE DATABASE lez02_alimentari;
USE lez02_alimentari;

CREATE TABLE Alimento(
	alimentoID INTEGER PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    descrizione TEXT,
    categoria VARCHAR(250),
    prezzo DECIMAL(5,2),
    scadenza DATE ,
    codice VARCHAR(10) NOT NULL UNIQUE
);

INSERT INTO Alimento (nome, descrizione, categoria, prezzo, scadenza, codice) VALUES
('Mela Golden', 'Mela dolce e croccante', 'Frutta', 1.20, '2025-03-10', 'ALM000001'),
('Banana', 'Banane mature provenienti dal Sud America', 'Frutta', 1.50, '2025-02-28', 'ALM000002'),
('Arancia', 'Arance ricche di vitamina C', 'Frutta', 1.30, '2025-03-15', 'ALM000003'),
('Carota', 'Carote fresche di stagione', 'Verdura', 0.99, '2025-02-20', 'ALM000004'),
('Zucchina', 'Zucchine verdi italiane', 'Verdura', 1.40, '2025-02-18', 'ALM000005'),
('Pomodoro', 'Pomodori rossi da insalata', 'Verdura', 1.80, '2025-02-22', 'ALM000006'),
('Latte Intero', 'Latte vaccino intero 1L', 'Latticini', 1.25, '2025-01-30', 'ALM000007'),
('Yogurt Bianco', 'Yogurt naturale senza zuccheri aggiunti', 'Latticini', 0.90, '2025-02-05', 'ALM000008'),
('Formaggio Pecorino', 'Pecorino stagionato 12 mesi', 'Latticini', 4.50, '2025-06-10', 'ALM000009'),
('Crackers Salati', 'Crackers croccanti con sale in superficie', 'Snack', 1.10, '2026-01-15', 'ALM000010'),
('Patatine Classiche', 'Patatine fritte in busta', 'Snack', 1.80, '2026-03-01', 'ALM000011'),
('Barretta ai Cereali', 'Barretta energetica con miele e avena', 'Snack', 1.20, '2026-02-10', 'ALM000012'),
('Acqua Naturale', 'Acqua minerale naturale 1.5L', 'Bevande', 0.50, '2027-12-31', 'ALM000013'),
('Succo di Mela', 'Succo 100% mela senza zuccheri aggiunti', 'Bevande', 2.00, '2025-08-20', 'ALM000014'),
('Tè Freddo Limone', 'Bevanda al tè con aroma limone', 'Bevande', 1.60, '2025-09-10', 'ALM000015'),
('Pasta Fusilli', 'Pasta di semola di grano duro', 'Dispensa', 1.10, '2027-05-01', 'ALM000016'),
('Riso Arborio', 'Riso ideale per risotti', 'Dispensa', 2.30, '2027-04-15', 'ALM000017'),
('Farina 00', 'Farina di grano tenero', 'Dispensa', 1.00, '2026-11-30', 'ALM000018'),
('Cioccolato Fondente', 'Tavoletta 70% cacao', 'Dolci', 2.50, '2026-06-20', 'ALM000019'),
('Biscotti Integrali', 'Biscotti ricchi di fibre', 'Dolci', 2.20, '2026-03-25', 'ALM000020');

-- QL
SELECT * FROM Alimento;
SELECT alimentoID, nome, descrizione, categoria, prezzo, scadenza, codice FROM Alimento;

SELECT nome, prezzo, scadenza, codice FROM Alimento;

--
SELECT * FROM Alimento WHERE codice = "ALM000003";

-- AND
SELECT * FROM Alimento WHERE categoria = "Frutta";
SELECT * FROM Alimento WHERE categoria = "Frutta" AND prezzo < 1.40;

-- OR
SELECT * FROM Alimento WHERE categoria = "Frutta" OR categoria = "Verdura";
SELECT * FROM Alimento WHERE categoria IN ("Frutta", "Verdura");

SELECT * FROM Alimento WHERE scadenza >= "2025-02-01" AND scadenza <= "2025-02-28";
SELECT * FROM Alimento WHERE scadenza BETWEEN "2025-02-01" AND "2025-02-28";

--
SELECT * FROM Alimento WHERE descrizione LIKE "Ban%";
SELECT * FROM Alimento WHERE descrizione LIKE "%ante";
SELECT * FROM Alimento WHERE descrizione LIKE "%dolce%";

SELECT * FROM Alimento WHERE nome LIKE "B_nan_";
SELECT * FROM Alimento WHERE descrizione LIKE "%ricch_%" OR nome LIKE "mel_ golden";



