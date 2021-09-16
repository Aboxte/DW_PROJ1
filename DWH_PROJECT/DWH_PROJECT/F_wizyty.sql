CREATE TABLE [dbo].[F_wizyty]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [zrodlo_id] INT NOT NULL,
    [zrodlo_wizyta_id] INT NOT NULL, 
    [pracownik_id] INT NOT NULL, 
    [produkt_id] INT NOT NULL, 
    [lokalizacja_id] INT NOT NULL, 
    [pytanie_id] INT NOT NULL, 
    [odpowiedz] VARCHAR(MAX) NULL, 
    [odpowiedz_liczba] FLOAT NULL, 
    [data_wizyty_id] INT NOT NULL, 
    [czas_rozpoczecia_wizyty] DATETIME NULL, 
    [czas_zakonczenia_wizyty] DATETIME NULL, 
    [zrodlo_data_wprowadzenia] DATETIME NULL, 
    [zrodlo_data_modyfikacji] DATETIME NULL, 
    [data_wprowadzenia] DATETIME NOT NULL, 
    CONSTRAINT [FK_F_wizyty_W_lokalizacje] FOREIGN KEY ([lokalizacja_id]) REFERENCES [W_lokalizacje]([id]), 
    CONSTRAINT [FK_F_wizyty_W_pracownicy] FOREIGN KEY ([pracownik_id]) REFERENCES [W_pracownicy]([id]), 
    CONSTRAINT [FK_F_wizyty_W_produkty] FOREIGN KEY ([produkt_id]) REFERENCES [W_produkty]([id]), 
    CONSTRAINT [FK_F_wizyty_W_ankiety] FOREIGN KEY ([pytanie_id]) REFERENCES [W_ankiety]([id]), 
    CONSTRAINT [FK_F_wizyty_W_daty] FOREIGN KEY ([data_wizyty_id]) REFERENCES [W_daty]([id])
)
