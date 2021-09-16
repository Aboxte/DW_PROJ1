CREATE TABLE [dbo].[W_pracownicy]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [zrodlo_id] INT NOT NULL, 
    [aktywny] NVARCHAR(500) NULL, 
    [plec] NVARCHAR(500) NULL, 
    [imie] NVARCHAR(500) NULL, 
    [nazwisko] NVARCHAR(500) NULL, 
    [pesel] BIGINT NULL, 
    [email_prywatny] NVARCHAR(500) NULL, 
    [email_sluzbowy] NVARCHAR(500) NULL, 
    [numer_telefonu_prywatny] INT NULL, 
    [numer_telefonu_sluzbowy] INT NULL, 
    [telefon_sluzbowy] INT NULL, 
    [samochod_sluzbowy] INT NULL, 
    [zrodlo_data_wprowadzenia] DATETIME NULL, 
    [zrodlo_data_modyfikacji] DATETIME NULL, 
    [obowiazuje_od] DATETIME NOT NULL, 
    [obowiazuje_do] DATETIME NULL 
)
