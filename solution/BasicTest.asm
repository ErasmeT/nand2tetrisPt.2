//push constant 10
@10
D=A
@0
A=M
M=D

@0
M=M+1

//pop local 0
@LCL
D=M
@0
D=D+A
@13
M=D

@0
M=M-1

@0
A=M
D=M

@R13
A=M
M=D
//push constant 21
@21
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 22
@22
D=A
@0
A=M
M=D

@0
M=M+1

//pop argument 2
@ARG
D=M
@2
D=D+A
@13
M=D

@0
M=M-1

@0
A=M
D=M

@R13
A=M
M=D
//pop argument 1
@ARG
D=M
@1
D=D+A
@13
M=D

@0
M=M-1

@0
A=M
D=M

@R13
A=M
M=D
//push constant 36
@36
D=A
@0
A=M
M=D

@0
M=M+1

//pop this 6
@THIS
D=M
@6
D=D+A
@13
M=D

@0
M=M-1

@0
A=M
D=M

@R13
A=M
M=D
//push constant 42
@42
D=A
@0
A=M
M=D

@0
M=M+1

//push constant 45
@45
D=A
@0
A=M
M=D

@0
M=M+1

//pop that 5
@THAT
D=M
@5
D=D+A
@13
M=D

@0
M=M-1

@0
A=M
D=M

@R13
A=M
M=D
//pop that 2
@THAT
D=M
@2
D=D+A
@13
M=D

@0
M=M-1

@0
A=M
D=M

@R13
A=M
M=D
//push constant 510
@510
D=A
@0
A=M
M=D

@0
M=M+1

//pop temp 6

@0
M=M-1

A=M
D=M
@11
M=D
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

//push that 5
@THAT
D=M
@5
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

//push this 6
@THIS
D=M
@6
D=D+A
A=D
D=M
@0
A=M
M=D

@0
M=M+1

//push this 6
@THIS
D=M
@6
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

//push temp 6
@11
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

