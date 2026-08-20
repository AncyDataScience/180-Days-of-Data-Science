# Setup: Importing Pandas and creating the messy DataFrame
import pandas as pd

flight_data = {
    "Passenger_Name": ["  rahul ", "ANJALI", "  karthik  "],
    "Ticket_Code": ["tkt-01", "tkt-02", "tkt-03"]
}
df = pd.DataFrame(flight_data)

# Task 2: Strip the extra spaces from the names
df["Passenger_Name"] = df["Passenger_Name"].str.strip()

# Task 3: Make the passenger names uppercase
df["Passenger_Name"] = df["Passenger_Name"].str.upper()

# Task 4: Make the ticket codes uppercase
df["Ticket_Code"] = df["Ticket_Code"].str.upper()

# Task 5: View the Result
print(df)

# Output
  Passenger_Name Ticket_Code
0          RAHUL      TKT-01
1         ANJALI      TKT-02
2        KARTHIK      TKT-03
