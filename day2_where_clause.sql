-- Query 1: Extracting all departures from Hamad International Airport (Doha)
SELECT * FROM Flights WHERE Departure_Airport = 'DOH';

-- Query 2: Identifying heavy fuel consumption for sustainability analysis
SELECT Flight_ID, Fuel_Burned_KG FROM Flights WHERE Fuel_Burned_KG > 5000;

-- Query 3: Tracking major flight disruptions for customer service optimization
SELECT Flight_ID, Airline_Name, Delay_Minutes FROM Flights WHERE Delay_Minutes > 120;

-- Query 4: Isolating Scandinavian traffic arriving in Oslo, Norway
SELECT * FROM Flights WHERE Destination_Airport = 'OSL';

-- Query 5: Identifying flights with perfect, on-time performance
SELECT Flight_ID, Airline_Name FROM Flights WHERE Delay_Minutes = 0;
