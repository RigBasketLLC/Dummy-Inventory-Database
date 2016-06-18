USE TestDb
GO

SELECT * FROM [dbo].['10 Dec 12$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['10 Dec 12$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['10 Dec 12$']
DROP COLUMN [F8],[F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['10 Dec 12$']
WHERE [No.] IS NULL

-- Alter LoadAmount data type from datetime to float
ALTER TABLE [dbo].['10 Dec 12$']
ALTER COLUMN [LoadAmount] int

-- Add columns for date loaded
ALTER TABLE [dbo].['10 Dec 12$']
ADD DateLoadedU159 date

ALTER TABLE [dbo].['10 Dec 12$']
ADD DateLoadedVessel date

--Add date to table 
UPDATE [dbo].['10 Dec 12$']
SET [DateLoadedU159] = '12-18-2012'
WHERE [DateLoadedU159] IS NULL;


UPDATE [dbo].['10 Dec 12$']
SET [DateLoadedVessel] = '12-10-2012'
WHERE [DateLoadedVessel] IS NULL;