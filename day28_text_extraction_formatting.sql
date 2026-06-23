-- Query 1: The UPPER Rule for standardizing border control data
SELECT Passport_ID, UPPER(Last_Name) AS Standard_Last_Name
FROM Passenger_Passports;

-- Query 2: The SUBSTRING Rule for extracting 3-letter country codes
SELECT Passport_ID, SUBSTRING(Nationality, 1, 3) AS Country_Code
FROM Passenger_Passports;

-- Query 3: The Grand Master - Nesting UPPER and SUBSTRING for official display codes
SELECT Passport_ID, SUBSTRING(UPPER(Nationality), 1, 3) AS Official_Country_Code 
FROM Passenger_Passports;

-- Query 4: The LOWER Rule for standardizing internal formats
SELECT Flight_ID, LOWER(Pilot_Name) AS Standard_Pilot_Name
FROM International_Flight_Roster;

-- Query 5: The UPPER Rule for digital display boards
SELECT Flight_ID, UPPER(Destination_City) AS Standard_Destination
FROM International_Flight_Roster;

-- Query 6: The SUBSTRING Rule for extracting manufacturer strings
SELECT Flight_ID, SUBSTRING(Aircraft_Type, 1, 6) AS Manufacturer
FROM International_Flight_Roster;

-- Query 7: The Grand Master Nesting (UPPER + SUBSTRING) for city codes
SELECT Flight_ID, SUBSTRING(UPPER(Destination_City), 1, 3) AS City_Code
FROM International_Flight_Roster;

-- Query 8: The Grand Master Nesting (LOWER + SUBSTRING) for login generation
SELECT Flight_ID, SUBSTRING(LOWER(Pilot_Name), 1, 4) AS Pilot_Login_Prefix
FROM International_Flight_Roster;

-- Query 9: Text Functions inside CONCAT for official manifests
SELECT Flight_ID, CONCAT('Capt. ', UPPER(Pilot_Name)) AS Official_Title
FROM International_Flight_Roster;

-- Query 10: Text Functions inside a WHERE Clause for automated filtering
SELECT Flight_ID, Aircraft_Type 
FROM International_Flight_Roster
WHERE SUBSTRING(Aircraft_Type, 1, 6) = 'Boeing';
