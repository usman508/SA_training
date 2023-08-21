import mysql.connector
host = "localhost"
user = "root"
password = "Noor9876"
database = "blogs"

connection = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)

cursor = connection.cursor()
firstname = input("Enter First name: ")
lastname = input("Enter last name: ")
email = input("Enter email: ")
phone_no = input("Enter phone no. : ")
password = input("Enter password: ")
insert = ("INSERT INTO `users` VALUES(DEFAULT, %s, %s,%s,%s,%s,DEFAULT);")
data = (firstname, lastname, email, phone_no, password)
cursor.execute(insert, data)
cursor.execute("SELECT * FROM users;")
for row in cursor:
    print(row)

comm = input("do you want to commit this insertion? (y/n)")
if comm == "y":
    connection.commit()
    print("successfully commited!")
else:
    print("not committed")

cursor.close()
connection.close()
