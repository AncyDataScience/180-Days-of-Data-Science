-- Query 1: Fuel expenditure ceiling analysis for worst-case budget forecasting
SELECT MAX(Fuel_Burned_KG) FROM Flights;

-- Query 2: Minimum delay baseline isolation for turnaround performance optimization
SELECT MIN(Delay_Minutes) FROM Flights;

-- Query 3: Peak disruption audit for targeted carrier performance reviews
SELECT MAX(Delay_Minutes) FROM Flights 
WHERE Airline_Name = 'British Airways';

-- Query 4: Maximum efficiency benchmarking for departures out of the Doha hub
SELECT MIN(Fuel_Burned_KG) FROM Flights 
WHERE Departure_Airport = 'DOH';

-- Query 5: Threshold ceiling analysis for high-priority weather-impacted corridors
SELECT MAX(Delay_Minutes) FROM Flights 
WHERE Departure_Airport = 'LHR' AND Destination_Airport = 'DOH';

-- Part 2: Airport Infrastructure & Asset Resource Threshold Auditing

-- Query 6: Identifying the maximum fuel volume ceiling across airport storage assets
SELECT MAX(Current_Capacity_Liters) FROM Airport_Fuel_Tanks;

-- Query 7: Critical logistical low-reserve alerting for refilling priority schedules
SELECT MIN(Current_Capacity_Liters) FROM Airport_Fuel_Tanks;

-- Query 8: Infrastructure safety compliance auditing for maximum inspection gaps
SELECT MAX(Last_Inspection_Days_Ago) FROM Airport_Fuel_Tanks;

-- Query 9: Zonal capacity floor auditing specifically for the North terminal cluster
SELECT MIN(Current_Capacity_Liters) FROM Airport_Fuel_Tanks 
WHERE Terminal_Zone = 'North';

-- Query 10: High-risk maintenance timeline tracking for primary East zone Jet-A1 tanks
SELECT MAX(Last_Inspection_Days_Ago) FROM Airport_Fuel_Tanks
WHERE Fuel_Type = 'Jet-A1' AND Terminal_Zone = 'East';
