#%%
def problem4_3(product, cost):
    """ Prints the product name in a space of 25 characters, left-justified
        and the price in a space of 6 characters, right-justified"""
    
    pro2 = "{0:25}".format(product)
    cost2 = "{0:>6.2f}".format(cost)
    print(pro2+"$"+cost2)


#%%   