# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Passenger": ["Rahul", "Anjali", "Karthik", "Priya", "Vikram"],
    "Destination": ["Dubai", "London", "Dubai", "Paris", "London"]
}
df = pd.DataFrame(flight_data)

# Task 2: Count the frequency of each Destination
print(df["Destination"].value_counts())

# Task 3: Calculate the percentage breakdown of Destinations
print(df["Destination"].value_counts(normalize=True))

# Output 
Task 2:
Dubai     2
London    2
Paris     1
Name: Destination, dtype: int64

Task 3:
Dubai     0.4
London    0.4
Paris     0.2
Name: Destination, dtype: float64
