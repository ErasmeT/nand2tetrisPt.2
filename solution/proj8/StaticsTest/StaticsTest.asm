// boostrap
@256
D=A
@SP
M=D
@boostrap
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@5
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(boostrap)
//
//
//
//
//
//
//function Class1.set 0
(Class1.set)
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
//pop static 0

@0
M=M-1
A=M
D=M
@Class1.0
M=D
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
//pop static 1

@0
M=M-1
A=M
D=M
@Class1.1
M=D
//push constant 0
@0
D=A
@0
A=M
M=D

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
//
//
//function Class1.get 0
(Class1.get)
//push static 0
@Class1.0
D=M
@0
A=M
M=D

@0
M=M+1
//push static 1
@Class1.1
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
//
//
//
//
//
//
//
//
//function Sys.init 0
(Sys.init)
//push constant 6
@6
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
//call Class1.set 2
@Sys$ret.0
D=A
@SP
A=M
M=D

@0
M=M+1
@LCL
D=M
@SP
A=M
M=D

@0
M=M+1
@ARG
D=M
@SP
A=M
M=D

@0
M=M+1
@THIS
D=M
@SP
A=M
M=D

@0
M=M+1
@THAT
D=M
@SP
A=M
M=D

@0
M=M+1
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.set
0;JMP
(Sys$ret.0)
//pop temp 0

@0
M=M-1
A=M
D=M
@5
M=D
//push constant 23
@23
D=A
@0
A=M
M=D

@0
M=M+1
//push constant 15
@15
D=A
@0
A=M
M=D

@0
M=M+1
//call Class2.set 2
@Sys$ret.1
D=A
@SP
A=M
M=D

@0
M=M+1
@LCL
D=M
@SP
A=M
M=D

@0
M=M+1
@ARG
D=M
@SP
A=M
M=D

@0
M=M+1
@THIS
D=M
@SP
A=M
M=D

@0
M=M+1
@THAT
D=M
@SP
A=M
M=D

@0
M=M+1
@SP
D=M
@5
D=D-A
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.set
0;JMP
(Sys$ret.1)
//pop temp 0

@0
M=M-1
A=M
D=M
@5
M=D
//call Class1.get 0
@Sys$ret.2
D=A
@SP
A=M
M=D

@0
M=M+1
@LCL
D=M
@SP
A=M
M=D

@0
M=M+1
@ARG
D=M
@SP
A=M
M=D

@0
M=M+1
@THIS
D=M
@SP
A=M
M=D

@0
M=M+1
@THAT
D=M
@SP
A=M
M=D

@0
M=M+1
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class1.get
0;JMP
(Sys$ret.2)
//call Class2.get 0
@Sys$ret.3
D=A
@SP
A=M
M=D

@0
M=M+1
@LCL
D=M
@SP
A=M
M=D

@0
M=M+1
@ARG
D=M
@SP
A=M
M=D

@0
M=M+1
@THIS
D=M
@SP
A=M
M=D

@0
M=M+1
@THAT
D=M
@SP
A=M
M=D

@0
M=M+1
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Class2.get
0;JMP
(Sys$ret.3)
//label END
(END)
//goto END
@END
0;JMP
//
//
//
//
//
//
//function Class2.set 0
(Class2.set)
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
//pop static 0

@0
M=M-1
A=M
D=M
@Class2.0
M=D
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
//pop static 1

@0
M=M-1
A=M
D=M
@Class2.1
M=D
//push constant 0
@0
D=A
@0
A=M
M=D

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
//
//
//function Class2.get 0
(Class2.get)
//push static 0
@Class2.0
D=M
@0
A=M
M=D

@0
M=M+1
//push static 1
@Class2.1
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
