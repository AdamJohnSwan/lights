import os
import sys

text = sys.argv[1]

print(text + '\n')
file = open('pyscripts/check.txt', 'w')
file.write(text)
file.close()
