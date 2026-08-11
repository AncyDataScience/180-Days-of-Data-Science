# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Airline": ["Qatar", "Emirates", "Qatar", "Emirates", "Indigo"],
    "Destination": ["London", "Dubai", "Paris", "London", "Dubai"],
    "Revenue": [5000, 7000, 4000, 8000, 2000]
}
df = pd.DataFrame(flight_data)

# Task 2: Total Revenue by Airline
print(df.groupby("Airline")["Revenue"].sum())

# Task 3: Average Revenue by Airline
print(df.groupby("Airline")["Revenue"].mean())

# Output
Task 2:
Airline
Emirates    15000
Indigo       2000
Qatar        9000
Name: Revenue, dtype: int64

Task 3:
Airline
Emirates    7500.0
Indigo      2000.0
Qatar       4500.0
Name: Revenue, dtype: float64
