USE TestDb
GO

SELECT * FROM [dbo].['2 Sept 13$']

-- Create new table for Location 

SELECT ChemId, UZ118 AS AmountLoaded, DateLoadedUZ118 AS DateLoaded
INTO [dbo].[Sept 2nd UZ118]
FROM [dbo].['2 Sept 13$']

SELECT * FROM [dbo].[Sept 2nd UZ118]

-- Create new row in table

ALTER TABLE [dbo].[Sept 2nd UZ118]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Sept 2nd UZ118] 
SET [LocationUsed] = 'UZ118'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Sept 2nd UZ118]
WHERE AmountLoaded IS NULL