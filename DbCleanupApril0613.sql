USE TestDb
GO

SELECT * FROM [dbo].['06 April 13 $']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['06 April 13 $']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['06 April 13 $']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['06 April 13 $']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['06 April 13 $']
ADD DateLoadedUZ077 date

ALTER TABLE [dbo].['06 April 13 $']
ADD DateLoadedUZ241 date

ALTER TABLE [dbo].['06 April 13 $']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['06 April 13 $']
SET [DateLoadedUZ077] = '04-11-2013'
WHERE [DateLoadedUZ077] IS NULL;

UPDATE [dbo].['06 April 13 $']
SET [DateLoadedUZ241] = '04-13-2013'
WHERE [DateLoadedUZ241] IS NULL;

UPDATE [dbo].['06 April 13 $']
SET [DateLoadedVessel] = '04-13-2013'
WHERE [DateLoadedVessel] IS NULL;