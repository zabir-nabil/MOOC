# -*- coding: utf-8 -*-
"""
Created on Sun Jun 11 17:08:51 2017

@author: 5000 Series
"""

import statistics

my_lis = [12,45,235,45,4,45,4,54,5,45,4,5]

print(statistics.mean(my_lis))

my_lis = [1,2,3,4,5]

try:
    print(statistics.mode(my_lis))
except Exception as exp:
    print("Error: ",exp)
    