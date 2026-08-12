# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Airline": ["Qatar", "Emirates", "Indigo", "Qatar", "Emirates"],
    "Revenue": [5000, 7000, 2000, 4000, 8000],
    "Cost": [3000, None, 1500, 2500, None]
}
df = pd.DataFrame(flight_data)

# Task 2: Clean the Data (Fill missing costs with 0)
df = df.fillna(0)

# Task 3: Feature Engineering (Calculate Profit)
df["Profit"] = df["Revenue"] - df["Cost"]

# Task 4: Aggregation (Total Profit by Airline)
print(df.groupby("Airline")["Profit"].sum())

# Output
Airline
Emirates    15000.0
Indigo        500.0
Qatar        3500.0
Name: Profit, dtype: float64
