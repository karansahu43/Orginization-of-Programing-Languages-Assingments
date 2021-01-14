#//Karan Sahu 
#//kxs190007 
#//cs4337.503
#//Assignment 5
from xlrd.timemachine import xrange
import numpy as np
from pyrecord import Record

#Arrays, List, Tuples, Records
#array - Need external library to get true arrays

# array
Animals = ["Dragon", "Lion", "Trex"]
# or use numpy
AnimalNp = np.array(["Dragon", "Lion", "Trex"])
# list
NaturePlaces = ["Jungle", "Savana", "Mountains"]
# tuples
tup = ("Fishing 101", "Hunting 101", "Gathering 101")
# records
Person = Record.create_type("Person", "name", "email_address")
Student = Person.extend_type("Student", "courses_read", "graduation_date", graduation_date=None)
karan_student = Student("Karan Sahu", "ks@example.org", ["Calculus", "Comsci"])

# [::-1]
print("::-1 example:")
print(NaturePlaces[::-1])

# range and xrange
print("xrange example:")
for x in range(1, 3, 1):
    print(x)

for x in xrange(1, 3, 1):
    print(x)
# append
print("append array example")
print(Animals)
Animals.append("Elaphant")
print(Animals)
#append in numpy array
print("numpy example")
print(["Dragon", "Lion", "Trex"])

sc = np.append(["UTA", "UTD", "UGA"], ["UT"])
print(sc)

#split
print("split example:")
s = "Turtles,Cats,Dogs"
sList = s.split(",")
print(sList)
