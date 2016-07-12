USE TestDb
GO

SELECT * FROM [dbo].['06 April 13 $']

-- Create new table for Location 

SELECT ChemId, UZ241 AS AmountLoaded, DateLoadedUZ241 AS DateLoaded
INTO [dbo].[Apr 6th UZ241]
FROM [dbo].['06 April 13 $']

SELECT * FROM [dbo].[Apr 6th UZ241]

-- Create new row in table

ALTER TABLE [dbo].[Apr 6th UZ241]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Apr 6th UZ241] 
SET [LocationUsed] = 'UZ241'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Apr 6th UZ241]
WHERE AmountLoaded IS NULL 