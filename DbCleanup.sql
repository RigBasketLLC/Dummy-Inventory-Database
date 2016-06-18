USE TestDb
GO

SELECT * FROM [dbo].['02 Aug 13$']
ORDER BY [No.] 

-- Delete acid information rows
ALTER TABLE [dbo].['02 Aug 13$']
DROP COLUMN [F18],[F19],[F20],[F21],[F22],[F23],[F24],[F25]

-- Delete rows between balance and location
ALTER TABLE [dbo].['02 Aug 13$']
DROP COLUMN [F9],[F10],[F11],[F12],[F13],[F14],[F15],[F16]

-- Delete All rows that do not have an ID number
DELETE FROM [dbo].['02 Aug 13$']
WHERE [No.] IS NULL

-- Add columns for date loaded
ALTER TABLE [dbo].['02 Aug 13$']
ADD DateLoadedUz361 date

ALTER TABLE [dbo].['02 Aug 13$']
ADD DateLoadedUz061 date

--Add date to table 
UPDATE [dbo].['02 Aug 13$']
SET [DateLoadedUz361] = '08-04-2013'
WHERE [DateLoadedUz361] IS NULL;

UPDATE [dbo].['02 Aug 13$']
SET [DateLoadedUz061] = '08-12-2013'
WHERE [DateLoadedUz061] IS NULL;

-- Replace NULL with 0
SELECT 
[No.],
[ChemId],
[Unit], 
ISNULL(LoadAmount,0) AS 'LoadAmount',
[PrevBalance],
[NewTotal], 
ISNULL(Uz361,0) AS 'Uz361', 
ISNULL(Uz061,0) AS 'Uz061',
FROM [dbo].['02 Aug 13$'];


