//push constant 7
@7
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
//push constant 9
@9
D=A
@0
A=M
M=D

@0
M=M+1
//push constant 10
@10
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
