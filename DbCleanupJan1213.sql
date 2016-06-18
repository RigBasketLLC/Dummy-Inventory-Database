USE TestDb
GO

SELECT * FROM [dbo].['12 Jan 13$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['12 Jan 13$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['12 Jan 13$']
DROP COLUMN [F7],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['12 Jan 13$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['12 Jan 13$']
ADD DateLoadedUZ44 date

ALTER TABLE [dbo].['12 Jan 13$']
ADD DateLoadedUZ229 date

ALTER TABLE [dbo].['12 Jan 13$']
ADD DateLoadedUZ226 date

ALTER TABLE [dbo].['12 Jan 13$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['12 Jan 13$']
SET [DateLoadedUZ44] = '01-18-2013'
WHERE [DateLoadedUZ44] IS NULL;

UPDATE [dbo].['12 Jan 13$']
SET [DateLoadedUZ229] = '01-19-2013'
WHERE [DateLoadedUZ229] IS NULL;

UPDATE [dbo].['12 Jan 13$']
SET [DateLoadedUZ226] = '01-20-2013'
WHERE [DateLoadedUZ226] IS NULL;

UPDATE [dbo].['12 Jan 13$']
SET [DateLoadedVessel] = '01-12-2013'
WHERE [DateLoadedVessel] IS NULL;