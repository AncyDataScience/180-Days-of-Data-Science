# Setup: Importing Pandas and creating the DataFrames
import pandas as pd

# Table 1: Flight Data
flights_data = {
    "Airline": ["Qatar", "Emirates", "Indigo"],
    "Passengers": [250, 300, 150]
}
flights = pd.DataFrame(flights_data)

# Table 2: Airline HQ Data
hq_data = {
    "Airline": ["Emirates", "Qatar", "Indigo"],
    "Country": ["UAE", "Qatar", "India"]
}
headquarters = pd.DataFrame(hq_data)

# Task 2: Merge the Tables on the common column "Airline"
master_table = pd.merge(flights, headquarters, on="Airline")

# Task 3: View the Master Table
print(master_table)

# Output
    Airline  Passengers Country
0     Qatar         250   Qatar
1  Emirates         300     UAE
2    Indigo         150   India
