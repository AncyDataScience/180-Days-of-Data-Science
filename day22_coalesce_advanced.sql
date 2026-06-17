-- Query 1: Multi-channel contact extraction chain isolating active communication targets
SELECT COALESCE(Primary_Phone, Backup_Email, Emergency_Contact, 'No Contact Method Available') AS Active_Communication_Target
FROM Passenger_Contact_Matrix;

-- Query 2: Correct numerical type replacement separating identifiers from financial fallbacks
SELECT Flight_Serial, COALESCE(Voucher_Compensation, 0) AS Clean_Voucher_Amount
FROM Flight_Disruption_Ledger;

-- Query 3: Consolidated matrix grand total encapsulating fallback zero logic inside aggregate wrappers
SELECT SUM(COALESCE(Hotel_Compensation, 0)) AS Total_Hotel_Expenditure
FROM Flight_Disruption_Ledger;

-- Query 4: Structural grouping vector mirroring clean string substitution blocks
SELECT COALESCE(Assigned_Gate, 'Hangar Standby') AS Clean_Gate_Assignment, COUNT(*) AS Total_Passengers
FROM Passenger_Contact_Matrix 
GROUP BY COALESCE(Assigned_Gate, 'Hangar Standby');

-- Query 5: Strict operational constraint validation using raw mathematical fallback expressions inside HAVING
SELECT Hub_Airport, SUM(COALESCE(Voucher_Compensation, 0)) AS Total_Voucher_Cost
FROM Flight_Disruption_Ledger
GROUP BY Hub_Airport
HAVING SUM(COALESCE(Voucher_Compensation, 0)) > 5000
ORDER BY Total_Voucher_Cost DESC;
