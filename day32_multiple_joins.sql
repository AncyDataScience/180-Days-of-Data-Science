-- Query 1: The Standard 2-Table Join mapping flights to aircraft
SELECT f.Flight_ID, a.Model 
FROM Flights AS f
INNER JOIN Aircraft AS a
    ON f.Aircraft_Code = a.Aircraft_Code;

-- Query 2: The Alternate 2-Table Join mapping flights to crew
SELECT f.Flight_ID, c.Lead_Pilot
FROM Flights AS f
INNER JOIN Crew AS c
    ON f.Crew_Code = c.Crew_Code;

-- Query 3: The 3-Table Grand Master Join creating a unified master dataset
SELECT f.Flight_ID, a.Model, c.Lead_Pilot
FROM Flights AS f
INNER JOIN Aircraft AS a
    ON f.Aircraft_Code = a.Aircraft_Code
INNER JOIN Crew AS c
    ON f.Crew_Code = c.Crew_Code;

-- Query 4: 3-Table Join + WHERE Filter targeting specific aircraft fleets
SELECT f.Flight_ID, a.Model, c.Lead_Pilot
FROM Flights AS f
INNER JOIN Aircraft AS a
    ON f.Aircraft_Code = a.Aircraft_Code
INNER JOIN Crew AS c
    ON f.Crew_Code = c.Crew_Code
WHERE a.Model = 'Boeing 777';

-- Query 5: 3-Table Join + GROUP BY to calculate pilot flight loads
SELECT c.Lead_Pilot, COUNT(f.Flight_ID) AS Total_Flights_Assigned
FROM Flights AS f
INNER JOIN Aircraft AS a
    ON f.Aircraft_Code = a.Aircraft_Code
INNER JOIN Crew AS c
    ON f.Crew_Code = c.Crew_Code
GROUP BY c.Lead_Pilot;
