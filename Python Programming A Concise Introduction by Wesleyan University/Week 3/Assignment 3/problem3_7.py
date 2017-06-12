#%%
import csv
def problem3_7(csv_pricefile, flower):
    file = open(csv_pricefile)
    for cline in csv.reader(file):
        if cline[0]==flower:
            print(cline[1])
    
#%%