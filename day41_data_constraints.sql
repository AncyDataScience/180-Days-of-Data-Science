-- Query 1: The PRIMARY KEY constraint for unique row identification
CREATE TABLE Airports (
    Airport_Code VARCHAR(3) PRIMARY KEY,
    City_Name VARCHAR(50)
);

-- Query 2: The NOT NULL guard to prevent missing essential data
CREATE TABLE Flight_Crew (
    Crew_ID INT,
    First_Name VARCHAR(50) NOT NULL
);

-- Query 3: The UNIQUE guard to prevent duplicate entries
CREATE TABLE Aircraft (
    Aircraft_ID INT,
    Tail_Number VARCHAR(10) UNIQUE
);

-- Query 4: The Combination Master - Building highly secure tables
CREATE TABLE Pilots (
    Pilot_ID INT PRIMARY KEY,
    Pilot_Name VARCHAR(50) NOT NULL,
    License_Number VARCHAR(20) UNIQUE
);

-- Query 5: The FOREIGN KEY bridge linking two tables securely
CREATE TABLE Flight_Schedules (
    Schedule_ID INT PRIMARY KEY,
    Flight_Date DATE,
    Pilot_ID INT,
    FOREIGN KEY (Pilot_ID) REFERENCES Pilots (Pilot_ID)
);
