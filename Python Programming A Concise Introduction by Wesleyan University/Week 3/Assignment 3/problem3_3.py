#%%
def problem3_3(month, day, year):
    """ Takes date of form mm/dd/yyyy and writes it in form June 17, 2016 
        Example3_3: problem3_3(6, 17, 2016) gives June 17, 2016 """
    mon = ("January","February","March","April","May","June","July","August",
           "September","October","November","December")
    month = int(month)
    print("%s %s, %s" %(mon[month-1],day,year))

#%%