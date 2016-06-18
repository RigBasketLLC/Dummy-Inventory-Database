USE TestDb
GO

SELECT * FROM [dbo].['15 Aug 13 $']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['15 Aug 13 $']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['15 Aug 13 $']
DROP COLUMN [F7],[F8],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['15 Aug 13 $']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['15 Aug 13 $']
ADD DateLoadedUZ060 date

ALTER TABLE [dbo].['15 Aug 13 $']
ADD DateLoadedUZ274 date

ALTER TABLE [dbo].['15 Aug 13 $']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['15 Aug 13 $']
SET [DateLoadedUZ060] = '08-18-2013'
WHERE [DateLoadedUZ060] IS NULL;

UPDATE [dbo].['15 Aug 13 $']
SET [DateLoadedUZ274] = '08-21-2013'
WHERE [DateLoadedUZ274] IS NULL;

UPDATE [dbo].['15 Aug 13 $']
SET [DateLoadedVessel] = '08-11-2013'
WHERE [DateLoadedVessel] = '1900-01-01';