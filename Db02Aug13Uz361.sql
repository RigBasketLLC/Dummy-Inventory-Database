USE TestDb
GO

SELECT * FROM [dbo].['02 Aug 13$']

-- Create new table for Location Uz361

SELECT ChemId, Uz361, DateLoadedUz361 
INTO [dbo].[Aug 2nd Uz361]
FROM [dbo].['02 Aug 13$']

SELECT * FROM [dbo].[Aug 2nd Uz361]
/*WHERE Uz361 IS NOT NULL*/

-- Create new rows in table

ALTER TABLE [dbo].[Aug 2nd Uz361]
ADD LocationUsed nvarchar(8)

-- Add Location Uz361 to each row with non zero Uz361 quantity

UPDATE [dbo].[Aug 2nd Uz361] 
SET [LocationUsed] = 'UZ361'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Aug 2nd Uz361]
WHERE Uz361 IS NULL 

-- ADD Balance Column to the table

ALTER TABLE [dbo].[Aug 2nd Uz361]
DROP COLUMN Balance 


