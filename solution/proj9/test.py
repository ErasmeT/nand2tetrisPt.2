import re

keyword = ['class','constructor','function','method','field','static','var','int','char','boolean','void','true', 'false','null','this', 'let','do','if','else', 'while','return']
symbol = ['{','}','(',')','[',']','.',',',';','+','-','*','/','&','|','>','<','=','~']

# def detectorAndInserter(elementIncludingSymbol,particularSymbol):
#     if particularSymbol in elementIncludingSymbol:
#         subtutle = elementIncludingSymbol.partition(particularSymbol)
#         return subtutle
    
def replacer(inputList,particularSymbol):
    splitBySpacesList = []
    for i in inputList:
        if particularSymbol in i:
            j = i
            while particularSymbol in j:
                partitionTuple = i.partition(particularSymbol)
                if partitionTuple[0] != '' :splitBySpacesList.append(partitionTuple[0])
                if partitionTuple[1] != '' :splitBySpacesList.append(partitionTuple[1])
                j = partitionTuple[2]
        else:
            splitBySpacesList.append(i)
    print(splitBySpacesList)

    

def lineListGenerator(line):
    lineList = []
    lineListWithoutSpace = line.split()
    for i in lineListWithoutSpace:
        for j in keyword+symbol:
            if j in i:
                pass

test = """
// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/9/Average/Main.jack

// Inputs some numbers and computes their average
class Main {
   function void main() {
      var Array a; 
      var int length;
      var int i, sum;

      let length = Keyboard.readInt("How many numbers? ");
      let a = Array.splitBySpaces(length); // constructs the array
     
      let i = 0;
      while (i < length) {
         let a[i] = Keyboard.readInt("Enter a number: ");
         let sum = sum + a[i];
         let i = i + 1;
      }

      do Output.printString("The average is ");
      do Output.printInt(sum / length);
      return;
   }
}

"""
def isStringConstant(string):
    return '\"' == string[0] and '\"' == string[-1]

def pattitioner(text):
    result = re.sub(r'/{2}.*\n','',text)
    print(result)

    # splitByNotions = re.split(r"([^a-zA-Z\s]| |\n)",result)
    # print(splitByNotions)
    splitByQuotes = re.split(r"(\".+?\")",result)
    print("splitByQuotes")
    print(splitByQuotes)

    splitBySpaces  = []
    for i in splitByQuotes:
        if not isStringConstant(i):
            splitBySpaces = splitBySpaces + i.split()
        else:
            splitBySpaces.append(i)
    print("splitBySpaces")
    print(splitBySpaces)

    finalList =[]
    for i in splitBySpaces:
        if not isStringConstant(i):
            for j in re.split(r'([^a-zA-Z\s])',i):
                if j != '':
                    finalList.append(j)
        else: 
            finalList.append(i)

    print("finalList")
    print(finalList)
    return finalList




# StringConstantList = re.split(r"(\".+\")",result)
# StringConstantListWithoutSpace = []
# for i in StringConstantList:
#     StringConstantListWithoutSpace = StringConstantListWithoutSpace + i.split()

# print(StringConstantListWithoutSpace)

# welldoneList = []
# for i in StringConstantListWithoutSpace:
#     if not isStringConstant:
#         temp = re.split(r"([^a-zA-Z\s])",i)
#         welldoneList = welldoneList + temp
#     else:
#         welldoneList = welldoneList + [i]

# print(welldoneList)


# test = result.split()
# print(test)

# result = re.split(r"([^a-zA-Z\s])",result)
# print(result)

