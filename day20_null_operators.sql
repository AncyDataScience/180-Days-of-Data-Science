-- Query 1: Active maintenance screening isolating ongoing aircraft repairs
SELECT * FROM Hangar_Maintenance_Logs
WHERE Resolution_Notes IS NULL;

-- Query 2: Completed job archiving extracting finalized technical entries
SELECT * FROM Hangar_Maintenance_Logs
WHERE Resolution_Notes IS NOT NULL;

-- Query 3: Financial audit reconciliation identifying completed tasks missing invoices
SELECT * FROM Hangar_Maintenance_Logs
WHERE Resolution_Notes IS NOT NULL AND Actual_Repair_Cost IS NULL;

-- Query 4: Unique active fleet extraction tracking grounded tail numbers inside the hangar
SELECT DISTINCT Tail_Number FROM Hangar_Maintenance_Logs
WHERE Actual_Repair_Cost IS NULL;

-- Query 5: Advanced null aggregation pipeline calculating cumulative finalized maintenance costs
SELECT SUM(Actual_Repair_Cost) AS Total_Settled_Maintenance_Cost
FROM Hangar_Maintenance_Logs
WHERE Actual_Repair_Cost IS NOT NULL;

-- Part 2: Cargo Supply Chain Logistics & Dynamic Missing-Data Dashboards

-- Query 6: Stuck cargo volume check counting total shipments pending customs clearance
SELECT COUNT(*) AS Total_Pending_Shipments
FROM Cargo_Shipping_Manifests
WHERE Customs_Clearance_Date IS NULL;

-- Query 7: Cleared cargo location leaderboards ranking cities by cleared shipment volumes
SELECT Destination_City, COUNT(*) AS Cleared_Shipments_Count
FROM Cargo_Shipping_Manifests
WHERE Customs_Clearance_Date IS NOT NULL 
GROUP BY Destination_City
ORDER BY Cleared_Shipments_Count DESC;

-- Query 8: Insurance claim concentration audit summing total damage currency paid per destination
SELECT Destination_City, SUM(Insurance_Payout_USD) AS Total_Damage_Claims_Paid
FROM Cargo_Shipping_Manifests
WHERE Insurance_Payout_USD IS NOT NULL
GROUP BY Destination_City;

-- Query 9: Pure operational transit scanning isolating cleared shipments with zero damage claims
SELECT * FROM Cargo_Shipping_Manifests
WHERE Customs_Clearance_Date IS NOT NULL 
AND Insurance_Payout_USD IS NULL;

-- Query 10: The Grand Master Null-Filtration Pipeline identifying high-risk delayed operational clusters
SELECT Destination_City, COUNT(*) AS Critical_Backlog_Count
FROM Cargo_Shipping_Manifests
WHERE Customs_Clearance_Date IS NULL 
GROUP BY Destination_City
ORDER BY Critical_Backlog_Count DESC;
