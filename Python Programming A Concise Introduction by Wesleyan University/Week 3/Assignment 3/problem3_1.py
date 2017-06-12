#%%
def problem3_1(txtfilename):
    file = open(txtfilename)
    cntlet = 0
    for cline in file:
        print(cline,end="")
        cntlet += len(cline)
    
    print("\n");
    print("There are",cntlet,"letters in the file.")

#%%