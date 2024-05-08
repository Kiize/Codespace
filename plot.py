import matplotlib.pyplot as plt
import numpy as np

x, n = np.loadtxt("ants.dat", unpack=True)
plt.plot(x, n)
plt.show()