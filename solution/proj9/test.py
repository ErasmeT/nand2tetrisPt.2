import re
import xml.etree.ElementTree as ET

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


xmltest = """
<keyword> class </keyword>
<identifier> Main </identifier>
<symbol> { </symbol>
<keyword> function </keyword>
<keyword> void </keyword>
<identifier> main </identifier>
<symbol> ( </symbol>
<symbol> ) </symbol>
<symbol> { </symbol>
<keyword> var </keyword>
<identifier> Array </identifier>
<identifier> a </identifier>
<symbol> ; </symbol>
<keyword> var </keyword>
<keyword> int </keyword>
<identifier> length </identifier>
<symbol> ; </symbol>
<keyword> var </keyword>
<keyword> int </keyword>
<identifier> i </identifier>
<symbol> , </symbol>
<identifier> sum </identifier>
<symbol> ; </symbol>
<keyword> let </keyword>
<identifier> length </identifier>
<symbol> = </symbol>
<identifier> Keyboard </identifier>
<symbol> . </symbol>
<identifier> readInt </identifier>
<symbol> ( </symbol>
<identifier> &quot </identifier>
<StringConstant> How many numbers?  </StringConstant>
<identifier> &quot </identifier>
<symbol> ) </symbol>
<symbol> ; </symbol>
<keyword> let </keyword>
<identifier> a </identifier>
<symbol> = </symbol>
<identifier> Array </identifier>
<symbol> . </symbol>
<identifier> new </identifier>
<symbol> ( </symbol>
<identifier> length </identifier>
<symbol> ) </symbol>
<symbol> ; </symbol>
<keyword> let </keyword>
<identifier> i </identifier>
<symbol> = </symbol>
<integerConstant> 0 </integerConstant>
<symbol> ; </symbol>
<keyword> while </keyword>
<symbol> ( </symbol>
<identifier> i </identifier>
<symbol> &lt </symbol>
<identifier> length </identifier>
<symbol> ) </symbol>
<symbol> { </symbol>
<keyword> let </keyword>
<identifier> a </identifier>
<symbol> [ </symbol>
<identifier> i </identifier>
<symbol> ] </symbol>
<symbol> = </symbol>
<identifier> Keyboard </identifier>
<symbol> . </symbol>
<identifier> readInt </identifier>
<symbol> ( </symbol>
<identifier> &quot </identifier>
<StringConstant> Enter a number:  </StringConstant>
<identifier> &quot </identifier>
<symbol> ) </symbol>
<symbol> ; </symbol>
<keyword> let </keyword>
<identifier> sum </identifier>
<symbol> = </symbol>
<identifier> sum </identifier>
<symbol> + </symbol>
<identifier> a </identifier>
<symbol> [ </symbol>
<identifier> i </identifier>
<symbol> ] </symbol>
<symbol> ; </symbol>
<keyword> let </keyword>
<identifier> i </identifier>
<symbol> = </symbol>
<identifier> i </identifier>
<symbol> + </symbol>
<integerConstant> 1 </integerConstant>
<symbol> ; </symbol>
<symbol> } </symbol>
<keyword> do </keyword>
<identifier> Output </identifier>
<symbol> . </symbol>
<identifier> printString </identifier>
<symbol> ( </symbol>
<identifier> &quot </identifier>
<StringConstant> The average is  </StringConstant>
<identifier> &quot </identifier>
<symbol> ) </symbol>
<symbol> ; </symbol>
<keyword> do </keyword>
<identifier> Output </identifier>
<symbol> . </symbol>
<identifier> printInt </identifier>
<symbol> ( </symbol>
<identifier> sum </identifier>
<symbol> / </symbol>
<identifier> length </identifier>
<symbol> ) </symbol>
<symbol> ; </symbol>
<keyword> return </keyword>
<symbol> ; </symbol>
<symbol> } </symbol>
<symbol> } </symbol>
"""

a = ET.Element('this is atag')
a.text = 'this is the text following atag'
b = ET.SubElement(a,'btag')
b.text = 'and this is the text following btag'
c = ET.SubElement(b,'catg')
ET.dump(a)