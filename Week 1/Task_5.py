num1=int(input("Enter The Number : "))

print("Print numbers from 1 to", num1)
for i in range(1, num1+1):
    print(i, end="\n")
print("\n")
print("Table of", num1)
for i in range(1, 11):
    print( num1*i, end="\n")
print("\n")
print("Even Numbers from 1 to", num1)
for i in range(1, num1+1):
    if(i%2==0):
        print(i, end="\n")