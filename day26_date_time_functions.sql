-- Query 1: Year Extraction for annual fleet management review
SELECT Flight_Number, EXTRACT(YEAR FROM Travel_Date) AS Travel_Year
FROM Flight_Schedules;

-- Query 2: Month Filtering targeting winter holiday operations
SELECT Flight_Number, Travel_Date 
FROM Flight_Schedules 
WHERE EXTRACT(MONTH FROM Travel_Date) = 12;

-- Query 3: Date Grouping Mirror calculating passenger volumes by month
SELECT EXTRACT(MONTH FROM Travel_Date) AS Travel_Month,
    SUM(Passengers_Booked) AS Total_Passengers
FROM Flight_Schedules
GROUP BY EXTRACT(MONTH FROM Travel_Date);

-- Query 4: Dynamic Current Date filtering for live operational dashboards
SELECT Flight_Number, Passengers_Booked 
FROM Flight_Schedules
WHERE Travel_Date = CURRENT_DATE;

-- Query 5: Combining EXTRACT with CASE WHEN for seasonal classification
SELECT Flight_Number,
    CASE
        WHEN EXTRACT(MONTH FROM Travel_Date) IN (6, 7, 8) THEN 'Summer Schedule'
        ELSE 'Standard Schedule'
    END AS Season_Type
FROM Flight_Schedules;
