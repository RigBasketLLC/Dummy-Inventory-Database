USE TestDb
GO

SELECT * FROM [dbo].['12 Jan 13$']

-- Create new table for Location 

SELECT ChemId, UZ226 AS AmountLoaded, DateLoadedUZ226 AS DateLoaded
INTO [dbo].[Jan 12th UZ226]
FROM [dbo].['12 Jan 13$']

SELECT * FROM [dbo].[Jan 12th UZ226]

-- Create new row in table

ALTER TABLE [dbo].[Jan 12th UZ226]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jan 12th UZ226] 
SET [LocationUsed] = 'UZ226'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jan 12th UZ226]
WHERE AmountLoaded IS NULL 