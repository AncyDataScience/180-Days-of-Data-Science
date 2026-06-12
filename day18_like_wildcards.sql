-- Query 1: Fleet component identification extracting records for Boeing parts
SELECT * FROM Aviation_Inventory
WHERE Part_Name LIKE 'Boeing%';

-- Query 2: Systemic asset inventory isolating components ending with 'Engine'
SELECT * FROM Aviation_Inventory
WHERE Part_Name LIKE '%Engine';

-- Query 3: Central registry scanning finding any entries containing 'Valve'
SELECT * FROM Aviation_Inventory
WHERE Part_Name LIKE '%Valve%';

-- Query 4: Unique batch category grouping extracting unique batch codes starting with 'QA'
SELECT DISTINCT Batch_Code FROM Aviation_Inventory
WHERE Batch_Code LIKE 'QA%';

-- Query 5: Advanced wildcard pipeline aggregating stocks containing '2026' inside batch codes
SELECT SUM(Stock_Quantity) AS Total_2026_Batch_Stock
FROM Aviation_Inventory
WHERE Batch_Code LIKE '%2026%';

-- Part 2: Customer Experience Analytics & Pattern-Matching Dashboard Pipelines

-- Query 6: Complaint text counting isolating operational delay feedback records
SELECT COUNT(*) AS Total_Delay_Complaints
FROM Customer_Feedback_Hub
WHERE Feedback_Text LIKE '%delayed%';

-- Query 7: Regional terminal concentration auditing feedback records across Doha airport zones
SELECT Airport_Zone, COUNT(*) AS Doha_Zone_Feedback_Count
FROM Customer_Feedback_Hub
WHERE Airport_Zone LIKE 'DOH%' 
GROUP BY Airport_Zone;

-- Query 8: Service sentiment segmenting tracking average crew issue compensations per gateway
SELECT Airport_Zone, AVG(Compensation_Points_Given) AS Avg_Crew_Issue_Compensation
FROM Customer_Feedback_Hub
WHERE Feedback_Text LIKE '%crew%'
GROUP BY Airport_Zone;

-- Query 9: Macro text pattern leaderboards identifying high-payout compensation hubs
SELECT Airport_Zone, SUM(Compensation_Points_Given) AS Total_Points_Paid
FROM Customer_Feedback_Hub
GROUP BY Airport_Zone
HAVING SUM(Compensation_Points_Given) > 10000
ORDER BY Total_Points_Paid DESC;

-- Query 10: Grand master pattern-matching pipeline isolating critical service failure locations
SELECT Airport_Zone, COUNT(*) AS Severe_Issue_Count
FROM Customer_Feedback_Hub
WHERE Feedback_Text LIKE '%bad%'
GROUP BY Airport_Zone
HAVING COUNT(*) > 5
ORDER BY Severe_Issue_Count DESC;
