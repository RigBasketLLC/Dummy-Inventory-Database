USE TestDb
GO

SELECT * FROM [dbo].['18 Oct 2012$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['18 Oct 2012$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['18 Oct 2012$']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['18 Oct 2012$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['18 Oct 2012$']
ADD DateLoadedZR001 date

ALTER TABLE [dbo].['18 Oct 2012$']
ADD DateLoadedZR002 date

ALTER TABLE [dbo].['18 Oct 2012$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['18 Oct 2012$']
SET [DateLoadedZR001] = '10-28-2012'
WHERE [DateLoadedZR001] IS NULL;

UPDATE [dbo].['18 Oct 2012$']
SET [DateLoadedZR002] = '11-02-2012'
WHERE [DateLoadedZR002] IS NULL;

UPDATE [dbo].['18 Oct 2012$']
SET [DateLoadedVessel] = '10-18-2012'
WHERE [DateLoadedVessel] IS NULL;