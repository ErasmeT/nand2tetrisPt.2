import sys
import os
jumpCounter = 0
filearg = sys.argv[1]

def parser(pathToProcess):
    l = []
    with open(pathToProcess,'r') as file:
        line = file.readline() 
        while line: 
            if line[0:2] != ['//'] and line != '\n':
                if '//' in line:
                    index = line.find('//')
                    line = line[:index]
            l.append(line)
            line = file.readline()
        #print(l)
    return l

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

def compilerByLine(eachFileName,lineList,xArgsOfCommand):
    global jumpCounter
    prefix ='//'+' '.join(lineList)+'\n'
    file.write(prefix)
    if xArgsOfCommand == 1:
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
        if lineList[0] == 'return':#this part is already perfect,do not modify
            file.write('@LCL\nD=M\n@R14\nM=D\n')
            file.write('@5\nD=D-A\nA=D\nD=M\n@R15\nM=D\n')
            spMinusOne()
            file.write('A=M\nD=M\n@ARG\nA=M\nM=D\n')
            file.write('@ARG\nD=M+1\n@SP\nM=D\n')
            file.write('@R14\nD=M-1\nA=D\nD=M\n@THAT\nM=D\n')
            file.write('@R14\nD=M-1\nD=D-1\nA=D\nD=M\n@THIS\nM=D\n')
            file.write('@R14\nD=M-1\nD=D-1\nD=D-1\nA=D\nD=M\n@ARG\nM=D\n')
            file.write('@R14\nD=M-1\nD=D-1\nD=D-1\nD=D-1\nA=D\nD=M\n@LCL\nM=D\n')
            file.write('@R15\nA=M\n0;JMP\n')
        
    elif xArgsOfCommand == 2:
        if lineList[0] == 'label':
            file.write('('+lineList[1]+')\n')
        elif lineList[0] == 'goto':
            file.write('@'+lineList[1]+'\n')
            file.write('0;JMP\n')
        elif lineList[0] == 'if-goto':
            spMinusOne()
            file.write('@SP\nA=M\nD=M\n@'+lineList[1]+'\nD;JNE\n')

    elif xArgsOfCommand == 3:
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
                file.write('A=M\nD=M\n@'+name+'\nM=D\n')
            else:
                file.write('@'+memorySeg(lineList)+'\nD=M\n')
                file.write('@'+lineList[2]+'\nD=D+A\n')
                file.write('@13\nM=D\n')
                file.write('@0\nA=M\nD=M\n\n@R13\nA=M\nM=D\n')
        elif lineList[0] == 'call':
            returnAddress = eachFileName+'$ret.'+str(jumpCounter)
            file.write('@'+returnAddress+'\nD=A\n@SP\nA=M\nM=D\n')
            spPlusOne()
            file.write('@LCL\nD=M\n@SP\nA=M\nM=D\n')
            spPlusOne()
            file.write('@ARG\nD=M\n@SP\nA=M\nM=D\n')
            spPlusOne()
            file.write('@THIS\nD=M\n@SP\nA=M\nM=D\n')
            spPlusOne()
            file.write('@THAT\nD=M\n@SP\nA=M\nM=D\n')
            spPlusOne()
            file.write('@SP\nD=M\n@5\nD=D-A\n@'+lineList[2]+'\nD=D-A\n@ARG\nM=D\n')
            file.write('@SP\nD=M\n@LCL\nM=D\n')
            file.write('@'+lineList[1]+'\n0;JMP\n('+returnAddress+')\n')
            jumpCounter+=1
        elif lineList[0] == 'function':
            file.write('('+lineList[1]+')\n')
            nVars = int(lineList[2])
            for i in range(nVars):
                file.write('@0\nA=M\nM=0\n')
                spPlusOne()

if '\\' in filearg: #Windows
    if '.vm' in filearg:
        filename = os.path.basename(filearg)
        filepath = filearg
        assembledFileName = filepath[:-2]+'asm'
    elif filearg[-1] == '\\':
        folderPath = filearg
        assembledFileName = os.path.dirname(filearg) + '.asm'
    else:
        folderPath = filearg + '\\'
        assembledFileName = filearg + '.asm'
elif '/' in filearg: #Moc or Linux
    if '.vm' in filearg:
        filename = os.path.basename(filearg)
        filepath = filearg
        assembledFileName = filepath[:-2]+'asm'
    elif filearg[-1] == '/':
        folderPath = filearg
        assembledFileName = folderPath[:-1] + '.asm'
    else:
        folderPath = filearg + '/'
        assembledFileName = filearg + '.asm'


print(assembledFileName)
allFile = os.listdir(folderPath)
fileToProcess = []
for i in allFile:
    if '.vm' in i:
        fileToProcess.append(folderPath+i)

for i in fileToProcess:
    if i == 'Sys.vm':
        sysindex=fileToProcess.index(i)
        temp = fileToProcess[0]
        fileToProcess[0] = fileToProcess[sysindex]
        fileToProcess[sysindex]=temp


print(folderPath)
print(fileToProcess)


with open(assembledFileName, 'w') as file:
    for j in fileToProcess:
        print("\nNOW DEALING WITH "+os.path.basename(j)[:-3])
        l = parser(j)
        for i in range(len(l)):
            commandList = l[i].split()
            print(commandList)
            compilerByLine(os.path.basename(j)[:-3],commandList,len(commandList))