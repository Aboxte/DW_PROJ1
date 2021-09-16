﻿/*
Deployment script for DWH_WSEI_ERNEST_PIEKARCZYK

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DWH_WSEI_ERNEST_PIEKARCZYK"
:setvar DefaultFilePrefix "DWH_WSEI_ERNEST_PIEKARCZYK"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL15.ERNEST_MAIN\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL15.ERNEST_MAIN\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET PAGE_VERIFY NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
PRINT N'Rename refactoring operation with key 6d9a2e77-4957-47f6-9b0c-49cd9b7dd63e is skipped, element [dbo].[Fwizyty].[Pytanie_id] (SqlSimpleColumn) will not be renamed to pytanie_id';


GO
PRINT N'Rename refactoring operation with key 12526708-1017-4301-9372-72573a57fbac is skipped, element [dbo].[Fwizyty].[Lokalizacja_id] (SqlSimpleColumn) will not be renamed to lokalizacja_id';


GO
PRINT N'Rename refactoring operation with key b770009e-3bae-4e60-a935-871e723f9aa0 is skipped, element [dbo].[Fwizyty].[Id] (SqlSimpleColumn) will not be renamed to id';


GO
PRINT N'Rename refactoring operation with key a0e32827-ada7-4f5f-93b7-a0c76ddb218c is skipped, element [dbo].[Fwizyty].[odpowiedx] (SqlSimpleColumn) will not be renamed to odpowiedz';


GO
PRINT N'Rename refactoring operation with key 9f3ed5e9-f998-4c8a-ba8c-96baf08c8339 is skipped, element [dbo].[Fwizyty].[czas_rozpoczecia] (SqlSimpleColumn) will not be renamed to czas_rozpoczecia_wizyty';


GO
PRINT N'Rename refactoring operation with key cac9e2a5-4510-4297-b609-3d2b7c7e0da6 is skipped, element [dbo].[Fwizyty].[czas_zakonczenia] (SqlSimpleColumn) will not be renamed to czas_zakonczenia_wizyty';


GO
PRINT N'Rename refactoring operation with key ee85438f-7680-485e-a04c-c1738de5d891 is skipped, element [dbo].[W_lokalizacje].[Id] (SqlSimpleColumn) will not be renamed to id';


GO
PRINT N'Rename refactoring operation with key b947caf1-856c-4929-a399-5ed621c18f16 is skipped, element [dbo].[W_lokalizacje].[data_wprowadzenia] (SqlSimpleColumn) will not be renamed to zrodlo_data_wprowadzenia';


GO
PRINT N'Rename refactoring operation with key 27326e66-3946-4ecb-9140-bdcaa7e887db is skipped, element [dbo].[W_lokalizacje].[data_modyfikacji] (SqlSimpleColumn) will not be renamed to zrodlo_data_modyfikacji';


GO
PRINT N'Rename refactoring operation with key 7529ce4c-487c-4b28-8233-8f3677480c2e is skipped, element [dbo].[W_pracownicy].[Id] (SqlSimpleColumn) will not be renamed to id';


GO
PRINT N'Rename refactoring operation with key 91ee2b40-c4bc-4231-b4e1-a13e9998a35f is skipped, element [dbo].[W_pracownicy].[data_wprowadzenia] (SqlSimpleColumn) will not be renamed to zrodlo_data_wprowadzenia';


GO
PRINT N'Rename refactoring operation with key f854ba9b-4a64-4e8b-aee3-887cf4fbd687 is skipped, element [dbo].[W_pracownicy].[data_modyfikacji] (SqlSimpleColumn) will not be renamed to zrodlo_data_modyfikacji';


GO
PRINT N'Rename refactoring operation with key f3d5cb5c-9e6b-437b-93d4-81ad7000249b, 1eebc26b-1d51-44ca-bc8b-ef97a173a6fa is skipped, element [dbo].[W_produkty].[data_wprowadzenia] (SqlSimpleColumn) will not be renamed to zrodlo_data_wprowadzenia';


GO
PRINT N'Rename refactoring operation with key f5d1fc99-bebe-4a46-9567-978b548ccb62 is skipped, element [dbo].[W_produkty].[data_modyfikacji] (SqlSimpleColumn) will not be renamed to zrodlo_data_modyfikacji';


GO
PRINT N'Rename refactoring operation with key d9867b93-7e9d-407b-a3cc-cb2345511da1 is skipped, element [dbo].[W_ankiety].[Id] (SqlSimpleColumn) will not be renamed to id';


GO
PRINT N'Rename refactoring operation with key 294a47e5-c611-4fe3-8c0e-e75c66bb6aa5 is skipped, element [dbo].[W_ankiety].[data_wprowadzenia] (SqlSimpleColumn) will not be renamed to zrodlo_data_wprowadzenia';


GO
PRINT N'Rename refactoring operation with key ba3f4eeb-2332-4be1-9357-b59b87b0162a is skipped, element [dbo].[W_ankiety].[data_modyfikacji] (SqlSimpleColumn) will not be renamed to zrodlo_data_modyfikacji';


GO
PRINT N'Rename refactoring operation with key 280c0ad8-aa5b-4633-b67e-ad8c445a155e is skipped, element [dbo].[W_daty].[Id] (SqlSimpleColumn) will not be renamed to id';


GO
PRINT N'Rename refactoring operation with key 6727de5d-4835-4c42-a35d-b73b121a4141 is skipped, element [dbo].[F_wizyty].[data_wizyty] (SqlSimpleColumn) will not be renamed to data_wizyty_id';


GO
PRINT N'Creating [dbo].[F_wizyty]...';


GO
CREATE TABLE [dbo].[F_wizyty] (
    [id]                       INT           NOT NULL,
    [zrodlo_id]                INT           NOT NULL,
    [pracownik_id]             INT           NOT NULL,
    [produkt_id]               INT           NOT NULL,
    [lokalizacja_id]           INT           NOT NULL,
    [pytanie_id]               INT           NOT NULL,
    [odpowiedz]                VARCHAR (MAX) NULL,
    [odpowiedz_liczba]         BIGINT        NULL,
    [data_wizyty_id]           INT           NOT NULL,
    [czas_rozpoczecia_wizyty]  DATETIME      NULL,
    [czas_zakonczenia_wizyty]  DATETIME      NULL,
    [zrodlo_data_wprowadzenia] DATETIME      NULL,
    [zrodlo_data_modyfikacji]  DATETIME      NULL,
    [data_wprowadzenia]        DATETIME      NOT NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
PRINT N'Creating [dbo].[W_ankiety]...';


GO
CREATE TABLE [dbo].[W_ankiety] (
    [id]                           INT             NOT NULL,
    [zrodlo_id]                    INT             NOT NULL,
    [nazwa_ankiety]                NVARCHAR (255)  NULL,
    [rodzaj_ankiety]               NVARCHAR (255)  NULL,
    [data_utworzenia_ankiety]      DATETIME        NULL,
    [kategoria_pytania]            NVARCHAR (500)  NULL,
    [numer_pytania]                INT             NULL,
    [pytanie]                      NVARCHAR (1000) NULL,
    [typ_odpowiedzi]               NVARCHAR (255)  NULL,
    [dostepne_warianty_odpowiedzi] NVARCHAR (500)  NULL,
    [dodatkowe_oznaczenie_pytania] NVARCHAR (500)  NULL,
    [zrodlo_data_wprowadzenia]     DATETIME        NULL,
    [zrodlo_data_modyfikacji]      DATETIME        NULL,
    [obowiazuje_od]                DATETIME        NOT NULL,
    [obowiazuje_do]                DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
PRINT N'Creating [dbo].[W_daty]...';


GO
CREATE TABLE [dbo].[W_daty] (
    [id]                      INT            NOT NULL,
    [kwartal]                 INT            NULL,
    [miesiac]                 INT            NULL,
    [tydzien]                 INT            NULL,
    [dzien]                   INT            NULL,
    [dzien_tygodnia]          INT            NULL,
    [kwartal_etykieta]        NVARCHAR (100) NULL,
    [miesiac_etykieta]        NVARCHAR (100) NULL,
    [tydzien_etykieta]        NVARCHAR (100) NULL,
    [dzien_etykieta]          NVARCHAR (100) NULL,
    [dzien_tygodnia_etykieta] NVARCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
PRINT N'Creating [dbo].[W_lokalizacje]...';


GO
CREATE TABLE [dbo].[W_lokalizacje] (
    [id]                       INT             NOT NULL,
    [zrodlo_id]                INT             NOT NULL,
    [wojewodztwo]              NVARCHAR (500)  NULL,
    [powiat]                   NVARCHAR (500)  NULL,
    [gmina]                    NVARCHAR (500)  NULL,
    [miasto]                   NVARCHAR (500)  NULL,
    [kod_pocztowy]             NVARCHAR (255)  NULL,
    [ulica]                    NVARCHAR (500)  NULL,
    [numer_budynku]            NVARCHAR (255)  NULL,
    [szerokosc_geograficzna]   FLOAT (53)      NULL,
    [dlugosc_geograficzna]     FLOAT (53)      NULL,
    [siec]                     NVARCHAR (1000) NULL,
    [nazwa_skrocona]           NVARCHAR (1000) NULL,
    [nazwa_pelna]              NVARCHAR (1000) NULL,
    [nip]                      BIGINT          NULL,
    [opiekun_imie_nazwisko]    NVARCHAR (500)  NULL,
    [opiekun_email]            NVARCHAR (500)  NULL,
    [opiekun_nr_telefonu]      INT             NULL,
    [zrodlo_data_wprowadzenia] DATETIME        NULL,
    [zrodlo_data_modyfikacji]  DATETIME        NULL,
    [obowiazuje_od]            DATETIME        NOT NULL,
    [obowiazuje_do]            DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
PRINT N'Creating [dbo].[W_pracownicy]...';


GO
CREATE TABLE [dbo].[W_pracownicy] (
    [id]                       INT            NOT NULL,
    [zrodlo_id]                INT            NOT NULL,
    [aktywny]                  NVARCHAR (500) NULL,
    [plec]                     NVARCHAR (500) NULL,
    [imie]                     NVARCHAR (500) NULL,
    [nazwisko]                 NVARCHAR (500) NULL,
    [pesel]                    BIGINT         NULL,
    [email_prywatny]           NVARCHAR (500) NULL,
    [email_sluzbowy]           NVARCHAR (500) NULL,
    [numer_telefonu_prywatny]  INT            NULL,
    [numer_telefonu_sluzbowy]  INT            NULL,
    [telefon_sluzbowy]         INT            NULL,
    [samochod_sluzbowy]        INT            NULL,
    [zrodlo_data_wprowadzenia] DATETIME       NULL,
    [zrodlo_data_modyfikacji]  DATETIME       NULL,
    [obowiazuje_od]            DATETIME       NOT NULL,
    [obowiazuje_do]            DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([id] ASC)
);


GO
PRINT N'Creating [dbo].[W_produkty]...';


GO
CREATE TABLE [dbo].[W_produkty] (
    [Id]                       INT             NOT NULL,
    [zrodlo_id]                INT             NOT NULL,
    [producent]                NVARCHAR (500)  NOT NULL,
    [kategoria]                NVARCHAR (500)  NULL,
    [podkategoria]             NVARCHAR (500)  NULL,
    [nazwa]                    NVARCHAR (1000) NULL,
    [rodzaj_opakowania]        NVARCHAR (255)  NULL,
    [pojemnosc_jednej_sztuki]  FLOAT (53)      NULL,
    [ilosc_sztuk_w_opakowaniu] FLOAT (53)      NULL,
    [jednostka]                NVARCHAR (255)  NULL,
    [opis_dodatkowy]           NVARCHAR (4000) NULL,
    [kod_kreskowy]             BIGINT          NULL,
    [zdjecie_link]             NVARCHAR (1000) NULL,
    [zrodlo_data_wprowadzenia] DATETIME        NULL,
    [zrodlo_data_modyfikacji]  DATETIME        NULL,
    [obowiazuje_od]            DATETIME        NOT NULL,
    [obowiazuje_do]            DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
PRINT N'Creating [dbo].[FK_F_wizyty_W_lokalizacje]...';


GO
ALTER TABLE [dbo].[F_wizyty] WITH NOCHECK
    ADD CONSTRAINT [FK_F_wizyty_W_lokalizacje] FOREIGN KEY ([lokalizacja_id]) REFERENCES [dbo].[W_lokalizacje] ([id]);


GO
PRINT N'Creating [dbo].[FK_F_wizyty_W_pracownicy]...';


GO
ALTER TABLE [dbo].[F_wizyty] WITH NOCHECK
    ADD CONSTRAINT [FK_F_wizyty_W_pracownicy] FOREIGN KEY ([pracownik_id]) REFERENCES [dbo].[W_pracownicy] ([id]);


GO
PRINT N'Creating [dbo].[FK_F_wizyty_W_produkty]...';


GO
ALTER TABLE [dbo].[F_wizyty] WITH NOCHECK
    ADD CONSTRAINT [FK_F_wizyty_W_produkty] FOREIGN KEY ([produkt_id]) REFERENCES [dbo].[W_pracownicy] ([id]);


GO
PRINT N'Creating [dbo].[FK_F_wizyty_W_ankiety]...';


GO
ALTER TABLE [dbo].[F_wizyty] WITH NOCHECK
    ADD CONSTRAINT [FK_F_wizyty_W_ankiety] FOREIGN KEY ([pytanie_id]) REFERENCES [dbo].[W_ankiety] ([id]);


GO
PRINT N'Creating [dbo].[FK_F_wizyty_W_daty]...';


GO
ALTER TABLE [dbo].[F_wizyty] WITH NOCHECK
    ADD CONSTRAINT [FK_F_wizyty_W_daty] FOREIGN KEY ([data_wizyty_id]) REFERENCES [dbo].[W_daty] ([id]);


GO
-- Refactoring step to update target server with deployed transaction logs

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ba0a1a3f-10e4-4e21-8374-4e92fede693a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ba0a1a3f-10e4-4e21-8374-4e92fede693a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '473874b1-3b0e-4561-a50e-706c4578b66c')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('473874b1-3b0e-4561-a50e-706c4578b66c')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6d9a2e77-4957-47f6-9b0c-49cd9b7dd63e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6d9a2e77-4957-47f6-9b0c-49cd9b7dd63e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '12526708-1017-4301-9372-72573a57fbac')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('12526708-1017-4301-9372-72573a57fbac')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f3d32dbf-548f-492c-9338-0c2e954916f6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f3d32dbf-548f-492c-9338-0c2e954916f6')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9bcb0fae-47ec-462d-9514-5564a0d9a5c3')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9bcb0fae-47ec-462d-9514-5564a0d9a5c3')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b770009e-3bae-4e60-a935-871e723f9aa0')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b770009e-3bae-4e60-a935-871e723f9aa0')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a0e32827-ada7-4f5f-93b7-a0c76ddb218c')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a0e32827-ada7-4f5f-93b7-a0c76ddb218c')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9f3ed5e9-f998-4c8a-ba8c-96baf08c8339')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9f3ed5e9-f998-4c8a-ba8c-96baf08c8339')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'cac9e2a5-4510-4297-b609-3d2b7c7e0da6')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('cac9e2a5-4510-4297-b609-3d2b7c7e0da6')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ee85438f-7680-485e-a04c-c1738de5d891')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ee85438f-7680-485e-a04c-c1738de5d891')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'b947caf1-856c-4929-a399-5ed621c18f16')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('b947caf1-856c-4929-a399-5ed621c18f16')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '27326e66-3946-4ecb-9140-bdcaa7e887db')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('27326e66-3946-4ecb-9140-bdcaa7e887db')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '7529ce4c-487c-4b28-8233-8f3677480c2e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('7529ce4c-487c-4b28-8233-8f3677480c2e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '91ee2b40-c4bc-4231-b4e1-a13e9998a35f')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('91ee2b40-c4bc-4231-b4e1-a13e9998a35f')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f854ba9b-4a64-4e8b-aee3-887cf4fbd687')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f854ba9b-4a64-4e8b-aee3-887cf4fbd687')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f3d5cb5c-9e6b-437b-93d4-81ad7000249b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f3d5cb5c-9e6b-437b-93d4-81ad7000249b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '1eebc26b-1d51-44ca-bc8b-ef97a173a6fa')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('1eebc26b-1d51-44ca-bc8b-ef97a173a6fa')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'f5d1fc99-bebe-4a46-9567-978b548ccb62')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('f5d1fc99-bebe-4a46-9567-978b548ccb62')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd9867b93-7e9d-407b-a3cc-cb2345511da1')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d9867b93-7e9d-407b-a3cc-cb2345511da1')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '294a47e5-c611-4fe3-8c0e-e75c66bb6aa5')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('294a47e5-c611-4fe3-8c0e-e75c66bb6aa5')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'ba3f4eeb-2332-4be1-9357-b59b87b0162a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('ba3f4eeb-2332-4be1-9357-b59b87b0162a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '280c0ad8-aa5b-4633-b67e-ad8c445a155e')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('280c0ad8-aa5b-4633-b67e-ad8c445a155e')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '6727de5d-4835-4c42-a35d-b73b121a4141')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('6727de5d-4835-4c42-a35d-b73b121a4141')

GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[F_wizyty] WITH CHECK CHECK CONSTRAINT [FK_F_wizyty_W_lokalizacje];

ALTER TABLE [dbo].[F_wizyty] WITH CHECK CHECK CONSTRAINT [FK_F_wizyty_W_pracownicy];

ALTER TABLE [dbo].[F_wizyty] WITH CHECK CHECK CONSTRAINT [FK_F_wizyty_W_produkty];

ALTER TABLE [dbo].[F_wizyty] WITH CHECK CHECK CONSTRAINT [FK_F_wizyty_W_ankiety];

ALTER TABLE [dbo].[F_wizyty] WITH CHECK CHECK CONSTRAINT [FK_F_wizyty_W_daty];


GO
PRINT N'Update complete.';


GO