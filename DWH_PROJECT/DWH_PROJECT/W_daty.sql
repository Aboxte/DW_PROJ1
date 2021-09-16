CREATE TABLE [dbo].[W_daty]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[rok] INT NULL, 
    [kwartal] INT NULL, 
    [miesiac] INT NULL, 
    [tydzien] INT NULL, 
    [dzien] INT NULL, 
    [dzien_tygodnia] INT NULL, 
    [kwartal_etykieta] NVARCHAR(100) NULL, 
    [miesiac_etykieta] NVARCHAR(100) NULL, 
    [tydzien_etykieta] NVARCHAR(100) NULL, 
    [dzien_etykieta] NVARCHAR(100) NULL, 
    [dzien_tygodnia_etykieta] NVARCHAR(100) NULL
)
