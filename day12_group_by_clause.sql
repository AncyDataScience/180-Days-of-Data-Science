-- Query 1: Fleet market share presence dashboard segmented by carrier
SELECT Airline_Name, COUNT(*) AS Flight_Count 
FROM Flights
GROUP BY Airline_Name;

-- Query 2: Hub performance tracking and bottleneck isolation by departure city
SELECT Departure_Airport, AVG(Delay_Minutes) AS Average_Delay 
FROM Flights
GROUP BY Departure_Airport;

-- Query 3: Environmental impact overview and cumulative fuel spending by airline
SELECT Airline_Name, SUM(Fuel_Burned_KG) AS "Total Fuel Burned" 
FROM Flights 
GROUP BY Airline_Name;

-- Query 4: Destination stress-test audit capturing peak delay thresholds
SELECT Destination_Airport, MAX(Delay_Minutes) AS Peak_Delay_Minutes 
FROM Flights
GROUP BY Destination_Airport;

-- Query 5: Filtered heavy fleet categorical breakdown for efficiency minimums
SELECT Airline_Name, MIN(Fuel_Burned_KG) AS Minimum_Fuel_Burned 
FROM Flights
WHERE Fuel_Burned_KG > 4000
GROUP BY Airline_Name;

-- Part 2: Global Customer Support & Workforce Performance Analytics

-- Query 6: Regional ticket volume distribution for support hub staffing audits
SELECT Support_Region, COUNT(*) AS Total_Tickets 
FROM Global_Customer_Support 
GROUP BY Support_Region;

-- Query 7: Service level agreement benchmarking across tiered priority segments
SELECT Priority_Tier, AVG(Resolution_Minutes) AS Average_Resolution_Time 
FROM Global_Customer_Support
GROUP BY Priority_Tier;

-- Query 8: Quality assurance tracking for localized territory satisfaction scores
SELECT Support_Region, AVG(Satisfaction_Score) AS Average_CSAT_Score 
FROM Global_Customer_Support
GROUP BY Support_Region;

-- Query 9: Systemic peak stress-test auditing for maximum incident blockages
SELECT Priority_Tier, MAX(Resolution_Minutes) AS Max_Resolution_Minutes 
FROM Global_Customer_Support 
GROUP BY Priority_Tier;

-- Query 10: Isolation matrix for high-friction workflows based on critical user friction
SELECT Support_Region, AVG(Resolution_Minutes) AS Average_Resolution_Minutes 
FROM Global_Customer_Support
WHERE Satisfaction_Score < 3
GROUP BY Support_Region;
