USE TestDb
GO

SELECT * FROM [dbo].['28 Nov 12$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['28 Nov 12$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['28 Nov 12$']
DROP COLUMN [F8],[F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['28 Nov 12$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['28 Nov 12$']
ADD DateLoadedUZ114 date

ALTER TABLE [dbo].['28 Nov 12$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['28 Nov 12$']
SET [DateLoadedUZ114] = '12-09-2012'
WHERE [DateLoadedUZ114] IS NULL;

UPDATE [dbo].['28 Nov 12$']
SET [DateLoadedVessel] = '11-28-2012'
WHERE [DateLoadedVessel] IS NULL;