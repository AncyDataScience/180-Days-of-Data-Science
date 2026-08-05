# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Destination": ["London", "Paris", "Dubai", "New York", "Tokyo"],
    "Passengers": [250, 180, 320, 410, 290],
    "Ticket_Price": [500, 450, 300, 800, 750]
}
df = pd.DataFrame(flight_data)

# Task 2: Select a Single Column
print(df["Destination"])

# Task 3: Select Multiple Columns
print(df[["Destination", "Ticket_Price"]])

# Task 4: Filter the Rows (Prices greater than 500)
print(df[df["Ticket_Price"] > 500])

# Output 
Task 2:
0      London
1       Paris
2       Dubai
3    New York
4       Tokyo
Name: Destination, dtype: object

Task 3:
  Destination  Ticket_Price
0      London           500
1       Paris           450
2       Dubai           300
3    New York           800
4       Tokyo           750

Task 4:
  Destination  Passengers  Ticket_Price
3    New York         410           800
4       Tokyo         290           750
