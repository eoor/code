import secrets
import string

def password(length = 16):
    characters = string.ascii_uppercase + string.ascii_lowercase + string.digits + string.punctuation
    while True:
        output = "".join((secrets.choice(characters) for i in range(length)))
        for x in string.ascii_uppercase:
            if x in output:
                for x in string.ascii_lowercase:
                    if x in output:
                        for x in string.digits:
                            if x in output:
                                for x in string.punctuation:
                                    if x in output:
                                        return output
                                    else:
                                        continue
                            else:
                                continue
                    else:
                        continue
            else:
                continue

print(password())