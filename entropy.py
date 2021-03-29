import math

def entropy(chars, length):
    return round(math.log(chars ** length, 2), 1)

print(entropy(95, 16))