b=(input())
a=b.lower()
f=a.split(' ')
d={}.fromkeys(f,0)
c=len(f)
for i in range(0,c):
    d[f[i]]=f.count(f[i])
for key, value in d.items():
        print(key, value)