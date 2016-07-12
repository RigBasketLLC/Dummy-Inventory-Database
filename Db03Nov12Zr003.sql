USE TestDb
GO

SELECT * FROM [dbo].['03 Nov 12$']

-- Create new table for Location ZR003

SELECT ChemId, ZR003 AS AmountLoaded, DateLoadedZR003 
INTO [dbo].[Nov 3rd Zr003]
FROM [dbo].['03 Nov 12$']

SELECT * FROM [dbo].[Nov 3rd Zr003]

-- Create new row in table

ALTER TABLE [dbo].[Nov 3rd Zr003]
ADD LocationUsed nvarchar(8)

-- Add Location Uz061 to each row with non zero Uz361 quantity

UPDATE [dbo].[Nov 3rd Zr003] 
SET [LocationUsed] = 'ZR003'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Nov 3rd Zr003]
WHERE AmountLoaded IS NULL 