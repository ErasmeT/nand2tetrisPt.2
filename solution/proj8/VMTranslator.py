import sys
jumpCounter = 0
l = []
filename = sys.argv[1]
with open(filename,'r') as file:
    line = file.readline() 
    while line: 
        if line[0:2] != ['//'] and line != '\n':
            if '//' in line:
                index = line.find('//')
                line = line[:index]
            if line != '':
                l.append(line[:-1])
        line = file.readline()
    print(l)

def memorySeg(name):
    if name[1] == 'local':
        return 'LCL'
    elif name[1] == 'argument':
        return 'ARG'
    elif name[1] == 'this':
        return 'THIS'
    elif name[1] == 'that':
        return 'THAT'
    elif name[1] == 'temp':
        return
    elif name[1] == 'static':
        return
    elif name[1] == 'pointer':
        if name[2] == '0':
            return '3'
        elif name[2] == '1':
            return '4'
def spMinusOne():
    file.write('\n@0\nM=M-1\n')
    
def spPlusOne():
    file.write('\n@0\nM=M+1\n')

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
        
    elif xArgs == 2:
        if lineList[0] == 'label':
            file.write('('+lineList[1]+')\n')
        elif lineList[0] == 'goto':
            file.write('@'+lineList[1]+'\n')
            file.write('0;JMP\n')
        elif lineList[0] == 'if-goto':
            spMinusOne()
            file.write('@SP\nA=M\nD=M\n@'+lineList[1]+'\nD;JNE\n')

    elif xArgs == 3:
        if lineList[0] == 'push':
            if lineList[1] == 'constant':
                i = lineList[2]
                command = "@" + i + "\nD=A\n@0\nA=M\nM=D\n"
                file.write(command)
            elif lineList[1]=='temp':
                i = int(lineList[2])
                i = i + 5
                file.write('@'+str(i)+'\nD=M\n')
                file.write('@0\nA=M\nM=D\n')
            elif lineList[1]=='pointer':
                file.write('@'+memorySeg(lineList)+'\nD=M\n')
                file.write('@0\nA=M\nM=D')
            elif lineList[1]=='static':
                name = filename[:-2] + lineList[2]
                if '/' in name:
                    name=name.replace('/','')
                file.write('@'+name+'\nD=M\n')
                file.write('@0\nA=M\nM=D\n')
            else:
                file.write('@'+memorySeg(lineList)+'\nD=M\n')
                file.write('@'+lineList[2]+'\nD=D+A\n')
                file.write('A=D\nD=M\n@0\nA=M\nM=D\n')
            spPlusOne()
        elif lineList[0] == 'pop':
            spMinusOne()
            if lineList[1]=='temp':
                i = int(lineList[2])
                i = i + 5
                file.write('A=M\nD=M\n@'+str(i)+'\nM=D\n')
            elif lineList[1]=='pointer':
                file.write('A=M\nD=M\n')
                file.write('@'+memorySeg(lineList)+'\nM=D\n')
            elif lineList[1]=='static':
                name = filename[:-2] + lineList[2]
                if '/' in name:
                    name=name.replace('/','')
                file.write('A=M\nD=M\n@'+name+'\nM=D\n')
            else:
                file.write('@'+memorySeg(lineList)+'\nD=M\n')
                file.write('@'+lineList[2]+'\nD=D+A\n')
                file.write('@13\nM=D\n')
                file.write('@0\nA=M\nD=M\n\n@R13\nA=M\nM=D\n')
        
assembledFileName = filename[:-2]+'asm'
with open(assembledFileName, 'w') as file:
    for i in range(len(l)):
        commandList = l[i].split()
        print(commandList)
        compilerByLine(commandList,len(commandList))