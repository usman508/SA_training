from abc import ABC, abstractmethod

class employee(ABC):
    @abstractmethod #using abstract method
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


class manager(employee):  # using inheritance here
    def __init__(self, firstName):
        self.firstName = firstName
    def manager_of(self, employeename):
        self.employeename = employeename
        # using attributes of parent class
        return '{} is manager of {}'.format(self.firstName, self.employeename)


obj2 = manager('maaz ur rehman')

print(obj2.manager_of('usman noor'))
