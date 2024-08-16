// function SimpleFunction.test 2
(SimpleFunction.test)
@2
D=A
@13
M=D
(LOOP_SimpleFunction.test)
@13
D=M
@END_SimpleFunction.test
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
@13
M=M-1
@LOOP_SimpleFunction.test
0;JMP
(END_SimpleFunction.test)
//push local 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@0
A=M
M=D

@0
M=M+1
//push local 1
@LCL
D=M
@1
D=D+A
A=D
D=M
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
//not

@0
M=M-1
A=M
M=!M

@0
M=M+1
//push argument 0
@ARG
D=M
@0
D=D+A
A=D
D=M
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
//push argument 1
@ARG
D=M
@1
D=D+A
A=D
D=M
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
//return
@LCL
D=M
@R14
M=D
@5
D=D-A
A=D
D=M
@R15
M=D

@0
M=M-1
A=M
D=M
@ARG
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
D=M-1
A=D
D=M
@THAT
M=D
@R14
D=M-1
D=D-1
A=D
D=M
@THIS
M=D
@R14
D=M-1
D=D-1
D=D-1
A=D
D=M
@ARG
M=D
@R14
D=M-1
D=D-1
D=D-1
D=D-1
A=D
D=M
@LCL
M=D
@R15
A=M
0;JMP
