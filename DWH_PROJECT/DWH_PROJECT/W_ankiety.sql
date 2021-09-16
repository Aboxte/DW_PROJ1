CREATE TABLE [dbo].[W_ankiety]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [zrodlo_id] INT NOT NULL, 
    [nazwa_ankiety] NVARCHAR(255) NULL, 
    [rodzaj_ankiety] NVARCHAR(255) NULL, 
    [data_utworzenia_ankiety] DATETIME NULL, 
    [kategoria_pytania] NVARCHAR(500) NULL, 
    [numer_pytania] INT NULL, 
    [pytanie] NVARCHAR(1000) NULL, 
    [typ_odpowiedzi] NVARCHAR(255) NULL, 
    [dostepne_warianty_odpowiedzi] NVARCHAR(500) NULL, 
    [dodatkowe_oznaczenie_pytania] NVARCHAR(500) NULL, 
    [zrodlo_data_wprowadzenia] DATETIME NULL, 
    [zrodlo_data_modyfikacji] DATETIME NULL, 
    [obowiazuje_od] DATETIME NOT NULL, 
    [obowiazuje_do] DATETIME NULL
)
