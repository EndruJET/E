a = float(input()) 
b = float(input()) 
c = input()

if (c == '+'):
    print (a+b)
elif (c == '-'):
    print (a-b)
elif (c == '*'):
    print (a*b)
elif (c == 'pow'):
    print (a ** b)
elif (b == 0):
    print ('Zero division')
elif (c == '/'):
    print (a/b)
elif (c == 'mod'):
    print (a%b)
elif (c == 'div'):
    print (a//b)