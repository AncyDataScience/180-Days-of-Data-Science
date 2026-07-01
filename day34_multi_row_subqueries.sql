-- Query 1: The Inner Query Warm-up for isolating weather-impacted flights
SELECT Flight_Number 
FROM Delayed_Flights
WHERE Delay_Reason = 'Weather';

-- Query 2: Multi-Row Subquery (IN) for mapping passengers to weather delays
SELECT Passenger_Name 
FROM Passenger_Roster
WHERE Flight_Number IN (
    SELECT Flight_Number 
    FROM Delayed_Flights
    WHERE Delay_Reason = 'Weather'
);

-- Query 3: The Inner Query Warm-up for identifying mechanical delays
SELECT Flight_Number 
FROM Delayed_Flights
WHERE Delay_Reason = 'Technical';

-- Query 4: Multi-Row Subquery (IN) for targeting passenger classes in technical delays
SELECT Passenger_Name, Ticket_Class 
FROM Passenger_Roster
WHERE Flight_Number IN (
    SELECT Flight_Number 
    FROM Delayed_Flights
    WHERE Delay_Reason = 'Technical'
);

-- Query 5: The Grand Master (NOT IN) to isolate passengers on on-time flights
SELECT Passenger_Name 
FROM Passenger_Roster
WHERE Flight_Number NOT IN (
    SELECT Flight_Number 
    FROM Delayed_Flights
);
