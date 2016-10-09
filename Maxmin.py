s1 = int(input())
s2 = int(input())
s3 = int(input())
if (not (s1 < s2)) and (not (s1 < s3)):
    print(s1)
    if (s2>s3):
        print(s3)
        print(s2)
    else:
        print(s2)
        print(s3)
elif (not (s2 < s1)) and (not (s2 < s3)):
    print(s2)
    if (s1>s3):
        print(s3)
        print(s1)
    else:
        print(s1)
        print(s3)
else:
    print(s3)
    if (s1>s2):
        print(s2)
        print(s1)
    else:
        print(s1)
        print(s2)
