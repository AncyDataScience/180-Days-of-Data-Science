# Setup: Importing Pandas and creating the messy DataFrame
import pandas as pd

flight_data = {
    "Destination": ["Tokyo", "London", "Dubai", "Paris"],
    "Passengers": [290, None, 320, 180], 
    "Revenue": [217500, 125000, None, 81000] 
}
df = pd.DataFrame(flight_data)

# Task 2: Count the missing data
print(df.isna().sum())

# Task 3: Drop any row with missing data
print(df.dropna())

# Task 4: Fill missing data with 0
print(df.fillna(0))

# Output
Task 2:
Destination    0
Passengers     1
Revenue        1
dtype: int64

Task 3:
  Destination  Passengers   Revenue
0       Tokyo       290.0  217500.0
3       Paris       180.0   81000.0

Task 4:
  Destination  Passengers   Revenue
0       Tokyo       290.0  217500.0
1      London         0.0  125000.0
2       Dubai       320.0       0.0
3       Paris       180.0   81000.0
