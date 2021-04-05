import random, secrets, string, sys

def password(length = 16):
    characters = string.ascii_uppercase + string.ascii_lowercase + string.digits + string.punctuation
    characters_shuffled = ''.join(random.sample(characters, len(characters)))
    if length < 4: length = 4
    if length > 512: length = 512
    while True:
        output = ''.join((secrets.choice(characters_shuffled) for i in range(length)))
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

def passphrase(length = 4):
    words = open(sys.path[0] + '/dictionary.txt').read().split('\n')
    random.shuffle(words)
    output = []
    if length < 2: length = 2
    if length > 32: length = 32
    while len(output) < length:
        word = secrets.choice(words)
        if word not in output: output.append(word)
    return ' '.join(output)

def message(num):
    output = [
        'enter command: ',
        'command error',
        'parameter error',
        'exit success'
    ]
    return(output[num])

print('password/passphrase generator')

helper = [
    ['pw', '16 character password'],
    ['pw 4-256', '4-256 character password'],
    ['pp', '4 word passphrase'],
    ['pp 2-32', '2-32 word passphrase'],
    ['exit', 'exit']
]

for row in helper:
    print('{: <15} {: <30}'.format(* row))

while True:
    request = input(message(0)).split()
    if request[0] == 'pp':
        if len(request) == 2:
            try:
                print('passphrase(int(request[1]))')
            except:
                print(message(2))
        else:
            print('passphrase()')
            continue
    elif request[0] == 'pw':
        if len(request) == 2:
            try:
                print('password(int(request[1]))')
            except:
                print(message(2))
        else:
            print('password()')
            continue
    elif request[0] == 'exit':
        print(message(3))
        break
    else:
        print(message(1))
        continue