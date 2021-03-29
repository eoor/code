import secrets
import sys

def passphrase(length = 4):
    words = open(sys.path[0] + "/dictionary.txt").read().split("\n")
    output = []
    while len(output) < length:
        word = secrets.choice(words)
        if word not in output: output.append(word)
    return " ".join(output)

print(passphrase())