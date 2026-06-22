-- Query 1: Combining Names with CONCAT
SELECT Passenger_ID, CONCAT(First_Name, ' ', Last_Name) AS Full_Name
FROM Passenger_Manifest;

-- Query 2: Adding Custom Text with CONCAT for digital displays
SELECT Passenger_ID, CONCAT('Welcome aboard, ', First_Name) AS Welcome_Message
FROM Passenger_Manifest;

-- Query 3: Data Cleaning with REPLACE for gate naming standards
SELECT Passenger_ID, REPLACE(Gate_Code, 'Gate-', 'G-') AS New_Gate_Code
FROM Passenger_Manifest;

-- Query 4: Security Audit with LENGTH targeting short name values
SELECT First_Name, Last_Name 
FROM Passenger_Manifest
WHERE LENGTH(Last_Name) < 3;

-- Query 5: The Grand Master - Dynamic CONCAT nested inside CASE WHEN
SELECT Passenger_ID,
    CASE
        WHEN Seat_Category = 'Window' THEN CONCAT('Window seat for ', First_Name)
        ELSE CONCAT('Standard seat for ', First_Name)
    END AS Cabin_Instruction
FROM Passenger_Manifest;

-- EXTRA ROUND: Doha Baggage Tracking Challenge

-- Query 6: Combining Names (The Single Space Rule)
SELECT Tag_ID, CONCAT(Passenger_First, ' ', Passenger_Last) AS Passenger_Full_Name
FROM Baggage_Tracking;

-- Query 7: Data Cleaning with REPLACE for barcode system update
SELECT Passenger_First, REPLACE(Tag_ID, 'TAG-', 'QATAR-') AS Updated_Tag_ID
FROM Baggage_Tracking;

-- Query 8: Security Audit with LENGTH for manual X-ray checks
SELECT Tag_ID, Bag_Type 
FROM Baggage_Tracking
WHERE LENGTH(Bag_Type) > 8;

-- Query 9: Adding Custom Text with CONCAT for routing labels
SELECT Tag_ID, CONCAT('Routing to: ', Destination_Airport) AS Routing_Label
FROM Baggage_Tracking;

-- Query 10: The Grand Master - CONCAT inside CASE WHEN for handling instructions
SELECT Tag_ID,
    CASE
        WHEN Destination_Airport = 'DOH' THEN CONCAT('Home Base for ', Passenger_Last)
        ELSE CONCAT('Transit for ', Passenger_Last)
    END AS Handling_Instruction
FROM Baggage_Tracking;
