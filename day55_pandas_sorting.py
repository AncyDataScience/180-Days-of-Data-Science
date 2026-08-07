# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Destination": ["Tokyo", "London", "Dubai", "Paris", "New York"],
    "Passengers": [290, 250, 320, 180, 410],
    "Revenue": [217500, 125000, 96000, 81000, 328000]
}
df = pd.DataFrame(flight_data)

# Task 2: Sort Ascending (Lowest to Highest Passengers)
print(df.sort_values(by="Passengers"))

# Task 3: Sort Descending (Highest to Lowest Revenue)
print(df.sort_values(by="Revenue", ascending=False))

# Output 
Task 2
  Destination  Passengers  Revenue
3       Paris         180    81000
1      London         250   125000
0       Tokyo         290   217500
2       Dubai         320    96000
4    New York         410   328000

Task 3
  Destination  Passengers  Revenue
4    New York         410   328000
0       Tokyo         290   217500
1      London         250   125000
2       Dubai         320    96000
3       Paris         180    81000
