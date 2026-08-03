# Task 1: Import Pandas
import pandas as pd

# Task 2: Create raw data dictionary
flight_data = {
    "Destination": ["London", "Paris", "Dubai"],
    "Passengers": [250, 180, 320]
}

# Task 3: Convert to a DataFrame (Table)
df = pd.DataFrame(flight_data)

# Task 4: View the DataFrame
print(df)

# OUTPUT

  Destination  Passengers
0      London         250
1       Paris         180
2       Dubai         320
