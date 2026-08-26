# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Flight": ["Qatar-01", "Emirates-88", "Indigo-55", "AirFrance-12"],
    "Price": [500, 800, 200, 1200]
}
df = pd.DataFrame(flight_data)

# Task 2: Sort Lowest to Highest (Ascending)
cheapest_first = df.sort_values(by="Price")
print("--- Cheapest Flights ---")
print(cheapest_first)

# Task 3: Sort Highest to Lowest (Descending)
expensive_first = df.sort_values(by="Price", ascending=False)
print("\n--- Most Expensive Flights ---")
print(expensive_first)

# Output
Task 2:
         Flight  Price
2     Indigo-55    200
0      Qatar-01    500
1   Emirates-88    800
3  AirFrance-12   1200

Task 3:
         Flight  Price
3  AirFrance-12   1200
1   Emirates-88    800
0      Qatar-01    500
2     Indigo-55    200
