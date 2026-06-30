-- Query 1: The Inner Query Warm-up for finding maximum ticket price
SELECT MAX(Ticket_Price) 
FROM Passenger_Tickets;

-- Query 2: The Subquery - Filtering passengers who paid the absolute maximum
SELECT Passenger_Name, Ticket_Price 
FROM Passenger_Tickets
WHERE Ticket_Price = (SELECT MAX(Ticket_Price) FROM Passenger_Tickets);

-- Query 3: The Inner Query Warm-up for calculating baseline average
SELECT AVG(Ticket_Price) 
FROM Passenger_Tickets;

-- Query 4: The Subquery - Isolating above-average revenue contributors
SELECT Passenger_Name, Ticket_Price 
FROM Passenger_Tickets
WHERE Ticket_Price > (SELECT AVG(Ticket_Price) FROM Passenger_Tickets);

-- Query 5: The Grand Master - Text-based dynamic subquery matching
SELECT Passenger_Name, Flight_Class 
FROM Passenger_Tickets
WHERE Flight_Class = (SELECT Flight_Class FROM Passenger_Tickets WHERE Passenger_Name = 'Rahul');
