USE TestDb
GO

SELECT * FROM [dbo].['1 jan 13$']

-- Create new table for Location 

SELECT ChemId, UZ476 AS AmountLoaded, DateLoadedUZ476 AS DateLoaded
INTO [dbo].[Jan 1st UZ476]
FROM [dbo].['1 jan 13$']

SELECT * FROM [dbo].[Jan 1st UZ476]

-- Create new row in table

ALTER TABLE [dbo].[Jan 1st UZ476]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jan 1st UZ476] 
SET [LocationUsed] = 'UZ476'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jan 1st UZ476]
WHERE AmountLoaded IS NULL 