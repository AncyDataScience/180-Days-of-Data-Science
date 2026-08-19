# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Flight": ["Qatar-01", "Emirates-88", "Indigo-55"],
    "Date_Text": ["2026-01-15", "2026-06-20", "2026-12-05"]
}
df = pd.DataFrame(flight_data)

# Task 2: Convert text to real Datetime objects
df["Date_Text"] = pd.to_datetime(df["Date_Text"])

# Task 3: Extract the Month into a new column using the .dt accessor
df["Month"] = df["Date_Text"].dt.month

# Task 4: View the Result
print(df)

# Output
        Flight  Date_Text  Month
0     Qatar-01 2026-01-15      1
1  Emirates-88 2026-06-20      6
2    Indigo-55 2026-12-05     12
