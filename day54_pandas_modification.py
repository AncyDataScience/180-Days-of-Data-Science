# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Destination": ["London", "Paris", "Dubai", "New York"],
    "Passengers": [250, 180, 320, 410],
    "Ticket_Price": [500, 450, 300, 800]
}
df = pd.DataFrame(flight_data)

# Task 2: Add a Constant Column
df["Status"] = "On Time"

# Task 3: Add a Calculated Column (Vectorized Math)
df["Revenue"] = df["Passengers"] * df["Ticket_Price"]

# Task 4: View the Magic
print(df)

# Output 
  Destination  Passengers  Ticket_Price   Status  Revenue
0      London         250           500  On Time   125000
1       Paris         180           450  On Time    81000
2       Dubai         320           300  On Time    96000
3    New York         410           800  On Time   328000
