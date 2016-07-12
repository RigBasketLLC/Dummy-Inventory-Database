USE TestDb
GO

SELECT * FROM [dbo].['28 Nov 12$']

-- Create new table for Location 

SELECT ChemId, UZ114 AS AmountLoaded, DateLoadedUZ114 AS DateLoaded
INTO [dbo].[Nov 28th UZ114]
FROM [dbo].['28 Nov 12$']

SELECT * FROM [dbo].[Nov 28th UZ114]

-- Create new row in table

ALTER TABLE [dbo].[Nov 28th UZ114]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Nov 28th UZ114] 
SET [LocationUsed] = 'UZ114'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Nov 28th UZ114]
WHERE AmountLoaded IS NULL