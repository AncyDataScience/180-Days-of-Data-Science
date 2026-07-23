-- Query 1: The Basic View for saving frequently used filters
CREATE VIEW Delayed_Flights AS
SELECT Flight_Number, Destination FROM Flights WHERE Status = 'Delayed';

-- Query 2: Querying the View as a virtual table
SELECT * FROM Delayed_Flights;

-- Query 3: The Complex View to abstract complex JOIN logic for end-users
CREATE VIEW Catering_Manifest AS
SELECT p.Passenger_Name, t.Seat_Number 
FROM Passengers AS p
INNER JOIN Tickets AS t
    ON p.Passenger_ID = t.Passenger_ID;

-- Query 4: Updating a View dynamically without dropping it
CREATE OR REPLACE VIEW Catering_Manifest AS
SELECT p.Passenger_Name, t.Seat_Number, t.Meal_pref
FROM Passengers AS p
INNER JOIN Tickets AS t
    ON p.Passenger_ID = t.Passenger_ID;

-- Query 5: Deleting a View when no longer required
DROP VIEW Delayed_Flights;
