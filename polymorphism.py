class employee:
    def __init__(self, firstName, lastName, age):
        self.firstName = firstName
        self.lastName = lastName
        self.age = age

    def emp_detail(self):
        return '{} {} of age {} is employee of Software Alliance'.format(self.firstName, self.lastName, self.age)



class manager(employee):  # using inheritance here
    
    def emp_detail(self):
        return '{} {} of age {} is manager of Software Alliance'.format(self.firstName, self.lastName, self.age)

class ceo(employee):  # using inheritance here
    
    def emp_detail(self):
        return '{} {} of age {} is ceo of Software Alliance'.format(self.firstName, self.lastName, self.age)





obj1 = employee('usman', 'noor', 23)
obj2 = manager('maaz', 'ur rehman', 27)
obj3 = ceo('ali','ahmed', 45)

print(obj1.emp_detail())
print(obj2.emp_detail())
print(obj3.emp_detail())
