#To create a text file and write Introduction
file = open("introduction.txt", "w")
file.write("My name is Shyam Singh.\n")
file.write("I am a student of Computer Science.\n")
file.write("I am learning Python programming.")

file.close()
# To read and isplay file
file = open("introduction.txt", "r")

content = file.read()
print(content)
file.close()
