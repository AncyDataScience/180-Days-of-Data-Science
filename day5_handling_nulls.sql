-- Query 1: Unassigned gate audit for airport ground control
SELECT * FROM Flight_Status WHERE Assigned_Gate IS NULL;

-- Query 2: Active arrival screen synchronization for completed landings
SELECT Flight_ID, Actual_Landing_Time FROM Flight_Status WHERE Actual_Landing_Time IS NOT NULL;

-- Query 3: Multi-parameter system audit for data completeness
SELECT * FROM Flight_Status WHERE Airline_Name IS NOT NULL AND Assigned_Gate IS NULL;

-- Query 4: Identifying system entry omissions for flight delay metrics
SELECT Flight_ID, Airline_Name FROM Flight_Status WHERE Delay_Minutes IS NULL;

-- Query 5: Active mid-air flight tracking for airborne aircraft
SELECT Flight_ID FROM Flight_Status WHERE Actual_Landing_Time IS NULL;

-- Part 2: Passenger Loyalty Profile Integrity & Baggage Claim Auditing

-- Query 6: Identifying non-loyalty passengers for promotional outreach campaigns
SELECT * FROM Passenger_Profiles WHERE Frequent_Flyer_Number IS NULL;

-- Query 7: Safety compliance audit for missing emergency contact credentials
SELECT Passenger_ID, First_Name FROM Passenger_Profiles WHERE Emergency_Contact_Phone IS NULL;

-- Query 8: Premium lounge luggage delivery routing verification
SELECT * FROM Baggage_Claims WHERE Lounge_Delivery_Location IS NOT NULL;

-- Query 9: Financial ledger reconciliation for processed baggage insurance payouts
SELECT Claim_ID, Compensation_Paid_USD FROM Baggage_Claims WHERE Compensation_Paid_USD IS NOT NULL;

-- Query 10: Extracting fully completed profiles for priority passenger comfort mapping
SELECT Passenger_ID, Frequent_Flyer_Number FROM Passenger_Profiles WHERE Frequent_Flyer_Number IS NOT NULL AND Seat_Preference IS NOT NULL;
