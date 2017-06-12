#%%
import random

def problem2_4():
    """ Make a list of 10 random reals between 30 and 35 """
    random.seed(70)
    randlist = []
    for i in range(10):
        randlist.append(30+5*random.random())
    print(randlist)
#%%