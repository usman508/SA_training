class employee:
    def __init__(self, firstName, lastName, age, __designation):
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.__designation = __designation

    def emp_detail(self):
        return '{} {} of {} is {} of Software Alliance'.format(self.firstName, self.lastName, self.age, self.__designation)

    def change_des(self, new_des):
        self.__designation = new_des
        return self.__designation


obj1 = employee('usman', 'noor', 23, 'backend intern')

print(obj1.firstName)
print(obj1.lastName)
print(obj1.age)
# print(obj1.__designation)
print(obj1.emp_detail())
obj1.change_des(input("enter new designation for the employee:"))
print(obj1.emp_detail())
