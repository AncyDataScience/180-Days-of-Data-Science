-- Query 1: The Basic LAG() to track yesterday's delay across all flights
SELECT fs.Aircraft_Code, 
       fs.Flight_Date, 
       fs.Delay_Minutes,
       LAG(fs.Delay_Minutes) OVER (ORDER BY fs.Flight_Date) AS Previous_Delay
FROM Flight_Status AS fs;

-- Query 2: The Basic LEAD() to predict tomorrow's delay trend
SELECT fs.Aircraft_Code, 
       fs.Flight_Date, 
       fs.Delay_Minutes,
       LEAD(fs.Delay_Minutes) OVER (ORDER BY fs.Flight_Date) AS Next_Delay
FROM Flight_Status AS fs;

-- Query 3: LAG() + PARTITION BY for aircraft-specific historical tracking
SELECT fs.Aircraft_Code, 
       fs.Flight_Date, 
       fs.Delay_Minutes,
       LAG(fs.Delay_Minutes) OVER (PARTITION BY fs.Aircraft_Code ORDER BY fs.Flight_Date) AS Previous_Flight_Delay 
FROM Flight_Status AS fs;

-- Query 4: Window Function + Math to calculate the direct delay difference
SELECT fs.Aircraft_Code, 
       fs.Flight_Date,
       fs.Delay_Minutes - LAG(fs.Delay_Minutes) OVER (PARTITION BY fs.Aircraft_Code ORDER BY fs.Flight_Date) AS Delay_Difference
FROM Flight_Status AS fs;

-- Query 5: The Grand Master - CTE + LAG() to filter escalating delay instances
WITH Delay_Tracking AS (
    SELECT fs.Aircraft_Code, 
           fs.Flight_Date, 
           fs.Delay_Minutes,
           LAG(fs.Delay_Minutes) OVER (PARTITION BY fs.Aircraft_Code ORDER BY fs.Flight_Date) AS Previous_Flight_Delay 
    FROM Flight_Status AS fs
)
SELECT * FROM Delay_Tracking
WHERE Delay_Minutes > Previous_Flight_Delay;
