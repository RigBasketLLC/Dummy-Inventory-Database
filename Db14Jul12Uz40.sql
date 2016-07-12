USE TestDb
GO

SELECT * FROM [dbo].['14 Jul 13$']

-- Create new table for Location 

SELECT ChemId, UZ40 AS AmountLoaded, DateLoadedUZ40 AS DateLoaded
INTO [dbo].[Jul 14th UZ40]
FROM [dbo].['14 Jul 13$']

SELECT * FROM [dbo].[Jul 14th UZ40]

-- Create new row in table

ALTER TABLE [dbo].[Jul 14th UZ40]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jul 14th UZ40] 
SET [LocationUsed] = 'UZ40'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jul 14th UZ40]
WHERE AmountLoaded IS NULL 