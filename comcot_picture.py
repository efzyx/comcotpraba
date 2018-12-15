# -*- coding: utf-8 -*-
"""
Created on Tue May  1 00:42:25 2018

@author: pbj0812
"""

import numpy as np
import matplotlib.pyplot as plt

f = open("/home/pbj0812/NumericalModel/COMCOT/z_01_000132.dat",'r')

lines = f.readlines()
for line in lines:
        print(line)
f.close()

line3 = []
for line in lines:
    line2 = line.split('\n')
    line2 = ''.join(line2)
    line2 = line2.split('  ')
    line2.remove('')
    line3 = line3 + line2
print(line3)

for i in range(len(line3)):
    line3[i] = float(line3[i])

b = np.array(line3)
c = b.reshape(381,484)


x = np.arange(0, 484, 1)
y = np.arange(0, 381, 1)
X, Y = np.meshgrid(x, y)

# surface plot
'''
fig = plt.figure()
ax = fig.gca(projection='3d')
surf = ax.plot_surface(X, Y, c, rstride=1, cstride=1, cmap=cm.coolwarm,
    linewidth=0, antialiased=False)
fig.colorbar(surf, shrink=0.5, aspect=5)
plt.show()
'''

# contour plot
plt.figure()
CS = plt.pcolor(X, Y, c, cmap = 'jet')
plt.title('COMCOT')
plt.colorbar()
plt.clim(-0.5, 0.5)
fig = plt.gcf()
plt.show()

fig.savefig('comcot.png')