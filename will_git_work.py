import time
import random

opposite_day = bool(random.getrandbits(1))

print("Will git work?")
time.sleep(3);

if(opposite_day or 1 > 0):
    print("Always!")
else:
    print("Nope")
