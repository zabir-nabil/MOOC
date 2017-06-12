#%%
def problem3_4(mon, day, year):
    """ Takes date such as July 17, 2016 and write it as 7/17/2016 """
    montup = ("January","February","March","April","May","June","July","August",
           "September","October","November","December")
    monint  = 1
    
    for i in range(12):
        if montup[i]==mon:
            monint = i+1
            break
        
    print("%d/%d/%d" %(monint,day,year))
            
    

#%%