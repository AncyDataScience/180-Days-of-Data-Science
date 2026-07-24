-- Query 1: The Basic Index to accelerate frequent single-column searches
CREATE INDEX idx_flight_number ON Flight_Logs (Flight_Number);

-- Query 2: The Date Index for optimizing temporal filtering and reporting
CREATE INDEX idx_departure_date ON Flight_Logs (Departure_Date);

-- Query 3: The Composite Index for multi-column query acceleration
CREATE INDEX idx_pilot_date ON Flight_Logs (Pilot_ID, Departure_Date);

-- Query 4: The Unique Index to guarantee uniqueness while boosting lookup speed
CREATE UNIQUE INDEX idx_unique_log ON Flight_Logs (Log_ID);

-- Query 5: Dropping an Index to reclaim storage and optimize insertion speeds
DROP INDEX idx_departure_date;
