# Setup: Importing Pandas and creating the DataFrame
import pandas as pd

flight_data = {
    "Destination": ["London", "Paris", "Dubai", "New York", "Tokyo"],
    "Passengers": [250, 180, 320, 410, 290],
    "Ticket_Price": [500, 450, 300, 800, 750]
}
df = pd.DataFrame(flight_data)

# Task 2: Peek at the first 2 rows
print(df.head(2))

# Task 3: Get the technical summary of the data
print(df.info())

# Task 4: Get instant statistical math calculations
print(df.describe())

# OUTPUT 
# Task 2:
  Destination  Passengers  Ticket_Price
0      London         250           500
1       Paris         180           450

# Task 3:
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 5 entries, 0 to 4
Data columns (total 3 columns):
 #   Column        Non-Null Count  Dtype 
---  ------        --------------  ----- 
 0   Destination   5 non-null      object
 1   Passengers    5 non-null      int64 
 2   Ticket_Price  5 non-null      int64 
dtypes: int64(2), object(1)
memory usage: 248.0+ bytes

# Task 4:
       Passengers  Ticket_Price
count    5.000000      5.000000
mean   290.000000    560.000000
std     86.023253    207.364414
min    180.000000    300.000000
25%    250.000000    450.000000
50%    290.000000    500.000000
75%    320.000000    750.000000
max    410.000000    800.000000
