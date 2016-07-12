USE TestDb
GO

SELECT * FROM [dbo].['2 Sept 13$']

-- Create new table for Location 

SELECT ChemId, ST015 AS AmountLoaded, DateLoadedST015 AS DateLoaded
INTO [dbo].[Sept 2nd ST015]
FROM [dbo].['2 Sept 13$']

SELECT * FROM [dbo].[Sept 2nd ST015]

-- Create new row in table

ALTER TABLE [dbo].[Sept 2nd ST015]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Sept 2nd ST015] 
SET [LocationUsed] = 'ST015'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Sept 2nd ST015]
WHERE AmountLoaded IS NULL