students = []
while True:
    print("\n1. Add Student")
    print("2. Display Students")
    print("3. Search Student")
    print("4. Delete Student")
    print("5. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        name = input("Enter name: ")
        roll = input("Enter roll number: ")
        branch = input("Enter branch: ")

        student = {
            "name": name,
            "roll": roll,
            "branch": branch
        }

        students.append(student)
        print("Student added successfully")

    elif choice == "2":
        if len(students) == 0:
            print("No records available")
        else:
            for s in students:
                print("Name:", s["name"])
                print("Roll Number:", s["roll"])
                print("Branch:", s["branch"])
                print("----------------")

    elif choice == "3":
        name = input("Enter name to search: ")
        found = False

        for s in students:
            if s["name"].lower() == name.lower():
                print("Student found")
                print("Name:", s["name"])
                print("Roll Number:", s["roll"])
                print("Branch:", s["branch"])
                found = True

        if found == False:
            print("Student not found")

    elif choice == "4":
        roll = input("Enter roll number to delete: ")
        found = False

        for s in students:
            if s["roll"] == roll:
                students.remove(s)
                print("Student deleted successfully")
                found = True
                break

        if found == False:
            print("Student not found")

    elif choice == "5":
        print("Program ended")
        break

    else:
        print("Wrong choice")