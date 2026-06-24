-- Query 1: The Basic Join (No Aliases) for explicit mapping
SELECT Flight_Schedule.Flight_Number, Aircraft_Specs.Aircraft_Model
FROM Flight_Schedule
INNER JOIN Aircraft_Specs
    ON Flight_Schedule.Aircraft_Code = Aircraft_Specs.Aircraft_Code;

-- Query 2: The Alias Upgrade (The Pro Way) for streamlined syntax
SELECT s.Flight_Number, a.Aircraft_Model
FROM Flight_Schedule AS s
INNER JOIN Aircraft_Specs AS a
    ON s.Aircraft_Code = a.Aircraft_Code;

-- Query 3: Join + WHERE Clause for targeted operational filtering
SELECT s.Flight_Number, s.Destination
FROM Flight_Schedule AS s
INNER JOIN Aircraft_Specs AS a
    ON s.Aircraft_Code = a.Aircraft_Code
WHERE a.Aircraft_Model = 'Airbus A380';

-- Query 4: Join + ORDER BY for logistical sorting arrays
SELECT s.Flight_Number, s.Destination, a.Seating_Capacity
FROM Flight_Schedule AS s
INNER JOIN Aircraft_Specs AS a
    ON s.Aircraft_Code = a.Aircraft_Code
ORDER BY a.Seating_Capacity DESC;

-- Query 5: The Grand Master - Join + CASE WHEN for parking bay classification
SELECT s.Flight_Number,
    CASE
        WHEN a.Seating_Capacity > 300 THEN 'Wide-Body Bay'
        ELSE 'Narrow-Body Bay'
    END AS Parking_Assignment
FROM Flight_Schedule AS s
INNER JOIN Aircraft_Specs AS a
    ON s.Aircraft_Code = a.Aircraft_Code;
