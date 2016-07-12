USE TestDb
GO

SELECT * FROM [dbo].['06 April 13 $']

-- Create new table for Location ZR003

SELECT ChemId, UZ077 AS AmountLoaded, DateLoadedUZ077 
INTO [dbo].[Apr 6th UZ077]
FROM [dbo].['06 April 13 $']

SELECT * FROM [dbo].[Apr 6th UZ077]

-- Create new row in table

ALTER TABLE [dbo].[Apr 6th UZ077]
ADD LocationUsed nvarchar(8)

-- Add Location Uz077 to each row with non zero Uz361 quantity

UPDATE [dbo].[Apr 6th UZ077] 
SET [LocationUsed] = 'UZ077'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Apr 6th UZ077]
WHERE AmountLoaded IS NULL 