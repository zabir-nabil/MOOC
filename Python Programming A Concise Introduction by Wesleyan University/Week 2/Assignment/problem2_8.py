#%%
def problem2_8(temp_list):
    avg = 0
    mxi = -9999999
    mni = 99999999
    
    for i in range(len(temp_list)):
        avg += temp_list[i]
        mxi = max(temp_list[i], mxi)
        mni = min(temp_list[i], mni)
        
    avg /= len(temp_list)
    
    print("Average:", avg)
    print("High:", mxi)
    print("Low:",mni)
        

    
        
    
#%%