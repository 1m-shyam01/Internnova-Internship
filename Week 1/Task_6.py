def average(num1, num2, num3):
    return (num1 + num2 + num3) / 3

def square(num):
    return num * num

num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
num3 = float(input("Enter third number: "))
print("Average =", average(num1, num2, num3))

print("\n\n")
num = int(input("Enter a number to calculate square: "))
print("Square =", square(num))

