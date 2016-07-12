USE TestDb
GO

SELECT * FROM [dbo].['19 Dec 12$']

-- Create new table for Location 

SELECT ChemId, UZ327 AS AmountLoaded, DateLoadedUZ327 AS DateLoaded
INTO [dbo].[Dec 19th UZ327]
FROM [dbo].['19 Dec 12$']

SELECT * FROM [dbo].[Dec 19th UZ327]

-- Create new row in table

ALTER TABLE [dbo].[Dec 19th UZ327]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Dec 19th UZ327] 
SET [LocationUsed] = 'UZ327'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Dec 19th UZ327]
WHERE AmountLoaded IS NULL