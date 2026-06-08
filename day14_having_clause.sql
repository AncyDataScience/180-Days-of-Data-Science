-- Query 1: High-risk disruption filter isolating carriers with excessive average delays
SELECT Airline_Name, AVG(Delay_Minutes) AS Average_Delay 
FROM Flights
GROUP BY Airline_Name
HAVING AVG(Delay_Minutes) > 20;

-- Query 2: High-volume transit hub isolation for traffic density benchmarking
SELECT Departure_Airport, COUNT(*) AS Flight_Count
FROM Flights
GROUP BY Departure_Airport
HAVING COUNT(*) > 10;

-- Query 3: Extreme fuel consumption warning system flagging massive carbon footprints
SELECT Airline_Name, SUM(Fuel_Burned_KG) AS Total_Fuel
FROM Flights
GROUP BY Airline_Name
HAVING SUM(Fuel_Burned_KG) > 100000;

-- Query 4: Optimized dashboard ranking arrival hubs exceeding extreme delay thresholds
SELECT Destination_Airport, MAX(Delay_Minutes) AS Peak_Delay
FROM Flights 
GROUP BY Destination_Airport 
HAVING MAX(Delay_Minutes) > 60
ORDER BY Peak_Delay DESC;

-- Query 5: Full operational analytics pipeline extracting Doha-specific carrier efficiency metrics
SELECT Airline_Name, AVG(Fuel_Burned_KG) AS Avg_Fuel
FROM Flights
WHERE Departure_Airport = 'DOH'
GROUP BY Airline_Name
HAVING AVG(Fuel_Burned_KG) > 4000
ORDER BY Avg_Fuel DESC;

-- Part 2: Enterprise Cybersecurity & Infrastructure Compliance Auditing

-- Query 6: Threat vector monitoring isolating departments with systemic access denials
SELECT Department, COUNT(*) AS Denied_Access
FROM Employee_Security_Logs
WHERE Access_Status = 'Denied'
GROUP BY Department
HAVING COUNT(*) > 5;

-- Query 7: Critical vulnerability screening tracking high-risk facility zones
SELECT Building_Zone, AVG(Risk_Score) AS Avg_Risk
FROM Employee_Security_Logs
GROUP BY Building_Zone
HAVING AVG(Risk_Score) > 45;

-- Query 8: Bulk footprint screening isolating high-volume facility traffic clusters
SELECT Building_Zone, COUNT(*) AS Total_Traffic
FROM Employee_Security_Logs
GROUP BY Building_Zone
HAVING COUNT(*) > 50;

-- Query 9: Targeted departmental risk audit ranking peak vulnerability thresholds
SELECT Department, MAX(Risk_Score) AS Peak_Risk
FROM Employee_Security_Logs
GROUP BY Department
HAVING MAX(Risk_Score) > 80 
ORDER BY Peak_Risk DESC;

-- Query 10: Full security pipeline auditing severe vulnerabilities in the Research Lab
SELECT Department, AVG(Risk_Score) AS Core_Avg_Risk
FROM Employee_Security_Logs
WHERE Building_Zone = 'Research-Lab'
GROUP BY Department
HAVING AVG(Risk_Score) > 50
ORDER BY Core_Avg_Risk DESC;
