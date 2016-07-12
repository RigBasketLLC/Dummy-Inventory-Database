USE TestDb
GO

SELECT * FROM [dbo].['15 Aug 13 $']

-- Create new table for Location 

SELECT ChemId, UZ274 AS AmountLoaded, DateLoadedUZ274 AS DateLoaded
INTO [dbo].[Aug 15th UZ274]
FROM [dbo].['15 Aug 13 $']

SELECT * FROM [dbo].[Aug 15th UZ274]

-- Create new row in table

ALTER TABLE [dbo].[Aug 15th UZ274]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Aug 15th UZ274] 
SET [LocationUsed] = 'UZ274'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Aug 15th UZ274]
WHERE AmountLoaded IS NULL 