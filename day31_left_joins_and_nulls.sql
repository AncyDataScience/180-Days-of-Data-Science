-- Query 1: The Basic LEFT JOIN to view all passengers and meal status
SELECT m.First_Name, s.Meal_Type
FROM Flight_Manifest AS m
LEFT JOIN Special_Meals AS s
    ON m.Passenger_ID = s.Passenger_ID;

-- Query 2: Finding Missing Data (IS NULL) to calculate standard meal load
SELECT m.First_Name, m.Ticket_Class
FROM Flight_Manifest AS m
LEFT JOIN Special_Meals AS s
    ON m.Passenger_ID = s.Passenger_ID
WHERE s.Meal_Type IS NULL;

-- Query 3: LEFT JOIN + CASE WHEN to replace NULLs with default values
SELECT m.First_Name,
    CASE
        WHEN s.Meal_Type IS NULL THEN 'Standard Meal'
        ELSE s.Meal_Type
    END AS Final_Meal_Order
FROM Flight_Manifest AS m
LEFT JOIN Special_Meals AS s
    ON m.Passenger_ID = s.Passenger_ID;

-- Query 4: LEFT JOIN + COUNT + GROUP BY for ticket class aggregation
SELECT m.Ticket_Class, COUNT(s.Meal_Type) AS Total_Special_Meals
FROM Flight_Manifest AS m
LEFT JOIN Special_Meals AS s
    ON m.Passenger_ID = s.Passenger_ID
GROUP BY m.Ticket_Class;

-- Query 5: The Grand Master - LEFT JOIN + Advanced Analytics grouped by CASE WHEN
SELECT 
    CASE
        WHEN s.Meal_Type IS NULL THEN 'Standard Meal'
        ELSE s.Meal_Type
    END AS Final_Meal_Order,
    COUNT(m.Passenger_ID) AS Passenger_Count
FROM Flight_Manifest AS m
LEFT JOIN Special_Meals AS s
    ON m.Passenger_ID = s.Passenger_ID
GROUP BY 
    CASE
        WHEN s.Meal_Type IS NULL THEN 'Standard Meal'
        ELSE s.Meal_Type
    END;
