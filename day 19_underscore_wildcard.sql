-- Query 1: Strict component screening isolating 5-character engine asset codes
SELECT * FROM Maintenance_Registry
WHERE Asset_ID LIKE 'ENG-_';

-- Query 2: Warehouse zone audit isolating structural hangar bay locations
SELECT * FROM Maintenance_Registry
WHERE Bay_Location LIKE 'BAY_';

-- Query 3: Fixed-format structural tracking searching for specific missing middle character patterns
SELECT * FROM Maintenance_Registry
WHERE Asset_ID LIKE 'E_G-_';

-- Query 4: Unique localized inventory tracking extracting unique 4-character bay names starting with 'B'
SELECT DISTINCT Bay_Location FROM Maintenance_Registry
WHERE Bay_Location LIKE 'B___';

-- Query 5: Advanced underscore pipeline summing wing maintenance costs across strict single-character extensions
SELECT SUM(Repair_Cost_USD) AS Total_Wing_Repair_Expense
FROM Maintenance_Registry
WHERE Asset_ID LIKE 'WNG-_';
