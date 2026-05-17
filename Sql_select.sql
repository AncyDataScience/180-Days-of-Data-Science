-- Query 1: All flight data
SELECT * FROM Flights;

-- Query 2: Route tracking
SELECT Departure_Airport, Destination_Airport FROM Flights;

-- Query 3: Fuel sustainability analysis
SELECT Flight_ID, Airline_Name, Fuel_Burned_KG FROM Flights;

-- Query 4: Delay tracking for customer service
SELECT Flight_ID, Delay_Minutes FROM Flights;

-- Part 2: Passenger & Baggage Data Basics

-- Query 5: Master passenger list
SELECT * FROM Passengers;

-- Query 6: Marketing customer names
SELECT First_Name, Last_Name FROM Passengers;

-- Query 7: Passport check requirements
SELECT First_Name, Nationality FROM Passengers;

-- Query 8: Luggage weight balancing
SELECT Flight_Number, Weight_KG FROM Baggage_Logs;

-- Query 9: Lost luggage tracking
SELECT Bag_Tag_Number, Baggage_Status FROM Baggage_Logs;
