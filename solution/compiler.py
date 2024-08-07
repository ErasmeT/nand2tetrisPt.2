import sys
jumpCounter = 0
l = []
with open(sys.argv[1],'r') as file:
    line = file.readline() 
    while line: 
        if line != '\n' and line[0:2] != '//':
            l.append(line[:-1])
        line = file.readline()
    print(l)
    
def spMinusOne():
    file.write('\n@0\nM=M-1\n\n')
    
def spPlusOne():
    file.write('\n@0\nM=M+1\n\n')

def compilerByLine(lineList,xArgs):
    global jumpCounter
    prefix ='//'+' '.join(lineList)+'\n'
    file.write(prefix)
    if xArgs == 1:
        if lineList[0] == 'add':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nM=D+M\n")
            spPlusOne()
        if lineList[0] == 'sub':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nM=M-D\n")
            spPlusOne()
        if lineList[0] == 'neg':
            spMinusOne()
            file.write("A=M\nM=-M\n")
            spPlusOne()
        if lineList[0] == 'lt':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nD=M-D\n")
            jmp='\n@LT'+str(jumpCounter)+'\nD;JLT\n@0\nA=M\nM=0\n@LTEND'+str(jumpCounter)+'\n0;JMP\n(LT'+str(jumpCounter)+')\n@0\nA=M\nM=-1\n(LTEND'+str(jumpCounter)+')\n'
            file.write(jmp)
            spPlusOne()
            jumpCounter+=1
        if lineList[0] == 'gt':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nD=M-D\n")
            jmp='\n@GT'+str(jumpCounter)+'\nD;JGT\n@0\nA=M\nM=0\n@GTEND'+str(jumpCounter)+'\n0;JMP\n(GT'+str(jumpCounter)+')\n@0\nA=M\nM=-1\n(GTEND'+str(jumpCounter)+')\n'
            file.write(jmp)
            spPlusOne()
            jumpCounter+=1
        if lineList[0] == 'eq':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nD=M-D\n")
            jmp='\n@EQ'+str(jumpCounter)+'\nD;JEQ\n@0\nA=M\nM=0\n@EQEND'+str(jumpCounter)+'\n0;JMP\n(EQ'+str(jumpCounter)+')\n@0\nA=M\nM=-1\n(EQEND'+str(jumpCounter)+')\n'
            file.write(jmp)
            spPlusOne()
            jumpCounter+=1
        if lineList[0] == 'and':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nM=D&M\n")
            spPlusOne()
        if lineList[0] == 'or':
            spMinusOne()
            file.write("A=M\nD=M\n")
            spMinusOne()
            file.write("A=M\nM=D|M\n")
            spPlusOne()
        if lineList[0] == 'not':
            spMinusOne()
            file.write("A=M\nM=!M\n")
            spPlusOne()
        
    elif xArgs == 3:
        if lineList[0] == 'push':
            if lineList[1] == 'constant':
                i = lineList[2]
                command = "@" + i + "\nD=A\n@0\nA=M\nM=D\n"
                file.write(command)
            spPlusOne()

assembledFileName = sys.argv[1][:-2]+'asm'
with open(assembledFileName, 'w') as file:
    for i in range(len(l)):
        commandList = l[i].split()
        print(commandList)
        compilerByLine(commandList,len(commandList))