option = 0
while option != 3:
    print("Register and Login menu")
    print("1. Register")
    print("2. Login")
    print("3. Exit")
    option = int(input("Your choice: "))
    match option:
        case 1:
            file = open("info.txt", "at")
            rUser = str(input("Username -> "))
            file.write(f"Username: {rUser}\n")
            rPass = str(input("Password -> "))
            file.write(f"Password: {rPass}\n")
            file.write("----------\n")
            file.close()
        case 2:
            file = open("info.txt", "r")
            
nova verzija
option = 0
while option != 3:
    print("Register and Login menu")
    print("1. Register")
    print("2. Login")
    print("3. Exit")
    option = int(input("Your choice: "))
    match option:
        case 1:
            file = open("info.txt", "at")
            rUser = str(input("Username -> "))
            rPass = str(input("Password -> "))
            file.write(f"{rUser} | {rPass}\n")
            file.close()
        case 2:
            file = open("info.txt", "r")
            lines = file.readlines()
            print(file.readlines())
            lUser = str(input("Username -> "))
            lPass = str(input("Password -> "))
            full = f"{lUser} | {lPass}"
            for row in lines:
                if row.find(full) != -1:
                    print("You have logged in!")
                    print("line number: ", lines.index(row))
