USE TestDb
GO

SELECT * FROM [dbo].['17 Jul 13$']

-- Create new table for Location 

SELECT ChemId, UZ11 AS AmountLoaded, DateLoadedUZ11 AS DateLoaded
INTO [dbo].[Jul 17th UZ11]
FROM [dbo].['17 Jul 13$']

SELECT * FROM [dbo].[Jul 17th UZ11]

-- Create new row in table

ALTER TABLE [dbo].[Jul 17th UZ11]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jul 17th UZ11] 
SET [LocationUsed] = 'UZ11'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jul 17th UZ11]
WHERE AmountLoaded IS NULL

-- DROP ALL ROWS WITH 0 AMOUNT LOADED

DELETE FROM [dbo].[Jul 17th UZ11]
WHERE AmountLoaded = 0