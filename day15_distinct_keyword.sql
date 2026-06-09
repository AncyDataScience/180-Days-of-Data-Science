-- Query 1: Global network audit extracting a clean, unique list of departure hubs
SELECT DISTINCT Departure_Airport FROM Flights;

-- Query 2: Carrier presence check isolating individual operating airlines
SELECT DISTINCT Airline_Name FROM Flights;

-- Query 3: Market reach metrics calculating total unique destination footprint
SELECT COUNT(DISTINCT Destination_Airport) AS Total_Unique_Destinations 
FROM Flights;

-- Query 4: Operational footprint tracking counting unique carriers utilizing the Doha hub
SELECT COUNT(DISTINCT Airline_Name) AS Unique_Doha_Carriers 
FROM Flights 
WHERE Departure_Airport = 'DOH';

-- Query 5: Heavy-haul corridor auditing counting unique destinations receiving high-fuel flights
SELECT COUNT(DISTINCT Destination_Airport) AS Heavy_Fuel_Unique_Destinations
FROM Flights
WHERE Fuel_Burned_KG > 5000;

-- Part 2: Privilege Club Omni-Channel Marketing & Loyalty Audience Deduplication

-- Query 6: Unique communication channel inventory tracking
SELECT DISTINCT Channel FROM Customer_Campaign_Interactions;

-- Query 7: Active creative strategy catalog mapping non-repeating initiatives
SELECT DISTINCT Campaign_Name FROM Customer_Campaign_Interactions;

-- Query 8: True audience reach metrics isolating unique human engagement profiles
SELECT COUNT(DISTINCT Customer_ID) AS Total_Unique_Customers
FROM Customer_Campaign_Interactions;

-- Query 9: Targeted seasonal promotion reach tracking counting unique user profiles
SELECT COUNT(DISTINCT Customer_ID) AS Unique_Summer_Promo_Customers
FROM Customer_Campaign_Interactions
WHERE Campaign_Name = 'Summer-Promo';

-- Query 10: High-tier digital gateway audits isolating unique high-value channels
SELECT COUNT(DISTINCT Channel) AS High_Value_Unique_Channels
FROM Customer_Campaign_Interactions
WHERE Points_Earned > 500;

-- Query 11: Text-blast communication reach audit counting unique customer profiles
SELECT COUNT(DISTINCT Customer_ID) AS Unique_SMS_Reach
FROM Customer_Campaign_Interactions
WHERE Channel = 'SMS';

-- Query 12: Campaign audience diversity tracking mapping unique user concentration per initiative
SELECT Campaign_Name, COUNT(DISTINCT Customer_ID) AS Unique_User_Count 
FROM Customer_Campaign_Interactions
GROUP BY Campaign_Name;

-- Query 13: Omni-channel engagement variety tracking mapping unique campaigns per deployment channel
SELECT Channel, COUNT(DISTINCT Campaign_Name) AS Unique_Campaign_Count
FROM Customer_Campaign_Interactions
GROUP BY Channel;

-- Query 14: Strategy channel concentration leaderboard ranking initiatives by channel variety
SELECT Campaign_Name, COUNT(DISTINCT Channel) AS Active_Channel_Count
FROM Customer_Campaign_Interactions
GROUP BY Campaign_Name
ORDER BY Active_Channel_Count DESC;

-- Query 15: High-impact marketing pipeline ranking campaigns engaging deep unique user volumes
SELECT Campaign_Name, COUNT(DISTINCT Customer_ID) AS Profitable_Unique_Users
FROM Customer_Campaign_Interactions
WHERE Points_Earned > 0
GROUP BY Campaign_Name
HAVING COUNT(DISTINCT Customer_ID) > 100
ORDER BY Profitable_Unique_Users DESC;
