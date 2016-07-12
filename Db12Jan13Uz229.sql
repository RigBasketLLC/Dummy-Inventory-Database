USE TestDb
GO

SELECT * FROM [dbo].['12 Jan 13$']

-- Create new table for Location 

SELECT ChemId, UZ229 AS AmountLoaded, DateLoadedUZ229 AS DateLoaded
INTO [dbo].[Jan 12th UZ229]
FROM [dbo].['12 Jan 13$']

SELECT * FROM [dbo].[Jan 12th UZ229]

-- Create new row in table

ALTER TABLE [dbo].[Jan 12th UZ229]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Jan 12th UZ229] 
SET [LocationUsed] = 'UZ229'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Jan 12th UZ229]
WHERE AmountLoaded IS NULL 