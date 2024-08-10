//label aaa
(aaa)
//push constant 8
@8
D=A
@0
A=M
M=D

@0
M=M+1
//push constant 8
@8
D=A
@0
A=M
M=D

@0
M=M+1
//eq

@0
M=M-1
A=M
D=M

@0
M=M-1
A=M
D=M-D

@EQ0
D;JEQ
@0
A=M
M=0
@EQEND0
0;JMP
(EQ0)
@0
A=M
M=-1
(EQEND0)

@0
M=M+1
//if-goto aa

@0
M=M-1
@SP
A=M
D=M
@aa
D;JGT
