-- Query 1: High-level volume traffic summary with a clean metric header
SELECT COUNT(*) AS Total_Flights FROM Flights;

-- Query 2: Fleet environmental footprint reporting using business-friendly spacing
SELECT SUM(Fuel_Burned_KG) AS "Total Fuel Burned KG" FROM Flights;

-- Query 3: Service standard baselining with an explicit descriptive alias
SELECT AVG(Delay_Minutes) AS Average_Delay_Minutes FROM Flights;

-- Query 4: Targeted hub disruption analysis with customized brand labeling
SELECT AVG(Delay_Minutes) AS Qatar_Average_Delay FROM Flights 
WHERE Airline_Name = 'Qatar Airways';

-- Query 5: Strategic corridor threshold reporting with presentation-ready formatting
SELECT MAX(Delay_Minutes) AS "Worst London Delay" FROM Flights 
WHERE Departure_Airport = 'LHR' AND Destination_Airport = 'DOH';

-- Part 2: Passenger Financial Compensation Auditing & Clean SLA Dashboards

-- Query 6: Financial volume summary utilizing an unbroken snake_case alias
SELECT COUNT(*) AS Total_Claims_Processed FROM Passenger_Refunds;

-- Query 7: Grand payout capitalization using executive whitespace formatting
SELECT SUM(Refund_Amount_USD) AS "Total Capital Refunded USD" FROM Passenger_Refunds;

-- Query 8: Operations efficiency analysis with an explicit internal metric label
SELECT AVG(Processing_Days) AS Average_SLA_Processing_Days FROM Passenger_Refunds;

-- Query 9: Luxury segment capital loss tracking with custom tier branding
SELECT SUM(Refund_Amount_USD) AS First_Class_Total_Payout 
FROM Passenger_Refunds
WHERE Booking_Tier = 'First';

-- Query 10: Disruption threshold tracking utilizing wrapped presentation double quotes
SELECT MAX(Processing_Days) AS "Max Mechanical SLA Days" 
FROM Passenger_Refunds 
WHERE Reason_Code = 'Mechanical Issue';
