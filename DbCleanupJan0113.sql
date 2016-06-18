USE TestDb
GO

SELECT * FROM [dbo].['1 jan 13$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['1 jan 13$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['1 jan 13$']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['1 jan 13$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['1 jan 13$']
ADD DateLoadedUZ94 date

ALTER TABLE [dbo].['1 jan 13$']
ADD DateLoadedUZ476 date

ALTER TABLE [dbo].['1 jan 13$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['1 jan 13$']
SET [DateLoadedUZ94] = '01-06-2013'
WHERE [DateLoadedUZ94] IS NULL;

UPDATE [dbo].['1 jan 13$']
SET [DateLoadedUZ476] = '01-08-2013'
WHERE [DateLoadedUZ476] IS NULL;

UPDATE [dbo].['1 jan 13$']
SET [DateLoadedVessel] = '01-01-2013'
WHERE [DateLoadedVessel] IS NULL;