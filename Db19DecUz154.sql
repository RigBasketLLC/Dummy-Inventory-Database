USE TestDb
GO

SELECT * FROM [dbo].['19 Dec 12$']

-- Create new table for Location 

SELECT ChemId, UZ154 AS AmountLoaded, DateLoadedUZ154 AS DateLoaded
INTO [dbo].[Dec 19th UZ154]
FROM [dbo].['19 Dec 12$']

SELECT * FROM [dbo].[Dec 19th UZ154]

-- Create new row in table

ALTER TABLE [dbo].[Dec 19th UZ154]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Dec 19th UZ154] 
SET [LocationUsed] = 'UZ154'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Dec 19th UZ154]
WHERE AmountLoaded IS NULL