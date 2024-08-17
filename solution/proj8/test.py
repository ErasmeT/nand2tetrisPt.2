a="/Users/littlecookie/Desktop/学习/nand2tetrisPt.2/solution/proj8/SimpleFunction/"
if a[-1] == '/':
    folderPath = a
    temp = a[:-1]
    index = temp.rfind('/')
    assembledFileName = temp[index+1:]
    assembledFilePath = folderPath + assembledFileName + '.asm'
print(assembledFileName)
print(assembledFilePath)


