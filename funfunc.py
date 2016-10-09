def modify_list(lst):
    a = len(lst)
    ls = []
    for i in range (0,a):
        if lst[i]%2==0:
            ls.append(lst[i])
    b = len(ls)
    c=0
    lsk=[]
    list.clear(lst)
    if b>0:
        for i in range (0,b):
            lsk.append(ls[i]//2)
    if b>0:
        for i in range (0,b):
            lst.append(lsk[i])
    else:
        lst=[]


a=[66, 25, 333, 333, 1, 1234, 5]
modify_list(a)
print(a)