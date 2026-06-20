-- Query 1: The IN Operator for multi-hub filtering
SELECT Waybill_ID, Hub_Code 
FROM Global_Cargo_Shipments
WHERE Hub_Code IN ('JFK', 'DXB', 'LHR');

-- Query 2: The BETWEEN Operator for weight range extraction
SELECT Waybill_ID, Weight_KG
FROM Global_Cargo_Shipments
WHERE Weight_KG BETWEEN 1500 AND 3000;

-- Query 3: Combining IN within CASE WHEN for sector classification
SELECT Waybill_ID,
    CASE
        WHEN Hub_Code IN ('SIN', 'NRT', 'HKG') THEN 'Asian Sector'
        ELSE 'Global Sector'
    END AS Sector_Classification
FROM Global_Cargo_Shipments;

-- Query 4: Combining BETWEEN within CASE WHEN for dynamic tiering
SELECT Waybill_ID,
    CASE
        WHEN Weight_KG BETWEEN 5000 AND 10000 THEN 'Heavy Freighter'
        WHEN Weight_KG BETWEEN 1000 AND 4999 THEN 'Standard Deck'
        ELSE 'Light Cargo'
    END AS Cargo_Category
FROM Global_Cargo_Shipments;

-- Query 5: Advanced aggregation combining SUM and IN filters
SELECT SUM(Value_USD) AS Total_Middle_East_Value
FROM Global_Cargo_Shipments
WHERE Hub_Code IN ('DXB', 'DOH', 'AUH');
