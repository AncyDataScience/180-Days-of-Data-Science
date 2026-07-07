-- Query 1: The DDL (Create the VIP_Members Table)
CREATE TABLE VIP_Members (
    Member_ID INT,
    First_Name VARCHAR(50),
    Loyalty_Points INT
);

-- Query 2: The DML (Insert One Row)
INSERT INTO VIP_Members (Member_ID, First_Name, Loyalty_Points)
VALUES (1, 'Arjun', 5000);

-- Query 3: The DML (Insert Multiple Rows)
INSERT INTO VIP_Members (Member_ID, First_Name, Loyalty_Points)
VALUES
    (2, 'Priya', 8500),
    (3, 'Karthik', 12000);

-- Query 4: The DDL (Create the Lounges Table)
CREATE TABLE Lounges (
    Lounge_ID INT,
    Lounge_Name VARCHAR(50)
);

-- Query 5: The DML (Populate the Lounges Table)
INSERT INTO Lounges (Lounge_ID, Lounge_Name)
VALUES
    (101, 'Al Mourjan Business Lounge'),
    (102, 'Oryx Lounge');
