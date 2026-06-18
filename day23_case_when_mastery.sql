-- Query 1: Wrapper Rule - Calculating total heavy-cargo penalty fees
SELECT 
    SUM(CASE
        WHEN Total_Weight_KG > 5000 THEN 1000
        ELSE 0
    END) AS Total_Heavy_Penalty
FROM Cargo_Weight_Log;

-- Query 2: Mirror Rule - Grouping crew members by operational flight hour tiers
SELECT 
    CASE
        WHEN Flight_Hours > 80 THEN 'Overtime'
        WHEN Flight_Hours > 40 THEN 'Standard'
        ELSE 'Part-Time'
    END AS Work_Tier,
    COUNT(*) AS Total_Crew_Members
FROM Cabin_Crew_Performance
GROUP BY
    CASE
        WHEN Flight_Hours > 80 THEN 'Overtime'
        WHEN Flight_Hours > 40 THEN 'Standard'
        ELSE 'Part-Time'
    END;

-- Query 3: Wrapper Rule - Calculating total bonus payout for top-performing crew
SELECT
    SUM(CASE
        WHEN Customer_Rating = 5 THEN 500
        ELSE 0
    END) AS Total_Bonus_Payout
FROM Cabin_Crew_Performance;

-- Query 4: Mirror Rule - Classifying and counting cargo shipments based on scale
SELECT
    CASE
        WHEN Total_Weight_KG > 10000 THEN 'Heavy Freighter'
        WHEN Total_Weight_KG > 2000 THEN 'Medium Deck'
        ELSE 'Light Cargo'
    END AS Cargo_Class,
    COUNT(*) AS Total_Shipments
FROM Cargo_Weight_Log
GROUP BY
    CASE
        WHEN Total_Weight_KG > 10000 THEN 'Heavy Freighter'
        WHEN Total_Weight_KG > 2000 THEN 'Medium Deck'
        ELSE 'Light Cargo'
    END;

-- Query 5: Grand Master Pipeline - Wrapping CASE logic inside categorical groupings
SELECT Base_Airport,
    SUM(CASE
        WHEN Customer_Rating = 5 THEN 500
        ELSE 0
    END) AS Total_Bonus_Payout
FROM Cabin_Crew_Performance
GROUP BY Base_Airport;
