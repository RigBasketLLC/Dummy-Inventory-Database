USE TestDb
GO

SELECT * FROM [dbo].['08 Jul 13$']

-- Create new table for Location 

SELECT ChemId, UZ348 AS AmountLoaded, DateLoadedUZ348 AS DateLoaded
INTO [dbo].[Jul 8th UZ348]
FROM [dbo].['08 Jul 13$']

SELECT * FROM [dbo].[Jul 8th UZ348]

-- Create new row in table

ALTER TABLE [dbo].[Jul 8th UZ348]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jul 8th UZ348] 
SET [LocationUsed] = 'UZ348'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jul 8th UZ348]
WHERE AmountLoaded IS NULL 