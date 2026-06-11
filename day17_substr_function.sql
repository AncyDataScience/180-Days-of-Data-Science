-- Query 1: Production year isolation extracting components manufacturing year
SELECT SUBSTR(System_Serial, 1, 4) AS Production_Year
FROM Flight_Tracking_Codes;

-- Query 2: Base location tracking isolating operational airport hub codes
SELECT SUBSTR(System_Serial, 5, 3) AS Extracted_Hub_Code
FROM Flight_Tracking_Codes;

-- Query 3: Unique fleet grouping extracting non-repeating fleet identification codes
SELECT DISTINCT SUBSTR(System_Serial, 8, 3) AS Unique_Fleet_ID
FROM Flight_Tracking_Codes;

-- Query 4: Filtered regional inventory isolating machinery assigned to the Doha hub
SELECT * FROM Flight_Tracking_Codes
WHERE SUBSTR(System_Serial, 5, 3) = 'DOH';

-- Query 5: Combined text pipeline aggregating flight hours for equipment produced in 2026
SELECT SUM(Total_Hours_Logged) AS Total_2026_Flight_Hours
FROM Flight_Tracking_Codes
WHERE SUBSTR(System_Serial, 1, 4) = '2026';

-- Part 2: Privilege Club Frequent Flyer Serial Data Parsing & Advanced Aggregations

-- Query 6: Multi-regional operation scan isolating unique regional office identifier codes
SELECT DISTINCT SUBSTR(Member_Serial_Code, 10, 2) AS Unique_Region_Code 
FROM Privilege_Club_Transactions;

-- Query 7: Historical trend extraction calculating yearly transaction counts via parsed enrollment years
SELECT SUBSTR(Member_Serial_Code, 3, 4) AS Enrollment_Year, COUNT(*) AS Yearly_Transaction_Volume
FROM Privilege_Club_Transactions
GROUP BY SUBSTR(Member_Serial_Code, 3, 4);

-- Query 8: Tier-specific asset allocation auditing total loyalty currency exchanged per tier segment
SELECT SUBSTR(Member_Serial_Code, 7, 3) AS Tier_Status, SUM(Points_Exchanged) AS Total_Points_Spent
FROM Privilege_Club_Transactions
GROUP BY SUBSTR(Member_Serial_Code, 7, 3);

-- Query 9: Target group performance tracking monitoring average points metrics for the Doha office (Code 99)
SELECT SUBSTR(Member_Serial_Code, 3, 4) AS Enrollment_Year, AVG(Points_Exchanged) AS Avg_Points_Spent
FROM Privilege_Club_Transactions
WHERE SUBSTR(Member_Serial_Code, 10, 2) = '99'
GROUP BY SUBSTR(Member_Serial_Code, 3, 4);

-- Query 10: Grand master parsing pipeline ranking high-volume tier blocks exceeding throughput boundaries
SELECT SUBSTR(Member_Serial_Code, 7, 3) AS Tier_Status, COUNT(*) AS Tier_Activity_Count
FROM Privilege_Club_Transactions
GROUP BY SUBSTR(Member_Serial_Code, 7, 3)
HAVING COUNT(*) > 500
ORDER BY Tier_Activity_Count DESC;
