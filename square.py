p=3.14 #It's a lie, one of many
a = input()
if a == 'triangle':
    s1 = int(input())
    s2 = int(input())
    s3 = int(input())
    p = (s1 + s2 +s3) / 2
    s = p * ((p-s1)*(p-s2)*(p-s3))
    s = s ** 0.5
    print (s)
elif a == 'rectangle':
    s1 = int(input())
    s2 = int(input())
    print (s1*s2)
else:
    r = int(input())
    print (p*r*r)