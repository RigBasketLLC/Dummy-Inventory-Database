USE TestDb
GO

-- Create new table with information from all tables 


--- Consolidate all tables into one
SELECT * FROM [dbo].['06 April 13 $']

FULL OUTER JOIN [dbo].['03 Nov 12$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['03 Nov 12$'].[ChemId]

FULL OUTER JOIN [dbo].['08 Jul 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['08 Jul 13$'].[ChemId]

FULL OUTER JOIN [dbo].['1 jan 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['1 jan 13$'].[ChemId]

FULL OUTER JOIN [dbo].['12 Jan 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['12 Jan 13$'].[ChemId]

FULL OUTER JOIN [dbo].['14 Jul 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['14 Jul 13$'].[ChemId]

FULL OUTER JOIN [dbo].['15 Apr 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['15 Apr 13$'].[ChemId]

FULL OUTER JOIN [dbo].['15 Aug 13 $'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['15 Aug 13 $'].[ChemId]

FULL OUTER JOIN [dbo].['16 Nov 12$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['16 Nov 12$'].[ChemId]

FULL OUTER JOIN [dbo].['17 Jul 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['17 Jul 13$'].[ChemId]

FULL OUTER JOIN [dbo].['18 Oct 2012$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['18 Oct 2012$'].[ChemId]

FULL OUTER JOIN [dbo].['19 Dec 12$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['19 Dec 12$'].[ChemId]

FULL OUTER JOIN [dbo].['2 Sept 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['2 Sept 13$'].[ChemId]

FULL OUTER JOIN [dbo].['22 Apr 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['22 Apr 13$'].[ChemId]

FULL OUTER JOIN [dbo].['22 Jan 13$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['22 Jan 13$'].[ChemId]

FULL OUTER JOIN [dbo].['28 Nov 12$'] ON [dbo].['06 April 13 $'].[ChemId] = [dbo].['28 Nov 12$'].[ChemId]