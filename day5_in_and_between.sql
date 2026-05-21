-- Query 1: Multi-hub traffic routing analysis for high-priority airports
SELECT * FROM Flights WHERE Departure_Airport IN ('DEL', 'DOH', 'OSL');

-- Query 2: Middle-tier flight delay distribution investigation
SELECT Flight_ID, Delay_Minutes FROM Flights WHERE Delay_Minutes BETWEEN 30 AND 90;

-- Query 3: Performance monitoring for European airline carriers
SELECT * FROM Flights WHERE Airline_Name IN ('Scandinavian', 'Norwegian Air', 'British Airways');

-- Query 4: Strategic fuel consumption profiling for medium-haul fleets
SELECT Flight_ID, Airline_Name, Fuel_Burned_KG FROM Flights WHERE Fuel_Burned_KG BETWEEN 3000 AND 6000;

-- Query 5: Auditing precise, standardized flight schedule variance intervals
SELECT * FROM Flights WHERE Delay_Minutes IN (0, 15, 30);

-- Part 2: Technical Asset Management & Airport Infrastructure Analytics

-- Query 6: Fleet modernization audit for mid-aged aircraft assets
SELECT * FROM Aircraft_Fleets WHERE Age_Years BETWEEN 5 AND 12;

-- Query 7: High-capacity wide-body fleet tracking for international routing
SELECT Aircraft_ID, Total_Seats FROM Aircraft_Fleets WHERE Model_Type IN ('Boeing 777', 'Airbus A350');

-- Query 8: Engineering maintenance dispatch optimization safety audit
SELECT * FROM Aircraft_Fleets WHERE Next_Maintenance_Days BETWEEN 1 AND 30;

-- Query 9: Terminal resource and concourse gate availability analysis
SELECT Gate_Number, Status FROM Terminal_Gates WHERE Terminal_Zone IN ('North', 'South', 'East');

-- Query 10: Heavy aircraft parking safety allocation and wingspan restrictions
SELECT * FROM Terminal_Gates WHERE Max_Aircraft_Wingspan_Meters BETWEEN 36 AND 65;
