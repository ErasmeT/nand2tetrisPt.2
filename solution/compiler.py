import sys
print(sys.argv)
l = []
with open(sys.argv[1],'r') as file:
    line = file.readline() 
    while line: 
        if line != '\n' and line[0:2] != '//':
            l.append(line[:-1])
        line = file.readline()
    print(l)
    
def spMinusOne():
    file.write('@0\nM=M-1\n')
    
def spPlusOne():
    file.write('@0\nM=M+1\n')

def compilerByLine(lineList):
    prefix ='//'+' '.join(commandList)+'\n'
    file.write(prefix)
    if len(lineList) == 3:
        if commandList[1] == 'constant':
            i = commandList[2]
            command = "@" + i + "\nD=A\n@0\nA=M\nM=D\n@0\nM=M+1\n"
            file.write(command)
    
    if lineList[0] == 'add':
        file.write("@0\nM=M-1\nA=M\nD=M\n@0\nM=M-1\nA=M\nM=D+M\n@0\nM=M+1\n")

assembledFileName = sys.argv[1][:-2]+'asm'
with open(assembledFileName, 'w') as file:
    for i in range(len(l)):
        commandList = l[i].split()
        print(commandList)
        compilerByLine(commandList)