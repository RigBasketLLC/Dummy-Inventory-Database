USE TestDb
GO

SELECT * FROM [dbo].['2 Sept 13$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['2 Sept 13$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['2 Sept 13$']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['2 Sept 13$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['2 Sept 13$']
ADD DateLoadedUZ118 date

ALTER TABLE [dbo].['2 Sept 13$']
ADD DateLoadedST015 date

ALTER TABLE [dbo].['2 Sept 13$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['2 Sept 13$']
SET [DateLoadedUZ118] = '09-04-2013'
WHERE [DateLoadedUZ118] IS NULL;

UPDATE [dbo].['2 Sept 13$']
SET [DateLoadedST015] = '09-06-2013'
WHERE [DateLoadedST015] IS NULL;

UPDATE [dbo].['2 Sept 13$']
SET [DateLoadedVessel] = '08-28-2013'
WHERE [DateLoadedVessel] IS NULL;