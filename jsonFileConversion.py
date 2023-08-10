import json
#converting Python to json
x = {
  "name": "John",
  "age": 30,
  "married": True,
  "divorced": False,
  "children": ("Ann","Billy"),
  "pets": None,
  "cars": [
    {"model": "BMW 230", "mpg": 27.5},
    {"model": "Ford Edge", "mpg": 24.1}
  ]
}
print(json.dumps(x))

#converting Json to Python

x =  '{ "name":"John", "age":30, "city": null, "Married": true}'


y = json.loads(x)

print(y)