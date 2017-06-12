#%%
firstline = ["Happy", "families", "are", "all", "alike;", "every", \
              "unhappy", "family", "is", "unhappy", "in", "its", "own", \
              "way.", "Leo Tolstoy", "Anna Karenina"] 
#%%
def problem4_1(wordlist):
    print(wordlist)
    wordlist.sort(key=str.lower)
    print(wordlist)
    
#%%