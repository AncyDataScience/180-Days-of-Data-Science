-- Query 1: Single critical disruption isolation for executive emergency briefings
SELECT * FROM Flights 
ORDER BY Delay_Minutes DESC
LIMIT 1;

-- Query 2: Identifying the top 5 most fuel-efficient flight operations
SELECT Flight_ID, Fuel_Burned_KG 
FROM Flights
ORDER BY Fuel_Burned_KG ASC
LIMIT 5;

-- Query 3: Top 3 longest delay vectors departing from the Doha hub
SELECT * FROM Flights
WHERE Departure_Airport = 'DOH'
ORDER BY Delay_Minutes DESC
LIMIT 3;

-- Query 4: Fast structural schema verification using a random data sample
SELECT * FROM Flights 
LIMIT 5;

-- Query 5: High-priority analysis tracking the top 10 most severe active delays
SELECT Flight_ID, Airline_Name, Delay_Minutes FROM Flights 
WHERE Delay_Minutes > 45
ORDER BY Delay_Minutes DESC
LIMIT 10;

-- Part 2: Premium Sales Operations & Revenue Ledger Analytics

-- Query 6: Identifying the single highest-value ticket transaction for revenue tracking
SELECT * FROM Ticketing_Transactions
ORDER BY Price_USD DESC
LIMIT 1;  

-- Query 7: Extracting the top 5 lowest entry-level ticket prices for market tier audits
SELECT Transaction_ID, Ticket_Class, Price_USD FROM Ticketing_Transactions
ORDER BY Price_USD ASC
LIMIT 5;

-- Query 8: High-end consumer behavior tracking within the First Class ticket segment
SELECT * FROM Ticketing_Transactions
WHERE Ticket_Class = 'First'
ORDER BY Price_USD DESC
LIMIT 3;

-- Query 9: Real-time pipeline validation via the 10 most recent transaction logs
SELECT * FROM Ticketing_Transactions
ORDER BY Purchase_Date DESC
LIMIT 10;

-- Query 10: Isolating top 5 high-yield transactions above the $1500 threshold
SELECT Passenger_Name, Price_USD 
FROM Ticketing_Transactions
WHERE Price_USD > 1500 
ORDER BY Price_USD DESC
LIMIT 5;

