a=input()
b=a.split()
b.sort()
i=0
while i<len(b)-1:
    if b[i]==b[i+1]:
        print(b[i],end=' ')
        if i == len(b)-1:
                break
        while b[i]==b[i+1]:
            i+=1
            if i == len(b)-1:
                break
    else:
        i+=1