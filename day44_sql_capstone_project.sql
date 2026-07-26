-- Query 1: The Architect (DDL + Constraints)
CREATE TABLE Fleet_Stats (
    Aircraft_ID INT PRIMARY KEY,
    Aircraft_Type VARCHAR(50) NOT NULL
);

-- Query 2: The Maintainer (DML)
INSERT INTO Fleet_Stats (Aircraft_ID, Aircraft_Type)
VALUES (1, 'Airbus A350');

-- Query 3: The Analyst (JOIN + Aggregation)
SELECT f.Aircraft_Type, COUNT(s.Flight_ID) AS Total_Flights
FROM Fleet_Stats AS f
INNER JOIN Flight_Schedule AS s
    ON f.Aircraft_ID = s.Aircraft_ID 
GROUP BY f.Aircraft_Type;

-- Query 4: The Master Analyst (CTE + Window Functions)
WITH Ranked_Pilots AS (
    SELECT Pilot_ID, 
           RANK() OVER (ORDER BY Flight_Hours DESC) AS Pilot_Rank
    FROM Pilot_Logs
)
SELECT * FROM Ranked_Pilots 
WHERE Pilot_Rank = 1;

-- Query 5: The Optimizer (Views integrating CTEs)
CREATE VIEW Top_Pilots AS
WITH Ranked_Pilots AS (
    SELECT Pilot_ID, 
           RANK() OVER (ORDER BY Flight_Hours DESC) AS Pilot_Rank
    FROM Pilot_Logs
)
SELECT * FROM Ranked_Pilots 
WHERE Pilot_Rank = 1;
