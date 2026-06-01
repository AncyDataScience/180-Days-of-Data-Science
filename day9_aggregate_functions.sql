-- Query 1: High-volume traffic throughput audit for network scale verification
SELECT COUNT(*) FROM Flights;

-- Query 2: Macro environmental impact analysis for fleet-wide fuel expenditure
SELECT SUM(Fuel_Burned_KG) FROM Flights;

-- Query 3: Baseline customer service performance evaluation for average fleet delays
SELECT AVG(Delay_Minutes) FROM Flights;

-- Query 4: Targeted corporate performance review for localized hub delays
SELECT AVG(Delay_Minutes) FROM Flights 
WHERE Airline_Name = 'Qatar Airways';

-- Query 5: Strategic environmental footprint audit for high-priority corridors
SELECT SUM(Fuel_Burned_KG) FROM Flights 
WHERE Departure_Airport = 'DOH' AND Destination_Airport = 'OSL';

-- Part 2: Air Freight Supply Chain & Cargo Logistics Analytics

-- Query 6: High-volume logistics throughput audit for total shipment tallies
SELECT COUNT(*) FROM Air_Cargo_Shipments;

-- Query 7: Cumulative payload weight calculations for fleet balance baselines
SELECT SUM(Weight_KG) FROM Air_Cargo_Shipments;

-- Query 8: Operational expense auditing for macro cargo handling cost averages
SELECT AVG(Handling_Cost_USD) FROM Air_Cargo_Shipments;

-- Query 9: Cold-chain medical supply line audit for total pharmaceutical tonnage
SELECT SUM(Weight_KG) FROM Air_Cargo_Shipments 
WHERE Cargo_Type = 'Pharma';

-- Query 10: Targeted APAC regional cost analysis for high-value electronics routing
SELECT AVG(Handling_Cost_USD) FROM Air_Cargo_Shipments
WHERE Destination_Hub = 'SIN' AND Cargo_Type = 'Electronics';
