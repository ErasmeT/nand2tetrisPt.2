import sys
jumpCounter = 0
l = []
filename = sys.argv[1]
with open(filename + '/Sys.vm','r') as file:
    line = file.readline() 
    while line: 
        if line[0:2] != ['//'] and line != '\n':
            if '//' in line:
                index = line.find('//')
                line = line[:index]
        l.append(line)
        line = file.readline()
    print(l)

assembledFileName = filename[:-2]+'asm'
with open(assembledFileName, 'w') as file:
    for i in range(len(l)):
        commandList = l[i].split()
        print(commandList)