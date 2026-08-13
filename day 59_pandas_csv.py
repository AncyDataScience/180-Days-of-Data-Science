# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Airline": ["Qatar", "Emirates", "Indigo"],
    "Passengers": [250, 300, 150]
}
df = pd.DataFrame(flight_data)

# Task 2: Save the Data to a CSV file (No index numbers)
df.to_csv("airport_data.csv", index=False)

# Task 3: Load the Data back from the CSV file
saved_data = pd.read_csv("airport_data.csv")

# Task 4: View the Loaded File
print(saved_data)

# Output
    Airline  Passengers
0     Qatar         250
1  Emirates         300
2    Indigo         150
