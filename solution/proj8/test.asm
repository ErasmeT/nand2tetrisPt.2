//
//
//
//
//
//
//function Sys.init 0
(Sys.init)
//push constant 4000
@4000
D=A
@0
A=M
M=D

@0
M=M+1
//pop pointer 0

@0
M=M-1
A=M
D=M
@3
M=D
//push constant 5000
@5000
D=A
@0
A=M
M=D

@0
M=M+1
//pop pointer 1

@0
M=M-1
A=M
D=M
@4
M=D
//call Sys.main 0
@returnAddress
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
@Sys.main
0;JMP
(returnAddress0)
//pop temp 1

@0
M=M-1
A=M
D=M
@6
M=D
//label LOOP
(LOOP)
//goto LOOP
@LOOP
0;JMP
//
//
//
//
//
//
//
//function Sys.main 5
(Sys.main)
@0
D=M
A=M
M=D

@0
M=M+1
@0
D=M
A=M
M=D

@0
M=M+1
@0
D=M
A=M
M=D

@0
M=M+1
@0
D=M
A=M
M=D

@0
M=M+1
@0
D=M
A=M
M=D

@0
M=M+1
//push constant 4001
@4001
D=A
@0
A=M
M=D

@0
M=M+1
//pop pointer 0

@0
M=M-1
A=M
D=M
@3
M=D
//push constant 5001
@5001
D=A
@0
A=M
M=D

@0
M=M+1
//pop pointer 1

@0
M=M-1
A=M
D=M
@4
M=D
//push constant 200
@200
D=A
@0
A=M
M=D

@0
M=M+1
//pop local 1

@0
M=M-1
@LCL
D=M
@1
D=D+A
@13
M=D
@0
A=M
D=M

@R13
A=M
M=D
//push constant 40
@40
D=A
@0
A=M
M=D

@0
M=M+1
//pop local 2

@0
M=M-1
@LCL
D=M
@2
D=D+A
@13
M=D
@0
A=M
D=M

@R13
A=M
M=D
//push constant 6
@6
D=A
@0
A=M
M=D

@0
M=M+1
//pop local 3

@0
M=M-1
@LCL
D=M
@3
D=D+A
@13
M=D
@0
A=M
D=M

@R13
A=M
M=D
//push constant 123
@123
D=A
@0
A=M
M=D

@0
M=M+1
//call Sys.add12 1
@returnAddress
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
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP
(returnAddress1)
//pop temp 0

@0
M=M-1
A=M
D=M
@5
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
//push local 2
@LCL
D=M
@2
D=D+A
A=D
D=M
@0
A=M
M=D

@0
M=M+1
//push local 3
@LCL
D=M
@3
D=D+A
A=D
D=M
@0
A=M
M=D

@0
M=M+1
//push local 4
@LCL
D=M
@4
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
//return
@LCL
D=M
@R14
M=D
@5
D=D-A
A=M
D=M
@R15
M=D
@ARG
A=M
D=M
@SP
M=M-1
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
D=M-1
A=M
D=M
@THAT
M=D
@R14
D=M-1
D=D-1
A=M
D=M
@THIS
M=D
@R14
D=M-1
D=D-1
D=D-1
A=M
D=M
@ARG
M=D
@R14
D=M-1
D=D-1
D=D-1
D=D-1
A=M
D=M
@LCL
M=D
@R15
0;JMP
//
//
//function Sys.add12 0
(Sys.add12)
//push constant 4002
@4002
D=A
@0
A=M
M=D

@0
M=M+1
//pop pointer 0

@0
M=M-1
A=M
D=M
@3
M=D
//push constant 5002
@5002
D=A
@0
A=M
M=D

@0
M=M+1
//pop pointer 1

@0
M=M-1
A=M
D=M
@4
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
//push constant 12
@12
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
//return
@LCL
D=M
@R14
M=D
@5
D=D-A
A=M
D=M
@R15
M=D
@ARG
A=M
D=M
@SP
M=M-1
A=M
M=D
@ARG
D=M+1
@SP
M=D
@R14
D=M-1
A=M
D=M
@THAT
M=D
@R14
D=M-1
D=D-1
A=M
D=M
@THIS
M=D
@R14
D=M-1
D=D-1
D=D-1
A=M
D=M
@ARG
M=D
@R14
D=M-1
D=D-1
D=D-1
D=D-1
A=M
D=M
@LCL
M=D
@R15
0;JMP
