USE DummyInventory
GO

-- Verify the number of locations in the location table
SELECT DISTINCT [LocationUsed] FROM [dbo].[Location]

-- Create new table for mapping the locations
SELECT DISTINCT [LocationUsed]
INTO [dbo].[Map] 
FROM [dbo].[Location]

-- Verify the data in the Map table
SELECT * FROM [dbo].[Map]

-- Create columns for latitude and longitude

ALTER TABLE [dbo].[Map]
ADD Latitude Decimal(9,6)
ALTER TABLE [dbo].[Map]
ADD Longitude Decimal(9,6)

--- Adding data for latitude and longitude to locations

UPDATE [dbo].[Map]
SET Latitude  = 24.183333, Longitude = 53.833333
WHERE LocationUsed ='UZ061'
 
UPDATE [dbo].[Map]
SET Latitude  = 24.126192,  Longitude = 55.80394 
WHERE LocationUsed ='UZ077'

UPDATE [dbo].[Map]
SET Latitude  = 24.3780486, Longitude = 54.6785896 
WHERE LocationUsed ='UZ11'

UPDATE [dbo].[Map]
SET Latitude  = 24.4124932, Longitude = 55.1668046
WHERE LocationUsed ='UZ226'

UPDATE [dbo].[Map]
SET Latitude  = 24.5368991, Longitude = 55.4715191
WHERE LocationUsed ='UZ229'

UPDATE [dbo].[Map]
SET Latitude  = 24.80018, Longitude = 56.1111889
WHERE LocationUsed ='UZ241'

UPDATE [dbo].[Map]
SET Latitude  = 24.80018, Longitude = 56.2262999
WHERE LocationUsed ='UZ274'

UPDATE [dbo].[Map]
SET Latitude  = 24.7871266, Longitude = 56.2345531
WHERE LocationUsed ='UZ33'

UPDATE [dbo].[Map]
SET Latitude  = 24.852568, Longitude = 56.3873572
WHERE LocationUsed ='UZ348'

UPDATE [dbo].[Map]
SET Latitude  = 24.7780866, Longitude = 56.2858648
WHERE LocationUsed ='UZ361'

UPDATE [dbo].[Map]
SET Latitude  = 24.776699, Longitude = 56.2665004
WHERE LocationUsed ='UZ39'

UPDATE [dbo].[Map]
SET Latitude  = 25.1437723, Longitude = 56.2918663
WHERE LocationUsed ='UZ40'

UPDATE [dbo].[Map]
SET Latitude  = 25.1833692, Longitude = 56.2158234
WHERE LocationUsed ='UZ44'

UPDATE [dbo].[Map]
SET Latitude  = 25.2000668, Longitude = 56.0149803
WHERE LocationUsed ='UZ476'

UPDATE [dbo].[Map]
SET Latitude  = 25.4032936, Longitude = 56.1382161
WHERE LocationUsed ='UZ60'

UPDATE [dbo].[Map]
SET Latitude  = 25.5351141, Longitude = 56.3050708
WHERE LocationUsed ='UZ94'

-- Use a stored procedure instead of copy pasting
EXEC [dbo].[Procedure] @lat = 25.5799008, 
@long = 56.2515255, 
@loc = 'ZR003'