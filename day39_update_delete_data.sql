-- Query 1: The Basic UPDATE to overwrite specific numeric values
UPDATE VIP_Members
SET Loyalty_Points = 6500
WHERE Member_ID = 1;

-- Query 2: UPDATE with Math for dynamic value aggregation
UPDATE VIP_Members
SET Loyalty_Points = Loyalty_Points + 1000
WHERE First_Name = 'Priya';

-- Query 3: Updating Text Data for string corrections
UPDATE VIP_Members 
SET First_Name = 'Karthikeyan' 
WHERE Member_ID = 3;

-- Query 4: The Basic DELETE to remove targeted anomalous records
DELETE FROM VIP_Members
WHERE Member_ID = 99;

-- Query 5: The Grand Master (Bulk DELETE) for automated system cleanup
DELETE FROM VIP_Members
WHERE Loyalty_Points < 1000;
