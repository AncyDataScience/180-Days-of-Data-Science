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

-- Part 3: Metropolitan Mass Transit Network & Smart-City Fleet Analytics

-- Query 11: Systemic line delay filtering for schedule variance tracking
SELECT Line_Color, AVG(Delay_Minutes) AS Avg_Line_Delay
FROM Metropolitan_Transit_Trains
GROUP BY Line_Color
HAVING AVG(Delay_Minutes) > 12;

-- Query 12: Severe disruption spike tracking to isolate infrastructure issues
SELECT Line_Color, MAX(Delay_Minutes) AS Peak_Line_Delay
FROM Metropolitan_Transit_Trains
GROUP BY Line_Color
HAVING MAX(Delay_Minutes) > 45;

-- Query 13: High-performance transit line efficiency benchmarking
SELECT Line_Color, MIN(Delay_Minutes) AS Best_Line_Delay
FROM Metropolitan_Transit_Trains
GROUP BY Line_Color
HAVING MIN(Delay_Minutes) < 2;

-- Query 14: Overloaded route detection monitoring cumulative passenger volumes
SELECT Line_Color, SUM(Passenger_Count) AS Total_Commuters
FROM Metropolitan_Transit_Trains
GROUP BY Line_Color
HAVING SUM(Passenger_Count) > 15000;

-- Query 15: Rolling stock asset density tracking across active deployments
SELECT Train_Model, COUNT(*) AS Active_Train_Count
FROM Metropolitan_Transit_Trains
GROUP BY Train_Model
HAVING COUNT(*) > 8;

-- Query 16: Model-specific capacity loading audits for overcrowding analysis
SELECT Train_Model, AVG(Passenger_Count) AS Avg_Model_Load
FROM Metropolitan_Transit_Trains
GROUP BY Train_Model
HAVING AVG(Passenger_Count) > 1200;

-- Query 17: Rush-hour strain sorting ranking lines by highest commuter averages
SELECT Line_Color, AVG(Passenger_Count) AS Rush_Hour_Avg
FROM Metropolitan_Transit_Trains
GROUP BY Line_Color
HAVING AVG(Passenger_Count) > 2500
ORDER BY Rush_Hour_Avg DESC;

-- Query 18: Model disruption leaderboard ranking equipment variance boundaries
SELECT Train_Model, MAX(Delay_Minutes) AS Model_Max_Delay
FROM Metropolitan_Transit_Trains
GROUP BY Train_Model
HAVING MAX(Delay_Minutes) > 30
ORDER BY Model_Max_Delay ASC;

-- Query 19: Filtered Blue Line corridor audit tracking model-specific volume loads
SELECT Train_Model, SUM(Passenger_Count) AS Blue_Line_Model_Total
FROM Metropolitan_Transit_Trains
WHERE Line_Color = 'Blue'
GROUP BY Train_Model
HAVING SUM(Passenger_Count) > 5000;

-- Query 20: Commissioner's Grand Master Pipeline ranking high-occupancy delay vectors
SELECT Train_Model, AVG(Delay_Minutes) AS Final_Avg_Delay
FROM Metropolitan_Transit_Trains
WHERE Passenger_Count > 800
GROUP BY Train_Model
HAVING AVG(Delay_Minutes) > 15
ORDER BY Final_Avg_Delay DESC;

