-- Query 1: The AND Rule - Multi-condition check for operational weather delays
SELECT Flight_ID,
    CASE
        WHEN Delay_Minutes > 120 AND Weather_Condition = 'Clear' THEN 'Issue Food Voucher'
        ELSE 'No Voucher'
    END AS Voucher_Status
FROM Daily_Flight_Logs;

-- Query 2: The OR Rule - Multi-route primary hub tracking classification
SELECT Flight_ID,
    CASE
        WHEN Route_Code = 'DOH-LHR' OR Route_Code = 'DOH-JFK' THEN 'Primary Hub'
        ELSE 'Secondary Route'
    END AS Hub_Status
FROM Daily_Flight_Logs;

-- Query 3: Advanced Wrapper - Calculating total weather delay financial penalties
SELECT
    SUM(CASE
        WHEN Delay_Minutes > 180 AND Weather_Condition = 'Storm' THEN 5000
        ELSE 0
    END) AS Total_Weather_Penalty
FROM Daily_Flight_Logs;

-- EXTRA ROUND: Doha Operations Hub Challenge

-- Query 4: The AND Rule (Operational Alert)
SELECT Flight_Code,
    CASE
        WHEN Delay_Minutes > 60 AND Weather_Status = 'Snow' THEN 'De-icing Required'
        ELSE 'Standard Departure'
    END AS Winter_Protocol
FROM Doha_Operations_Hub;

-- Query 5: The OR Rule (Sector Mapping)
SELECT Flight_Code,
    CASE
        WHEN Destination = 'LHR' OR Destination = 'CDG' THEN 'European Sector'
        ELSE 'Global Sector'
    END AS Region_Category
FROM Doha_Operations_Hub;

-- Query 6: The AND Rule (Numerical Penalty)
SELECT Flight_Code,
    CASE
        WHEN Delay_Minutes > 120 AND Maintenance_Required = 'Yes' THEN 10000
        ELSE 0
    END AS Technical_Penalty
FROM Doha_Operations_Hub;

-- Query 7: The Wrapper SUM with AND (Grand Total)
SELECT
    SUM(CASE
        WHEN Delay_Minutes > 120 AND Maintenance_Required = 'Yes' THEN 10000
        ELSE 0
    END) AS Total_Tech_Penalty
FROM Doha_Operations_Hub;

-- Query 8: The Wrapper SUM with OR (Budget Allocation)
SELECT
    SUM(CASE
        WHEN Weather_Status = 'Storm' OR Weather_Status = 'Snow' THEN 2500
        ELSE 0
    END) AS Total_Weather_Budget
FROM Doha_Operations_Hub;

-- Query 9: The Mirror Rule with OR (Sector Aggregation)
SELECT
    CASE
        WHEN Destination = 'LHR' OR Destination = 'CDG' THEN 'European Sector'
        ELSE 'Global Sector'
    END AS Region_Category,
    COUNT(*) AS Total_Sector_Flights
FROM Doha_Operations_Hub
GROUP BY
    CASE
        WHEN Destination = 'LHR' OR Destination = 'CDG' THEN 'European Sector'
        ELSE 'Global Sector'
    END;

-- Query 10: The Mirror Rule with AND (Winter Protocol Grouping)
SELECT
    CASE
        WHEN Delay_Minutes > 60 AND Weather_Status = 'Snow' THEN 'De-icing Required'
        ELSE 'Standard Departure'
    END AS Winter_Protocol,
    COUNT(*) AS Flight_Count
FROM Doha_Operations_Hub
GROUP BY
    CASE
        WHEN Delay_Minutes > 60 AND Weather_Status = 'Snow' THEN 'De-icing Required'
        ELSE 'Standard Departure'
    END;
