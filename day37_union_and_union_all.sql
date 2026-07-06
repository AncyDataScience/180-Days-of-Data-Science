-- Query 1: The Basic UNION to get a unique list of all destinations
SELECT Destination FROM Active_Flights
UNION
SELECT Destination FROM Archive_Flights;

-- Query 2: The UNION ALL to stack every single flight record vertically
SELECT Flight_Number, Destination FROM Active_Flights
UNION ALL
SELECT Flight_Number, Destination FROM Archive_Flights;

-- Query 3: Filtering before stacking to isolate specific routes
SELECT Flight_Number, Passengers FROM Active_Flights 
WHERE Destination = 'London' 
UNION ALL
SELECT Flight_Number, Passengers FROM Archive_Flights 
WHERE Destination = 'London';

-- Query 4: Adding a custom hardcoded label to track data origin
SELECT 'Active' AS Flight_Status, Flight_Number, Passengers
FROM Active_Flights
UNION ALL
SELECT 'Archived' AS Flight_Status, Flight_Number, Passengers 
FROM Archive_Flights;

-- Query 5: The Grand Master - UNION ALL with a global ORDER BY
SELECT Flight_Number, Destination, Passengers FROM Active_Flights
UNION ALL
SELECT Flight_Number, Destination, Passengers FROM Archive_Flights
ORDER BY Passengers DESC;
