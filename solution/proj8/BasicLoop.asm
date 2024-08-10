//push constant 0
@0
D=A
@0
A=M
M=D

@0
M=M+1
//pop local 0

@0
M=M-1
@LCL
D=M
@0
D=D+A
@13
M=D
@0
A=M
D=M

@R13
A=M
M=D
//label LOOP
(LOOP)
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
//pop local 0

@0
M=M-1
@LCL
D=M
@0
D=D+A
@13
M=D
@0
A=M
D=M

@R13
A=M
M=D
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
//push constant 1
@1
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
//pop argument 0

@0
M=M-1
@ARG
D=M
@0
D=D+A
@13
M=D
@0
A=M
D=M

@R13
A=M
M=D
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
//if-goto LOOP

@0
M=M-1
@SP
A=M
D=M
@LOOP
D;JGT
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
