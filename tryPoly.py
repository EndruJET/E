def tryPoly(x):                     #try number as poly, not work if number < 10
    a = len(x)
    b=a//2
    for i in range (1,a):
        if x[i-1]==x[a-i]:
            i+=1
            if i>b:
                return True
        else:
            return False      

Max=0
min=100

for f in range(999, min, -1):
    for s in range(999, min, -1):
        x=f*s
        Rez=tryPoly(str(x))
        if Rez == True:             #if succes 
            if x > Max:
                Max = x
                if f>s:
                    min=s
                else:
                    min=f
            break 
    if f < min:
        break

print(Max)                          #printing the bigest poly

        
