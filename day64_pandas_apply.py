# Setup: Importing Pandas
import pandas as pd

# Step 1: Build the Machine (Custom Function)
def convert_to_inr(usd):
    return usd * 84

# Step 2: Create the DataFrame
flight_data = {
    "Flight": ["Qatar-01", "Emirates-88", "Indigo-55"],
    "Price_USD": [500, 800, 200]
}
df = pd.DataFrame(flight_data)

# Task 2: Apply the custom function to the column
df["Price_INR"] = df["Price_USD"].apply(convert_to_inr)

# Task 3: View the Result
print(df)

# Output
        Flight  Price_USD  Price_INR
0     Qatar-01        500      42000
1  Emirates-88        800      67200
2    Indigo-55        200      16800
