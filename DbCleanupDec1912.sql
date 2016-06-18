USE TestDb
GO

SELECT * FROM [dbo].['19 Dec 12$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['19 Dec 12$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['19 Dec 12$']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['19 Dec 12$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['19 Dec 12$']
ADD DateLoadedUZ327 date

ALTER TABLE [dbo].['19 Dec 12$']
ADD DateLoadedUZ154 date

ALTER TABLE [dbo].['19 Dec 12$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['19 Dec 12$']
SET [DateLoadedUZ327] = '12-23-2012'
WHERE [DateLoadedUZ327] IS NULL;

UPDATE [dbo].['19 Dec 12$']
SET [DateLoadedUZ154] = '12-30-2012'
WHERE [DateLoadedUZ154] IS NULL;

UPDATE [dbo].['19 Dec 12$']
SET [DateLoadedVessel] = '12-19-2012'
WHERE [DateLoadedVessel] IS NULL;