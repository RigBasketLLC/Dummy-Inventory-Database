USE TestDb
GO

SELECT * FROM [dbo].['18 Oct 2012$']

-- Create new table for Location 

SELECT ChemId, ZR001 AS AmountLoaded, DateLoadedZR001 AS DateLoaded
INTO [dbo].[Oct 18th ZR001]
FROM [dbo].['18 Oct 2012$']

SELECT * FROM [dbo].[Oct 18th ZR001]

-- Create new row in table

ALTER TABLE [dbo].[Oct 18th ZR001]
ADD LocationUsed nvarchar(8)

-- Add Location to each row with non zero quantity

UPDATE [dbo].[Oct 18th ZR001] 
SET [LocationUsed] = 'ZR001'
WHERE [LocationUsed] IS NULL

-- DROP ALL ROWS WITH NULL

DELETE FROM [dbo].[Oct 18th ZR001]
WHERE AmountLoaded IS NULL

-- DROP ALL ROWS WITH 0 AMOUNT LOADED

DELETE FROM [dbo].[Jul 17th UZ11]
WHERE AmountLoaded = 0