USE TestDb
GO

SELECT * FROM [dbo].['02 Aug 13$']

-- Create new table for Location Uz361

SELECT ChemId, Uz061, DateLoadedUz361 
INTO [dbo].[Aug 2nd Uz061]
FROM [dbo].['02 Aug 13$']

SELECT * FROM [dbo].[Aug 2nd Uz061]

-- Create new row in table

ALTER TABLE [dbo].[Aug 2nd Uz061]
ADD LocationUsed nvarchar(8)

-- Add Location Uz061 to each row with non zero Uz361 quantity

UPDATE [dbo].[Aug 2nd Uz061] 
SET [LocationUsed] = 'UZ061'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Aug 2nd Uz061]
WHERE Uz061 IS NULL 