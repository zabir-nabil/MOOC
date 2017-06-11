# -*- coding: utf-8 -*-
"""
Created on Sun Jun 11 07:47:38 2017

@author: 5000 Series
"""

import sys

print(sys.argv)
print(sys.argv[0])
print(sys.argv[1])
print(len(sys.argv))
total_len = len(sys.argv)
for i in range(total_len):
    print(sys.argv[i])