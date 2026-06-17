-- Query 1: Basic binary classification flagging severe operational delays
SELECT Flight_Serial,
    CASE
        WHEN Delay_Minutes > 180 THEN 'Severe Delay'
        ELSE 'Standard Operation'
    END AS Operational_Status
FROM Flight_Operations;

-- Query 2: Multi-tier passenger load categorization for terminal logistics
SELECT Flight_Serial,
    CASE
        WHEN Passenger_Count > 300 THEN 'Heavy Load'
        WHEN Passenger_Count > 150 THEN 'Medium Load'
        ELSE 'Light Load'
    END AS Load_Category
FROM Flight_Operations;

-- Query 3: Financial penalty logic generating numerical tier outcomes
SELECT Flight_Serial,
    CASE
        WHEN Delay_Minutes > 120 THEN 10000
        WHEN Delay_Minutes > 60 THEN 5000
        ELSE 0
    END AS Penalty_USD
FROM Flight_Operations;

-- Query 4: Advanced grouping by CASE vector evaluating fleet capacity distribution
SELECT 
    CASE
        WHEN Passenger_Count > 300 THEN 'Heavy Load'
        WHEN Passenger_Count > 150 THEN 'Medium Load'
        ELSE 'Light Load'
    END AS Load_Category,
    COUNT(*) AS Total_Flights
FROM Flight_Operations
GROUP BY 
    CASE
        WHEN Passenger_Count > 300 THEN 'Heavy Load'
        WHEN Passenger_Count > 150 THEN 'Medium Load'
        ELSE 'Light Load'
    END;

-- Query 5: Financial aggregation wrapping CASE logic inside SUM metric arrays
SELECT Route_Code, 
    SUM(CASE
        WHEN Delay_Minutes > 120 THEN 10000
        WHEN Delay_Minutes > 60 THEN 5000
        ELSE 0
    END) AS Total_Route_Penalty
FROM Flight_Operations
GROUP BY Route_Code;
