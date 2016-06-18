USE TestDb	
GO

SELECT DISTINCT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel
INTO [dbo].[VesselLoading]
FROM [dbo].['03 Nov 12$']

SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].[VesselLoading]


INSERT INTO [dbo].[VesselLoading]
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['06 April 13 $']
UNION
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['08 Jul 13$']
UNION
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['1 jan 13$']
UNION 
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['12 Jan 13$']
UNION 
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['14 Jul 13$']
UNION 
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['15 Apr 13$']
UNION 
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['15 Aug 13 $']
UNION
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['16 Nov 12$']
UNION 
SELECT ChemId, LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['17 Jul 13$']
UNION 
SELECT ChemId, LoadedAmount AS LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['18 Oct 2012$']
UNION 
SELECT ChemId, LoadedAmount AS LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['19 Dec 12$']
UNION 
SELECT ChemId, LoadedAmount AS LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['2 Sept 13$']
UNION 
SELECT ChemId, LoadedAmount AS LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['22 Apr 13$']
UNION 
SELECT ChemId, LoadedAmount AS LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['22 Jan 13$']
UNION 
SELECT ChemId, LoadedAmount AS LoadAmount, PrevBalance, NewTotal, DateLoadedVessel AS OffLoadingDate FROM [dbo].['28 Nov 12$']
ORDER BY OffLoadingDate
GO

SELECT * FROM [dbo].[VesselLoading]
WHERE NewTotal <> 0

ORDER BY ChemId