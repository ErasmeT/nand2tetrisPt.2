//push constant 17
@17
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 17
@17
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

//push constant 17
@17
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 16
@16
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

@EQ1
D;JEQ
@0
A=M
M=0
@EQEND1
0;JMP
(EQ1)
@0
A=M
M=-1
(EQEND1)

@0
M=M+1

//push constant 16
@16
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 17
@17
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

@EQ2
D;JEQ
@0
A=M
M=0
@EQEND2
0;JMP
(EQ2)
@0
A=M
M=-1
(EQEND2)

@0
M=M+1

//push constant 892
@892
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 891
@891
D=A
@0
A=M
M=D

@0
M=M+1

//lt

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
D=M-D

@LT3
D;JLT
@0
A=M
M=0
@LTEND3
0;JMP
(LT3)
@0
A=M
M=-1
(LTEND3)

@0
M=M+1

//push constant 891
@891
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 892
@892
D=A
@0
A=M
M=D

@0
M=M+1

//lt

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
D=M-D

@LT4
D;JLT
@0
A=M
M=0
@LTEND4
0;JMP
(LT4)
@0
A=M
M=-1
(LTEND4)

@0
M=M+1

//push constant 891
@891
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 891
@891
D=A
@0
A=M
M=D

@0
M=M+1

//lt

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
D=M-D

@LT5
D;JLT
@0
A=M
M=0
@LTEND5
0;JMP
(LT5)
@0
A=M
M=-1
(LTEND5)

@0
M=M+1

//push constant 32767
@32767
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 32766
@32766
D=A
@0
A=M
M=D

@0
M=M+1

//gt

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
D=M-D

@GT6
D;JGT
@0
A=M
M=0
@GTEND6
0;JMP
(GT6)
@0
A=M
M=-1
(GTEND6)

@0
M=M+1

//push constant 32766
@32766
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 32767
@32767
D=A
@0
A=M
M=D

@0
M=M+1

//gt

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
D=M-D

@GT7
D;JGT
@0
A=M
M=0
@GTEND7
0;JMP
(GT7)
@0
A=M
M=-1
(GTEND7)

@0
M=M+1

//push constant 32766
@32766
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 32766
@32766
D=A
@0
A=M
M=D

@0
M=M+1

//gt

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
D=M-D

@GT8
D;JGT
@0
A=M
M=0
@GTEND8
0;JMP
(GT8)
@0
A=M
M=-1
(GTEND8)

@0
M=M+1

//push constant 57
@57
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 31
@31
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 53
@53
D=A
@0
A=M
M=D

@0
M=M+1

//add

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
M=D+M

@0
M=M+1

//push constant 112
@112
D=A
@0
A=M
M=D

@0
M=M+1

//sub

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
M=M-D

@0
M=M+1

//neg

@0
M=M-1

A=M
M=-M

@0
M=M+1

//and

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
M=D&M

@0
M=M+1

//push constant 82
@82
D=A
@0
A=M
M=D

@0
M=M+1

//or

@0
M=M-1

A=M
D=M

@0
M=M-1

A=M
M=D|M

@0
M=M+1

//not

@0
M=M-1

A=M
M=!M

@0
M=M+1

