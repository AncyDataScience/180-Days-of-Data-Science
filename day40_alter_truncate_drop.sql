-- Query 1: Adding a new column to an existing table structure
ALTER TABLE VIP_Members 
ADD Email_Address VARCHAR(100);

-- Query 2: Renaming a column for standardized naming conventions
ALTER TABLE VIP_Members 
RENAME COLUMN First_Name TO Member_Name;

-- Query 3: Dropping a column to comply with data privacy policies
ALTER TABLE VIP_Members 
DROP COLUMN Email_Address;

-- Query 4: The Rapid Wipe - Emptying all data while preserving structure
TRUNCATE TABLE Lounges;

-- Query 5: The Bulldozer - Permanently removing the table from the database
DROP TABLE Lounges;
