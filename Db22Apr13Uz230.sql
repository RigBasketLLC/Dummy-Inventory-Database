USE TestDb
GO

SELECT * FROM [dbo].['22 Apr 13$']

-- Create new table for Location 

SELECT ChemId, UZ230 AS AmountLoaded, DateLoadedUZ230 AS DateLoaded
INTO [dbo].[Apr 22nd UZ230]
FROM [dbo].['22 Apr 13$']

SELECT * FROM [dbo].[Apr 22nd UZ230]

-- Create new row in table

ALTER TABLE [dbo].[Apr 22nd UZ230]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Apr 22nd UZ230] 
SET [LocationUsed] = 'UZ230'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Apr 22nd UZ230]
WHERE AmountLoaded IS NULL