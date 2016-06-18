USE TestDb
GO

SELECT * FROM [dbo].['22 Apr 13$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['22 Apr 13$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['22 Apr 13$']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['22 Apr 13$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['22 Apr 13$']
ADD DateLoadedUZ230 date

ALTER TABLE [dbo].['22 Apr 13$']
ADD DateOffLoaded date

ALTER TABLE [dbo].['22 Apr 13$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['22 Apr 13$']
SET [DateLoadedUZ230] = '05-05-2013'
WHERE [DateLoadedUZ230] IS NULL;

UPDATE [dbo].['22 Apr 13$']
SET [DateOffLoaded] = '05-07-2013'
WHERE [DateOffLoaded] IS NULL;

UPDATE [dbo].['22 Apr 13$']
SET [DateLoadedVessel] = '04-22-2013'
WHERE [DateLoadedVessel] IS NULL;