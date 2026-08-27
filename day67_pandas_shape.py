# Setup: Importing Pandas and creating the messy DataFrame
import pandas as pd

flight_data = {
    "Flight_No": ["QR-01", "EK-88", "IN-55"],
    "Dest": ["Dubai", "London", "Paris"],
    "Internal_System_ID": ["SYS-992", "SYS-114", "SYS-008"]
}
df = pd.DataFrame(flight_data)

# Task 2: Rename the column to be more professional
df = df.rename(columns={"Dest": "Destination"})

# Task 3: Drop the useless column
df = df.drop(columns=["Internal_System_ID"])

# Task 4: View the Clean Table
print(df)

# Output 
  Flight_No Destination
0     QR-01       Dubai
1     EK-88      London
2     IN-55       Paris
