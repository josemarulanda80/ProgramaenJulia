# -*- coding: utf-8 -*-
"""
Created on Fri Feb  4 14:36:03 2022

@author: josem
"""
import numpy as np
from time import time
import sys
tiempo_inicial = time() 

def matrixA(r,m,q,parameterMQ,typeFunction):
    matrix=np.zeros((m,m))
    if typeFunction == 1:
        matrix= np.sqrt((r**2+parameterMQ))
    else:
        matrix= (r)**(2*q)*np.log(r)
        matrix =np.where(r==0,0,matrix)
    return matrix
print(matrixA(2,4,2,0,0))

y=0
def h(y):
    for i in range(0,100000000):
        y = np.sqrt(((y)**2)+np.sqrt(i))
    return y

print(h(0))

tiempo_final = time() 
tiempo_ejecucion = tiempo_final - tiempo_inicial