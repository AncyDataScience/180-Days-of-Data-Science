# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Flight": ["QR-01", "EK-88", "IN-55", "AF-12", "BA-09"],
    "Destination": ["Dubai", "Dubai", "London", "Paris", "London"],
    "Class": ["Economy", "First", "Economy", "First", "Economy"]
}
df = pd.DataFrame(flight_data)

# Task 2: The AND Filter (&) - Both conditions must be true
dubai_economy = df[(df["Destination"] == "Dubai") & (df["Class"] == "Economy")]
print("--- Dubai Economy Flights ---")
print(dubai_economy)

# Task 3: The OR Filter (|) - At least one condition must be true
europe_flights = df[(df["Destination"] == "London") | (df["Destination"] == "Paris")]
print("\n--- European Flights ---")
print(europe_flights)

# Output
Task 2:
  Flight Destination    Class
0  QR-01       Dubai  Economy

Task 3:
  Flight Destination    Class
2  IN-55      London  Economy
3  AF-12       Paris    First
4  BA-09      London  Economy
