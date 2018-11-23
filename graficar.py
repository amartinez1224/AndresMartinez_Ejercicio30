import matplotlib
matplotlib.use("Agg")
import numpy as np
import matplotlib.pyplot as plt


A = np.genfromtxt("a.txt")
B = np.genfromtxt("b.txt")

plt.hist(A,bins=100,label="Serial",normed=True)
plt.hist(B,bins=100,alpha=0.5,label="Paralelo",normed=True)
plt.legend()
plt.savefig("ComparacionA.pdf")
