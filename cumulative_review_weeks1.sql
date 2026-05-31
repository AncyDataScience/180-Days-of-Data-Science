-- Query 1: Basic structural projection and numeric filtering
SELECT Flight_ID, Departure_Airport, Fuel_Burned_KG 
FROM Flight_Operations 
WHERE Airline_Name = 'Qatar Airways' AND Fuel_Burned_KG > 5000;

-- Query 2: Multi-hub traffic routing logic with explicit operator grouping
SELECT * FROM Flight_Operations 
WHERE (Departure_Airport = 'DOH' OR Destination_Airport = 'DOH') AND Delay_Minutes > 45
ORDER BY Delay_Minutes DESC;

-- Query 3: Multi-corridor range analysis with optimized output capping
SELECT * FROM Flight_Operations
WHERE Destination_Airport IN ('OSL', 'LUX', 'LHR') AND Fuel_Burned_KG BETWEEN 4000 AND 8000 
LIMIT 5;

-- Query 4: Data integrity verification isolating unrecorded delay metrics
SELECT Flight_ID, Airline_Name 
FROM Flight_Operations
WHERE Delay_Minutes IS NULL AND Airline_Name IS NOT NULL;

-- Query 5: Unstructured log parsing for cargo-related operational delays
SELECT * FROM Flight_Operations
WHERE Status_Notes LIKE '%cargo%';
