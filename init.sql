-- Créer la base de données DemoDatabase
CREATE DATABASE DemoDatabase;
GO

-- Utiliser la base de données DemoDatabase
USE DemoDatabase;
GO

-- Créer la table Contact
CREATE TABLE Contact (
    Id INT PRIMARY KEY IDENTITY(1,1), -- Identifiant auto-incrémenté
    Email NVARCHAR(255) NOT NULL     -- Adresse email
);
GO

-- Insérer des données dans la table Contact
INSERT INTO Contact (Email) VALUES
('izuku.midoriya@heroacademia.com'), 
('katsuki.bakugo@heroacademia.com'),
('shoto.todoroki@heroacademia.com'),
('ochaco.uraraka@heroacademia.com'),
('tenya.iida@heroacademia.com'),
('tsuyu.asui@heroacademia.com'),
('eijiro.kirishima@heroacademia.com'),
('mina.ashido@heroacademia.com'),
('denki.kaminari@heroacademia.com'),
('fumikage.tokoyami@heroacademia.com');
GO
