-- Query 1: Market share leaderboard ranking carriers by total flight volume
SELECT Airline_Name, COUNT(*) AS Flight_Count 
FROM Flights
GROUP BY Airline_Name
ORDER BY Flight_Count DESC;

-- Query 2: Regional bottleneck leaderboard ranking departure airports by longest average delay
SELECT Departure_Airport, AVG(Delay_Minutes) AS Average_Delay
FROM Flights 
GROUP BY Departure_Airport
ORDER BY Average_Delay DESC;

-- Query 3: Fuel consumption efficiency audit ranking carriers from lowest to highest total fuel burn
SELECT Airline_Name, SUM(Fuel_Burned_KG) AS Total_Fuel
FROM Flights
GROUP BY Airline_Name
ORDER BY Total_Fuel ASC;

-- Query 4: High-priority corridor disruption leaderboard isolating the top 3 worst arrival hubs
SELECT Destination_Airport, MAX(Delay_Minutes) AS Peak_Delay 
FROM Flights
GROUP BY Destination_Airport
ORDER BY Peak_Delay DESC 
LIMIT 3;

-- Query 5: High-volume long-haul fleet analysis ranking carriers by average heavy fuel burn footprint
SELECT Airline_Name, AVG(Fuel_Burned_KG) AS Average_Fuel_Burn
FROM Flights
WHERE Fuel_Burned_KG > 5000
GROUP BY Airline_Name
ORDER BY Average_Fuel_Burn DESC;

-- Part 2: Airport Infrastructure & Wireless UX Network Leaderboards

-- Query 6: Bandwidth consumption leaderboard ranking terminal zones by cumulative data pull
SELECT Terminal_Zone, SUM(Data_Used_MB) AS Total_Bandwidth_MB 
FROM Airport_WiFi_Sessions
GROUP BY Terminal_Zone
ORDER BY Total_Bandwidth_MB DESC;

-- Query 7: Wireless connectivity performance ranking from fastest to slowest average download speed
SELECT Terminal_Zone, AVG(Download_Speed_Mbps) AS Average_Speed_Mbps
FROM Airport_WiFi_Sessions
GROUP BY Terminal_Zone
ORDER BY Average_Speed_Mbps DESC;

-- Query 8: Digital user engagement audit ranking subscription tiers by total session volume
SELECT User_Tier, COUNT(*) AS Total_Sessions 
FROM Airport_WiFi_Sessions
GROUP BY User_Tier
ORDER BY Total_Sessions DESC;

-- Query 9: Critical infrastructure bottleneck leaderboard isolating the top 3 worst minimum network drops
SELECT Terminal_Zone, MIN(Download_Speed_Mbps) AS Worst_Speed_Drop
FROM Airport_WiFi_Sessions
GROUP BY Terminal_Zone
ORDER BY Worst_Speed_Drop ASC
LIMIT 3;

-- Query 10: High-demand subscriber optimization leaderboard ranking premium users by heavy-data network speeds
SELECT User_Tier, AVG(Download_Speed_Mbps) AS Premium_Avg_Speed 
FROM Airport_WiFi_Sessions
WHERE Data_Used_MB > 2000
GROUP BY User_Tier
ORDER BY Premium_Avg_Speed DESC;
