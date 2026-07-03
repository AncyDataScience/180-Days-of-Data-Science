-- Query 1: The Basic Window (Global Ranking) for all passengers
SELECT Passenger_ID, 
       Miles_Flown, 
       ROW_NUMBER() OVER (ORDER BY Miles_Flown DESC) AS Global_Rank 
FROM Passenger_Loyalty;

-- Query 2: The PARTITION BY Rule for Tier-specific rankings
SELECT Passenger_ID, 
       Tier, 
       Miles_Flown, 
       ROW_NUMBER() OVER (PARTITION BY Tier ORDER BY Miles_Flown DESC) AS Tier_Rank 
FROM Passenger_Loyalty;

-- Query 3: Window Function + RANK() to handle tied mileage values
SELECT Passenger_ID, 
       Tier, 
       Miles_Flown, 
       RANK() OVER (PARTITION BY Tier ORDER BY Miles_Flown DESC) AS Tier_Rank 
FROM Passenger_Loyalty;

-- Query 4: Window Function + Row-Level Math Calculation
SELECT Passenger_ID, 
       Tier, 
       (Miles_Flown * 1.10) AS Bonus_Miles, 
       ROW_NUMBER() OVER (PARTITION BY Tier ORDER BY Miles_Flown DESC) AS Tier_Rank 
FROM Passenger_Loyalty;

-- Query 5: The Grand Master - CTE + Window Function for VIP identification
WITH Ranked_Flyers AS (
    SELECT Passenger_ID, 
           Tier, 
           Miles_Flown, 
           RANK() OVER (PARTITION BY Tier ORDER BY Miles_Flown DESC) AS Tier_Rank
    FROM Passenger_Loyalty
)
SELECT * FROM Ranked_Flyers
WHERE Tier_Rank = 1;
