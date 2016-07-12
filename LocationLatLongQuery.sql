USE DummyInventory
GO

-- Create columns for latitude and longitude

ALTER TABLE [dbo].[Location]
ADD Latitude Decimal(9,6)
ALTER TABLE [dbo].[Location]
ADD Longitude Decimal(9,6)

--- Adding data for latitude and longitude to locations

UPDATE [dbo].[Location]
SET Latitude  = 24.183333, Longitude = 53.833333, LocationUsed = 'A'
WHERE LocationUsed ='UZ061'
 
UPDATE [dbo].[Location]
SET Latitude  = 24.126192,  Longitude = 55.80394, LocationUsed = 'B' 
WHERE LocationUsed ='UZ077'

UPDATE [dbo].[Location]
SET Latitude  = 24.3780486, Longitude = 54.6785896, LocationUsed = 'C'
WHERE LocationUsed ='UZ11'

UPDATE [dbo].[Location]
SET Latitude  = 24.4124932, Longitude = 55.1668046, LocationUsed = 'D'
WHERE LocationUsed ='UZ226'

UPDATE [dbo].[Location]
SET Latitude  = 24.5368991, Longitude = 55.4715191, LocationUsed = 'E'
WHERE LocationUsed ='UZ229'

UPDATE [dbo].[Location]
SET Latitude  = 24.80018, Longitude = 56.1111889, LocationUsed ='F'
WHERE LocationUsed ='UZ241'

UPDATE [dbo].[Location]
SET Latitude  = 24.80018, Longitude = 56.2262999, LocationUsed = 'G'
WHERE LocationUsed ='UZ274'

UPDATE [dbo].[Location]
SET Latitude  = 24.7871266, Longitude = 56.2345531, LocationUsed = 'H'
WHERE LocationUsed ='UZ33'

UPDATE [dbo].[Location]
SET Latitude  = 24.852568, Longitude = 56.3873572, LocationUsed = 'I'
WHERE LocationUsed ='UZ348'

UPDATE [dbo].[Location]
SET Latitude  = 24.7780866, Longitude = 56.2858648, LocationUsed = 'J'
WHERE LocationUsed ='UZ361'

UPDATE [dbo].[Location]
SET Latitude  = 24.776699, Longitude = 56.2665004, LocationUsed = 'K'
WHERE LocationUsed ='UZ39'

UPDATE [dbo].[Location]
SET Latitude  = 25.1437723, Longitude = 56.2918663, LocationUsed = 'L'
WHERE LocationUsed ='UZ40'

UPDATE [dbo].[Location]
SET Latitude  = 25.1833692, Longitude = 56.2158234, LocationUsed = 'M'
WHERE LocationUsed ='UZ44'

UPDATE [dbo].[Location]
SET Latitude  = 25.2000668, Longitude = 56.0149803, Locationused = 'N'
WHERE LocationUsed ='UZ476'

UPDATE [dbo].[Location]
SET Latitude  = 25.4032936, Longitude = 56.1382161, LocationUsed = 'O'
WHERE LocationUsed ='UZ60'

UPDATE [dbo].[Location]
SET Latitude  = 25.5351141, Longitude = 56.3050708, LocationUsed = 'P'
WHERE LocationUsed ='UZ94'

UPDATE [dbo].[Location]
SET Latitude  = 25.5799008, Longitude = 56.2515255, LocationUsed = 'Q'
WHERE LocationUsed ='ZR003'

-- Verify all the information 
SELECT * FROM [dbo].[Location]