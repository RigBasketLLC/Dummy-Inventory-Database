USE TestDb
GO

SELECT * FROM [dbo].['1 jan 13$']

-- Create new table for Location 

SELECT ChemId, UZ94 AS AmountLoaded, DateLoadedUZ94 AS DateLoaded
INTO [dbo].[Jan 1st UZ94]
FROM [dbo].['1 jan 13$']

SELECT * FROM [dbo].[Jan 1st UZ94]

-- Create new row in table

ALTER TABLE [dbo].[Jan 1st UZ94]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jan 1st UZ94] 
SET [LocationUsed] = 'UZ94'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jan 1st UZ94]
WHERE AmountLoaded IS NULL 