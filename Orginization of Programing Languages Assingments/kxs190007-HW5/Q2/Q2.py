#//Karan Sahu 
#//kxs190007 
#//cs4337.503
#//Assignment 5

x = 1
y = 2
z = 3

print("global x = {}".format(x))
print("global y = {}".format(y))
print("global z = {}".format(z))


def SubProgram1():
    a = 4
    y = 5
    z = 6
    print("SubProgram1 a = {}".format(a))
    print("SubProgram1 y = {}".format(y))
    print("SubProgram1 z = {}".format(z))

    def SubProgram2():
        global x
        a = 7
        x = 8
        w = 9
        print("SubProgram2 a = {}".format(a))
        print("SubProgram2 x = {}".format(x))
        print("SubProgram2 w = {}".format(w))

        def SubProgram3():
            nonlocal a
            a = 10
            x = 11
            w = 12
            print("SubProgram3 a = {}".format(a))
            print("SubProgram3 x = {}".format(x))
            print("SubProgram3 w = {}".format(w))

            def SubProgram4():
                global z
                z = 13
                x = 14
                a = 15
                print("SubProgram4 z = {}".format(z))
                print("SubProgram4 x = {}".format(x))
                print("SubProgram4 a = {}".format(a))



            SubProgram4()
            print("SubProgram3 after SubProgram4 a = {}".format(a))
            print("SubProgram3 after SubProgram4 x = {}".format(x))
            print("SubProgram3 after SubProgram4 w = {}".format(w))

        SubProgram3()
        print("SubProgram2 after SubProgram3 a = {}".format(a))
        print("SubProgram2 after SubProgram3 x = {}".format(x))
        print("SubProgram2 after SubProgram3 w = {}".format(w))

    SubProgram2()
    print("SubProgram1 after SubProgram2 a = {}".format(a))
    print("SubProgram1 after SubProgram2 y = {}".format(y))
    print("SubProgram1 after SubProgram2 z = {}".format(z))


SubProgram1()
print("after call global x = {}".format(x))
print("after call global y = {}".format(y))
print("after call global z = {}".format(z))
