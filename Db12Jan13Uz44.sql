USE TestDb
GO

SELECT * FROM [dbo].['12 Jan 13$']

-- Create new table for Location 

SELECT ChemId, UZ44 AS AmountLoaded, DateLoadedUZ44 AS DateLoaded
INTO [dbo].[Jan 12th UZ44]
FROM [dbo].['12 Jan 13$']

SELECT * FROM [dbo].[Jan 12th UZ44]

-- Create new row in table

ALTER TABLE [dbo].[Jan 12th UZ44]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jan 12th UZ44] 
SET [LocationUsed] = 'UZ44'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jan 12th UZ44]
WHERE AmountLoaded IS NULL 