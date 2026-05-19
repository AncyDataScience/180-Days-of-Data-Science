-- Query 1: Premium routing analytics for European arrivals
SELECT * FROM Flights WHERE Airline_Name = 'Qatar Airways' AND Destination_Airport = 'OSL';

-- Query 2: Identifying critical fuel-heavy and delayed anomalies 
SELECT Flight_ID, Fuel_Burned_KG FROM Flights WHERE Fuel_Burned_KG > 6000 AND Delay_Minutes > 30;

-- Query 3: Multi-directional hub tracking for Doha (Departures or Arrivals)
SELECT * FROM Flights WHERE Departure_Airport = 'DOH' OR Destination_Airport = 'DOH';

-- Query 4: Competitive analysis for major Middle Eastern carriers
SELECT Flight_ID, Airline_Name, Delay_Minutes FROM Flights WHERE Airline_Name = 'Qatar Airways' OR Airline_Name = 'Emirates';

-- Query 5: Auditing optimal, high-efficiency short-haul flights
SELECT Flight_ID, Airline_Name FROM Flights WHERE Fuel_Burned_KG < 4000 AND Delay_Minutes = 0;

-- Part 2: Advanced Cargo Logistics & Crew Staffing Operations

-- Query 6: Refrigeration logistics for European perishables
SELECT * FROM Cargo_Shipments WHERE Cargo_Type = 'Perishables' AND Destination_Hub = 'LUX';

-- Query 7: High-weight electronics safety compliance auditing
SELECT Shipment_ID, Weight_KG FROM Cargo_Shipments WHERE Cargo_Type = 'Electronics' AND Weight_KG > 2500;

-- Query 8: High-priority and critical pharmaceutical freight routing
SELECT * FROM Cargo_Shipments WHERE Priority_Level = 'High' OR Cargo_Type = 'Pharma';

-- Query 9: Seniority and flight-hour regulatory compliance audit for Pilots
SELECT Employee_ID, Total_Flight_Hours FROM Crew_Logs WHERE Job_Title = 'Pilot' AND Total_Flight_Hours > 8000;

-- Query 10: Emergency standby and active staffing deployment analysis
SELECT Employee_ID, Job_Title FROM Crew_Logs WHERE Current_Status = 'Active' OR Current_Status = 'Standby';
