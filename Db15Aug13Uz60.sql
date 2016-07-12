USE TestDb
GO

SELECT * FROM [dbo].['15 Aug 13 $']

-- Create new table for Location 

SELECT ChemId, UZ060 AS AmountLoaded, DateLoadedUZ060 AS DateLoaded
INTO [dbo].[Aug 15th UZ60]
FROM [dbo].['15 Aug 13 $']

SELECT * FROM [dbo].[Aug 15th UZ60]

-- Create new row in table

ALTER TABLE [dbo].[Aug 15th UZ60]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Aug 15th UZ60] 
SET [LocationUsed] = 'UZ60'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Aug 15th UZ60]
WHERE AmountLoaded IS NULL 