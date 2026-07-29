# Task 1: The Basic IF (Fixed capitalization)
runway = "Clear" 
if runway == "Clear":
    print("Cleared for takeoff!")

# Task 2: IF and ELSE
passengers = 150
if passengers > 200:
    print("Use Airbus A380")
else:
    print("Use Boeing 737")

# Task 3: Multiple Choices (elif)
delay_minutes = 45
if delay_minutes == 0:
    print("On Time")
elif delay_minutes < 60:
    print("Minor Delay")
else:
    print("Major Delay")

# Task 4: Not Equal (!=)
status = "Boarding"
if status != "Departed":
    print("Gates are still open")

# Task 5: Boolean Logic (Removed the stray 'i')
is_vip = True
if is_vip == True:
    print("Lounge Access Granted")

# OUTPUT
> Cleared for takeoff!
> Use Boeing 737
> Minor Delay
> Gates are still open
> Lounge Access Granted


