USE DummyInventory
GO

-- Display the units table
SELECT DISTINCT * FROM [dbo].[Location]

-- Count total number of chemicals
SELECT * FROM [dbo].[Units] 

-- Display vessel loading table for verification
SELECT * FROM [dbo].[VesselLoading]


--- Updating tables to change chemical names

UPDATE [dbo].[Location]
SET ChemId  = 'Chem3'
WHERE ChemId ='A153'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem7'
WHERE ChemId ='A201'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem4'
WHERE ChemId ='A262'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem5'
WHERE ChemId ='A264'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem6'
WHERE ChemId ='A270'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem7'
WHERE ChemId ='B018'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem8'
WHERE ChemId ='D047'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem9'
WHERE ChemId ='D075'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem10'
WHERE ChemId ='D080'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem11'
WHERE ChemId ='D081'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem12'
WHERE ChemId ='D095'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem13'
WHERE ChemId ='D110'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem14'
WHERE ChemId ='D167'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem15'
WHERE ChemId ='D168'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem16'
WHERE ChemId ='D182'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem17'
WHERE ChemId ='D198'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem18'
WHERE ChemId ='EC9610A'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem19'
WHERE ChemId ='F103'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem20'
WHERE ChemId ='F110'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem21'
WHERE ChemId ='FX 2014'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem22'
WHERE ChemId ='G CEMENT'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem23'
WHERE ChemId ='H032'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem24'
WHERE ChemId ='H035'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem25'
WHERE ChemId ='J507'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem26'
WHERE ChemId ='J557'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem27'
WHERE ChemId ='J589'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem28'
WHERE ChemId ='K046'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem29'
WHERE ChemId ='L058'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem30'
WHERE ChemId ='L066'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem31'
WHERE ChemId ='L400'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem32'
WHERE ChemId ='LN2'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem33'
WHERE ChemId ='M003'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem34'
WHERE ChemId ='MaxC03'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem35'
WHERE ChemId ='P130'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem36'
WHERE ChemId ='U051'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem37'
WHERE ChemId ='U066'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem38'
WHERE ChemId ='U108'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem39'
WHERE ChemId ='W053'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem40'
WHERE ChemId ='W054'

UPDATE [dbo].[Location]
SET ChemId  = 'Chem41'
WHERE ChemId ='XC 27055'

-- Update units table

UPDATE [dbo].[Units]
SET ChemId  = 'Chem3'
WHERE ChemId ='A153'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem7'
WHERE ChemId ='A201'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem4'
WHERE ChemId ='A262'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem5'
WHERE ChemId ='A264'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem6'
WHERE ChemId ='A270'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem7'
WHERE ChemId ='B018'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem8'
WHERE ChemId ='D047'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem9'
WHERE ChemId ='D075'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem10'
WHERE ChemId ='D080'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem11'
WHERE ChemId ='D081'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem12'
WHERE ChemId ='D095'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem13'
WHERE ChemId ='D110'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem14'
WHERE ChemId ='D167'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem15'
WHERE ChemId ='D168'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem16'
WHERE ChemId ='D182'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem17'
WHERE ChemId ='D198'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem18'
WHERE ChemId ='EC9610A'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem19'
WHERE ChemId ='F103'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem20'
WHERE ChemId ='F110'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem21'
WHERE ChemId ='FX 2014'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem22'
WHERE ChemId ='G CEMENT'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem23'
WHERE ChemId ='H032'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem24'
WHERE ChemId ='H035'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem25'
WHERE ChemId ='J507'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem26'
WHERE ChemId ='J557'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem27'
WHERE ChemId ='J589'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem28'
WHERE ChemId ='K046'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem29'
WHERE ChemId ='L058'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem30'
WHERE ChemId ='L066'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem31'
WHERE ChemId ='L400'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem32'
WHERE ChemId ='LN2'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem33'
WHERE ChemId ='M003'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem34'
WHERE ChemId ='MaxC03'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem35'
WHERE ChemId ='P130'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem36'
WHERE ChemId ='U051'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem37'
WHERE ChemId ='U066'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem38'
WHERE ChemId ='U108'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem39'
WHERE ChemId ='W053'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem40'
WHERE ChemId ='W054'

UPDATE [dbo].[Units]
SET ChemId  = 'Chem41'
WHERE ChemId ='XC 27055'

-- Update Vessel Loading table

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem3'
WHERE ChemId ='A153'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem7'
WHERE ChemId ='A201'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem4'
WHERE ChemId ='A262'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem5'
WHERE ChemId ='A264'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem6'
WHERE ChemId ='A270'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem7'
WHERE ChemId ='B018'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem8'
WHERE ChemId ='D047'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem9'
WHERE ChemId ='D075'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem10'
WHERE ChemId ='D080'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem11'
WHERE ChemId ='D081'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem12'
WHERE ChemId ='D095'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem13'
WHERE ChemId ='D110'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem14'
WHERE ChemId ='D167'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem15'
WHERE ChemId ='D168'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem16'
WHERE ChemId ='D182'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem17'
WHERE ChemId ='D198'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem18'
WHERE ChemId ='EC9610A'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem19'
WHERE ChemId ='F103'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem20'
WHERE ChemId ='F110'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem21'
WHERE ChemId ='FX 2014'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem22'
WHERE ChemId ='G CEMENT'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem23'
WHERE ChemId ='H032'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem24'
WHERE ChemId ='H035'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem25'
WHERE ChemId ='J507'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem26'
WHERE ChemId ='J557'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem27'
WHERE ChemId ='J589'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem28'
WHERE ChemId ='K046'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem29'
WHERE ChemId ='L058'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem30'
WHERE ChemId ='L066'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem31'
WHERE ChemId ='L400'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem32'
WHERE ChemId ='LN2'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem33'
WHERE ChemId ='M003'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem34'
WHERE ChemId ='MaxC03'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem35'
WHERE ChemId ='P130'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem36'
WHERE ChemId ='U051'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem37'
WHERE ChemId ='U066'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem38'
WHERE ChemId ='U108'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem39'
WHERE ChemId ='W053'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem40'
WHERE ChemId ='W054'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem41'
WHERE ChemId ='XC 27055'

UPDATE [dbo].[VesselLoading]
SET ChemId  = 'Chem42'
WHERE ChemId ='J590'