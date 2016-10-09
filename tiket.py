a = int(input()) 
k1=a//100000 #do you realy want to use a[1]... in 2016? LOL
k2=a//10000
k3=a//1000
k4=a//100
k5=a//10
k6=a//1
k6=k6%10
k5=k5%10
k4=k4%10
k3=k3%10
k2=k2%10
if (k1+k2+k3==k4+k5+k6):
    print('Now be happy')
else: print('Not your day')