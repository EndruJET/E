def func(x):
    y=x*3.14 # or else
    return y

y=(input())
a=y.lower()
f=a.split(' ')
d={}.fromkeys(f,0)
c=len(f)
for i in range(0,c):
    d[f[i]]=f.count(f[i])
for key, value in d.items():
        print(key, value)


tab={}
g=int(input())
for i in range(0,g):
    b=int(input())
    if b in tab:
        print(tab[b])
    else:
        tab[b]=func(b)
        print(tab[b])