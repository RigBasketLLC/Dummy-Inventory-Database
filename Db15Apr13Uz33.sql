USE TestDb
GO

SELECT * FROM [dbo].['15 Apr 13$']

-- Create new table for Location 

SELECT ChemId, UZ33 AS AmountLoaded, DateLoadedUZ33 AS DateLoaded
INTO [dbo].[Apr 15th UZ33]
FROM [dbo].['15 Apr 13$']

SELECT * FROM [dbo].[Apr 15th UZ33]

-- Create new row in table

ALTER TABLE [dbo].[Apr 15th UZ33]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Apr 15th UZ33] 
SET [LocationUsed] = 'UZ33'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Apr 15th UZ33]
WHERE AmountLoaded IS NULL 