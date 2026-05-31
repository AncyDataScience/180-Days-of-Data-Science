-- Query 1: Airline alliance tracking for global "Airways" brands
SELECT * FROM Global_Routes 
WHERE Airline_Name LIKE '%Airways%';

-- Query 2: Fleet segregation audit for Boeing manufactured aircraft
SELECT Route_ID, Aircraft_Type FROM Global_Routes 
WHERE Aircraft_Type LIKE 'Boeing%';

-- Query 3: Supply chain logistics audit for standard catering profiles
SELECT * FROM Global_Routes
WHERE Catering_Profile LIKE 'Standard%';

-- Query 4: Regional flight identifier extraction via trailing route codes
SELECT Route_ID, Airline_Name FROM Global_Routes 
WHERE Route_ID LIKE '%QA';

-- Query 5: High-precision cross-reference for Qatar premium wide-body fleets
SELECT * FROM Global_Routes 
WHERE Aircraft_Type LIKE '%350%' AND Airline_Name LIKE '%Qatar%';

-- Part 2: Passenger Manifest Auditing & Safety Maintenance Text Parsing

-- Query 6: VIP protocol identification via nested title prefixes
SELECT * FROM Passenger_Manifests 
WHERE Passenger_FullName LIKE '%Captain%';

-- Query 7: Regional surname extraction for customized family tracking
SELECT * FROM Passenger_Manifests
WHERE Passenger_FullName LIKE '%Al-Thani';

-- Query 8: Corporate domain verification for official email account audits
SELECT Passenger_FullName, Email_Address FROM Passenger_Manifests
WHERE Email_Address LIKE '%qatar.com';

-- Query 9: Legacy reservation reference lookup via trailing character flags
SELECT * FROM Passenger_Manifests
WHERE Booking_Reference LIKE '%X';
 
-- Query 10: Target email provider segmenting for customer outreach data pipelines
SELECT Booking_Reference, Email_Address FROM Passenger_Manifests
WHERE Email_Address LIKE '%hotmail%';

-- Query 11: Critical system safety scan for nested hydraulic system defects
SELECT * FROM Incident_Logs 
WHERE Maintenance_Notes LIKE '%Hydraulic%';

-- Query 12: Regional carrier fleet tail number prefix isolation
SELECT Log_ID, Aircraft_Tail_Number FROM Incident_Logs
WHERE Aircraft_Tail_Number LIKE 'A7-%';

-- Query 13: Maintenance action tracking for system re-calibration entries
SELECT * FROM Incident_Logs
WHERE Maintenance_Notes LIKE '%re-calibrated';

-- Query 14: Safety escalation dashboard isolation via high-severity prefixes
SELECT Aircraft_Tail_Number, Severity_Status FROM Incident_Logs 
WHERE Severity_Status LIKE 'Critical%';

-- Query 15: Cross-referencing high-severity engine log records
SELECT * FROM Incident_Logs 
WHERE Maintenance_Notes LIKE '%engine%' AND Severity_Status LIKE '%Level-3%';
