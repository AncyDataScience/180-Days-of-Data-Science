# Task 1: The for loop (Reading from a list)
destinations = ["London", "Paris", "Dubai"]
for city in destinations:
    print(city)

# Task 2: Combining Loops and IF (The Brain + Repetition)
statuses = ["On Time", "Delayed", "On Time"]
for status in statuses:
    if status == "Delayed":
        print("Send SMS")

# Task 3: The range() loop (Repeating a specific number of times)
for i in range(5):
    print("Scanning ticket...")

# Task 4: The while loop (Repeating until a condition is met)
boarding_group = 1
while boarding_group <= 3:
    print(boarding_group)
    boarding_group = boarding_group + 1

# OUTPUT
London
Paris
Dubai

Send SMS

Scanning ticket...
Scanning ticket...
Scanning ticket...
Scanning ticket...
Scanning ticket...

1
2
3
