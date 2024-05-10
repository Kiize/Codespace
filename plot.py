import matplotlib.pyplot as plt
import numpy as np

x, mu = np.loadtxt("chaos.dat", unpack=True)
plt.scatter(mu, x, s=1)
plt.show()
