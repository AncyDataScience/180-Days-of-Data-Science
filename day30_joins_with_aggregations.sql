-- Query 1: Join + Row-Level Math Calculation for individual flight revenue
SELECT f.Flight_ID, r.Destination, (f.Passengers * r.Ticket_Price) AS Flight_Revenue
FROM Flights AS f
INNER JOIN Routes AS r
    ON f.Route_Code = r.Route_Code;

-- Query 2: Join + COUNT + GROUP BY to analyze flight frequency per destination
SELECT r.Destination, COUNT(f.Flight_ID) AS Total_Flights
FROM Flights AS f
INNER JOIN Routes AS r
    ON f.Route_Code = r.Route_Code
GROUP BY r.Destination;

-- Query 3: Join + SUM + GROUP BY to calculate total passenger volume per route
SELECT r.Destination, SUM(f.Passengers) AS Total_Passengers
FROM Flights AS f
INNER JOIN Routes AS r
    ON f.Route_Code = r.Route_Code
GROUP BY r.Destination;

-- Query 4: Join + SUM + GROUP BY + ORDER BY to rank most profitable destinations
SELECT r.Destination, SUM(f.Passengers * r.Ticket_Price) AS Total_Route_Revenue
FROM Flights AS f
INNER JOIN Routes AS r
    ON f.Route_Code = r.Route_Code
GROUP BY r.Destination
ORDER BY Total_Route_Revenue DESC;

-- Query 5: The Grand Master - Join + Aggregation + HAVING for high-traffic filtering
SELECT r.Destination, SUM(f.Passengers) AS Total_Passengers
FROM Flights AS f
INNER JOIN Routes AS r
    ON f.Route_Code = r.Route_Code
GROUP BY r.Destination
HAVING SUM(f.Passengers) > 500;
