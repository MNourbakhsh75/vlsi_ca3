import random
l = []
with open('input.txt', 'w+') as k:
    for i in range(1000):
        r = random.randrange(1, 65535)
        if r+r <= 65535:
            l.append(r)
            k.write(hex(r).replace("0x","")+'\n')
    k.close()

with open('golden.txt', 'w+') as g:

    for i in l:
        for j in l:
            r = hex(i+j).replace("0x", "")
            g.write(r+'\n')
    g.close()
