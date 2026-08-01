# Task 1: A Basic Function
def announce():
    print("Flight is boarding")

announce()

# Task 2: A Function with an Input
def show_gate(city):
    print("Gate for " + city + " is A1")

show_gate("London")

# Task 3: A Function with Return
def calculate_tax(price):
    tax = price * 0.10
    return tax

final_tax = calculate_tax(100)
print(final_tax)

# Task 4: The Ultimate AI Logic (Function + IF)
def check_baggage(weight):
    if weight > 25:
        return "Heavy"
    else:
        return "Normal"

print(check_baggage(30))

# OUTPUT

Flight is boarding
Gate for London is A1
10.0
Heavy
