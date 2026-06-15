-- Query 1: Seat assignment layout cleaning replacing empty check-ins with text templates
SELECT COALESCE(Assigned_Seat, 'Not Checked In') AS Clean_Seat_Allocation
FROM Customer_Service_Tracker;

-- Query 2: Special service manifest substituting missing request records with standard markers
SELECT COALESCE(Special_Request, 'None') AS Standardized_Requests
FROM Customer_Service_Tracker;

-- Query 3: Accounting ledger financial mapping converting null charges to numeric zero parameters
SELECT COALESCE(Upgrade_Charges, 0) AS Clean_Upgrade_Revenue
FROM Customer_Service_Tracker;

-- Query 4: Filtered backup grouping extracting passenger profiles missing initial seat layouts
SELECT Passenger_Name, COALESCE(Special_Request, 'No Request') AS Cleaned_Request
FROM Customer_Service_Tracker
WHERE Assigned_Seat IS NULL;

-- Query 5: Advanced coalesce reporting pipeline summarizing total finances across normalized request categories
SELECT COALESCE(Special_Request, 'Standard') AS Request_Category, SUM(Upgrade_Charges) AS Total_Charges
FROM Customer_Service_Tracker
GROUP BY COALESCE(Special_Request, 'Standard');

-- Part 2: Hangar Supply Chain Optimization & Advanced Coalesce Dashboards

-- Query 6: Clean vendor listing substituting missing suppliers with hangar markers
SELECT COALESCE(Supplier_Name, 'Local Hangar Production') AS Standardized_Supplier_Name
FROM Hangar_Parts_Inventory;

-- Query 7: Missing classification volume audits counting parts across clean tier categories
SELECT COALESCE(Supplier_Tier, 'Unrated') AS Clean_Tier_Rating, COUNT(*) AS Total_Parts
FROM Hangar_Parts_Inventory
GROUP BY COALESCE(Supplier_Tier, 'Unrated');

-- Query 8: Recyclable asset valuation calculating grand total scrap revenue with fallback zero handling
SELECT SUM(COALESCE(Scrap_Value_USD, 0)) AS Total_Cleaned_Scrap_Value
FROM Hangar_Parts_Inventory;

-- Query 9: Macro vendor footprint analysis grouping dense third-party supplier blocks
SELECT COALESCE(Supplier_Name, 'Internal Assembly') AS Clean_Vendor_Group, COUNT(*) AS Total_Parts
FROM Hangar_Parts_Inventory
GROUP BY COALESCE(Supplier_Name, 'Internal Assembly')
HAVING COUNT(*) > 100;

-- Query 10: Grand master data sanitation pipeline isolating premium hardware asset sourcing arrays
SELECT COALESCE(Supplier_Name, 'Internal Assembly') AS Clean_Vendor_Group, AVG(Scrap_Value_USD) AS Avg_Scrap_Return
FROM Hangar_Parts_Inventory
GROUP BY COALESCE(Supplier_Name, 'Internal Assembly')
HAVING AVG(Scrap_Value_USD) > 2500
ORDER BY Avg_Scrap_Return DESC;
