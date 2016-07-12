USE TestDb
GO

SELECT * FROM [dbo].['16 Nov 12$']

-- Create new table for Location 

SELECT ChemId, UZ39 AS AmountLoaded, DateLoadedUZ39 AS DateLoaded
INTO [dbo].[Nov 16th UZ39]
FROM [dbo].['16 Nov 12$']

SELECT * FROM [dbo].[Nov 16th UZ39]

-- Create new row in table

ALTER TABLE [dbo].[Nov 16th UZ39]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Nov 16th UZ39] 
SET [LocationUsed] = 'UZ39'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Nov 16th UZ39]
WHERE AmountLoaded IS NULL 