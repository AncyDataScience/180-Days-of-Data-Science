-- Query 1: Executive layout formatting enforcing uniform uppercase departure codes
SELECT DISTINCT UPPER(Departure_Airport) AS Clean_Departure_Airport
FROM Flights;

-- Query 2: Lowercase data serialization for external system API data syncing
SELECT DISTINCT LOWER(Airline_Name) AS Serialized_Airline_Name
FROM Flights;

-- Query 3: Case-insensitive safety filter neutralizing typographic baggage-tag entry errors
SELECT * FROM Flights
WHERE LOWER(Destination_Airport) = 'ord';

-- Query 4: Case-insensitive aggregation counting total carrier records regardless of mixed-case entry
SELECT COUNT(*) AS Total_BA_Flights 
FROM Flights 
WHERE LOWER(Airline_Name) = 'british airways';

-- Query 5: Text-standardized reporting pipeline extracting unique uppercase arrivals from Doha
SELECT DISTINCT UPPER(Destination_Airport) AS Executive_Destinations 
FROM Flights 
WHERE LOWER(Departure_Airport) = 'doh';

-- Part 2: Global Air-Freight Supply Chain & Logistics Text Sanitation

-- Query 6: Standardized category catalog forcing lowercase indexing for warehouse logs
SELECT DISTINCT LOWER(Cargo_Type) AS Indexed_Cargo_Type
FROM Global_Cargo_Manifests;

-- Query 7: Uniform gateway inventory creating pristine uppercase airport code manifests
SELECT DISTINCT UPPER(Origin_Hub) AS Clean_Origin_Hub
FROM Global_Cargo_Manifests;

-- Query 8: Capitalized weight summation utilizing a case-normalized type filter
SELECT SUM(Weight_KG) AS Total_Electronics_Weight
FROM Global_Cargo_Manifests
WHERE LOWER(Cargo_Type) = 'electronics';

-- Query 9: Case-insensitive origin route filtering neutralizing cargo-agent keyboard errors
SELECT * FROM Global_Cargo_Manifests
WHERE LOWER(Origin_Hub) = 'jfk';

-- Query 10: Cross-border destination volume tracking using case-insensitive city matching
SELECT COUNT(*) AS Paris_Bound_Shipments
FROM Global_Cargo_Manifests
WHERE LOWER(Destination_Hub) = 'cdg';

-- Query 11: Consolidated freight weight breakdown grouping by text-normalized cargo dimensions
SELECT LOWER(Cargo_Type) AS Standardized_Cargo, SUM(Weight_KG) AS Total_Weight_KG
FROM Global_Cargo_Manifests
GROUP BY LOWER(Cargo_Type);

-- Query 12: Unified hub throughput profiling collapsing mixed-case flight entries into single counts
SELECT UPPER(Origin_Hub) AS Standardized_Origin, COUNT(*) AS Total_Manifests
FROM Global_Cargo_Manifests
GROUP BY UPPER(Origin_Hub);

-- Query 13: Case-insensitive classification leaderboard ranking freight lines by average density
SELECT LOWER(Cargo_Type) AS Standardized_Cargo, AVG(Weight_KG) AS Avg_Cargo_Weight
FROM Global_Cargo_Manifests
GROUP BY LOWER(Cargo_Type)
ORDER BY Avg_Cargo_Weight DESC;

-- Query 14: High-volume territory screening isolating regional gateways exceeding weight thresholds
SELECT UPPER(Destination_Hub) AS Standardized_Destination, SUM(Weight_KG) AS Total_Weight
FROM Global_Cargo_Manifests
GROUP BY UPPER(Destination_Hub) 
HAVING SUM(Weight_KG) > 50000;

-- Query 15: Grand master logistics pipeline isolating heavy pharmaceutical routes exiting Doha
SELECT LOWER(Cargo_Type) AS Standardized_Cargo, COUNT(DISTINCT Destination_Hub) AS Unique_Global_Destinations
FROM Global_Cargo_Manifests
WHERE LOWER(Origin_Hub) = 'doh' 
AND Weight_KG > 2000
GROUP BY LOWER(Cargo_Type)
ORDER BY Unique_Global_Destinations DESC;

-- Part 3: Qatar Airways Privilege Club Passenger Profile Text Standardization

-- Query 16: Elite tier inventory audit enforcing uniform uppercase membership classifications
SELECT DISTINCT UPPER(Membership_Tier) AS Clean_Membership_Tiers
FROM Qatar_Airways_Bookings;

-- Query 17: Lowercase customer index serialization for master system traveler profiles
SELECT DISTINCT LOWER(Passenger_Name) AS Indexed_Passenger_Names
FROM Qatar_Airways_Bookings;

-- Query 18: Case-insensitive cabin volume tracking counting total individual First Class bookings
SELECT COUNT(*) AS Total_First_Class_Bookings
FROM Qatar_Airways_Bookings
WHERE LOWER(Travel_Class) = 'first';

-- Query 19: High-value customer asset summation calculating cumulative platinum tier points
SELECT SUM(Loyalty_Points_Earned) AS Total_Platinum_Tier_Points
FROM Qatar_Airways_Bookings
WHERE LOWER(Membership_Tier) = 'platinum';

-- Query 20: Advanced text-standardized pipeline isolating unique booking classes for target flyers
SELECT DISTINCT UPPER(Travel_Class) AS Ahmed_Booked_Classes
FROM Qatar_Airways_Bookings
WHERE LOWER(Passenger_Name) = 'ahmed';

