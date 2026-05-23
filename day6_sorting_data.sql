-- Query 1: High-alert delay tracking for airport operations control
SELECT * FROM Flights ORDER BY Delay_Minutes DESC;

-- Query 2: Environmental efficiency ranking for sustainability audits
SELECT Flight_ID, Fuel_Burned_KG FROM Flights ORDER BY Fuel_Burned_KG ASC;

-- Query 3: Prioritizing departure disruptions specifically out of the Doha hub
SELECT * FROM Flights WHERE Departure_Airport = 'DOH' ORDER BY Delay_Minutes DESC;

-- Query 4: Alphabetical routing log for schedule planning optimization
SELECT Departure_Airport, Destination_Airport FROM Flights ORDER BY Departure_Airport ASC;

-- Query 5: Escalated disruption analysis for major flight delays (>60 mins)
SELECT Flight_ID, Airline_Name, Delay_Minutes FROM Flights WHERE Delay_Minutes > 60 ORDER BY Delay_Minutes DESC;
