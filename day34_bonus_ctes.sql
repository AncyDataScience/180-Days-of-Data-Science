-- Query 1: The Basic CTE for isolating specific aircraft fleets
WITH Boeing_Pilots AS (
    SELECT Pilot_Name 
    FROM Pilot_Flight_Hours 
    WHERE Aircraft_Type = 'Boeing 777'
)
SELECT * FROM Boeing_Pilots;

-- Query 2: CTE + Aggregation to calculate total pilot flight times
WITH Pilot_Totals AS (
    SELECT Pilot_Name, SUM(Hours_Flown) AS Total_Hours
    FROM Pilot_Flight_Hours
    GROUP BY Pilot_Name
)
SELECT * FROM Pilot_Totals;

-- Query 3: Filtering the Virtual Table to identify overworked pilots
WITH Pilot_Totals AS (
    SELECT Pilot_Name, SUM(Hours_Flown) AS Total_Hours
    FROM Pilot_Flight_Hours
    GROUP BY Pilot_Name
)
SELECT Pilot_Name 
FROM Pilot_Totals 
WHERE Total_Hours > 100;

-- Query 4: The Average Baseline CTE for fleet-wide analytics
WITH Fleet_Average AS (
    SELECT AVG(Hours_Flown) AS Avg_Hours
    FROM Pilot_Flight_Hours
)
SELECT * FROM Fleet_Average;

-- Query 5: The Grand Master - CTE driving dynamic filter logic
WITH Fleet_Average AS (
    SELECT AVG(Hours_Flown) AS Avg_Hours
    FROM Pilot_Flight_Hours
)
SELECT Pilot_Name, Hours_Flown 
FROM Pilot_Flight_Hours
WHERE Hours_Flown > (SELECT Avg_Hours FROM Fleet_Average);
