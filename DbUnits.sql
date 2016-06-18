USE TestDb 
GO

SELECT ChemId, Unit 
INTO [dbo].[Units]
FROM [dbo].['02 Aug 13$']

SELECT DISTINCT * FROM [dbo].[Units]
ORDER BY ChemId

 
INSERT INTO [dbo].[Units] 
SELECT ChemId, Unit FROM [dbo].['03 Nov 12$']

INSERT INTO [dbo].[Units]
SELECT ChemId, Unit FROM [dbo].['06 April 13 $']
UNION
SELECT ChemId, Unit FROM [dbo].['08 Jul 13$']
UNION
SELECT ChemId, Unit FROM [dbo].['1 jan 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['12 Jan 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['14 Jul 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['15 Apr 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['15 Aug 13 $']
UNION
SELECT ChemId, Unit FROM [dbo].['16 Nov 12$']
UNION 
SELECT ChemId, Unit FROM [dbo].['17 Jul 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['18 Oct 2012$']
UNION 
SELECT ChemId, Unit FROM [dbo].['19 Dec 12$']
UNION 
SELECT ChemId, Unit FROM [dbo].['2 Sept 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['22 Apr 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['22 Jan 13$']
UNION 
SELECT ChemId, Unit FROM [dbo].['28 Nov 12$']
ORDER BY ChemId
GO

SELECT COUNT(DISTINCT ChemId) AS NumberofChemicals, Unit FROM [dbo].[Units]
GROUP BY Unit