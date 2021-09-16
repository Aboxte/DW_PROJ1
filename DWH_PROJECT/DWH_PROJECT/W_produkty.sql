CREATE TABLE [dbo].[W_produkty]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [zrodlo_id] INT NOT NULL, 
    [producent] NVARCHAR(500) NOT NULL, 
    [kategoria] NVARCHAR(500) NULL, 
    [podkategoria] NVARCHAR(500) NULL, 
    [nazwa] NVARCHAR(1000) NULL, 
    [rodzaj_opakowania] NVARCHAR(255) NULL, 
    [pojemnosc_jednej_sztuki] FLOAT NULL, 
    [ilosc_sztuk_w_opakowaniu] FLOAT NULL, 
    [jednostka] NVARCHAR(255) NULL, 
    [opis_dodatkowy] NVARCHAR(4000) NULL, 
    [kod_kreskowy] BIGINT NULL, 
    [zdjecie_link] NVARCHAR(1000) NULL, 
    [zrodlo_data_wprowadzenia] DATETIME NULL, 
    [zrodlo_data_modyfikacji] DATETIME NULL, 
    [obowiazuje_od] DATETIME NOT NULL, 
    [obowiazuje_do] DATETIME NULL
)
