text = "Hello Rahul Saini" 
print("Original Text:", text)
print("Uppercase:", text.upper()) 
print("Lowercase:", text.lower()) 
print("Replace:", text.replace("Saini", "Singh")) 
print("Find:", text.find("Rahul"))
print("\n\n")

numbers = [40, 10, 30, 20]
print("List of Numbers:", numbers) 
numbers.append(50) 
print("After Append:", numbers) 
numbers.remove(10) 
print("After Remove:", numbers) 
numbers.sort() 
print("After Sort:", numbers)
print("\n\n")

fruits = ("Apple", "Banana", "Mango") 
print("Tuple:", fruits) 
print("First Element:", fruits[0]) 
print("Second Element:", fruits[1]) 
print("Third Element:", fruits[2]) 
print("\n\n")

student = { "Name": "Shyam Singh", "Branch": "Computer Science", "College": "ABC College" } 
print("Student Information:", student) 
print("Student Name:", student["Name"]) 
print("Branch:", student["Branch"])
print("\n\n")


colors = {"Red", "Green", "Blue"}
print("Set of Colors:", colors) 
colors.add("Yellow") 
print("After Add:", colors) 
colors.remove("Green") 
print("After Remove:", colors)