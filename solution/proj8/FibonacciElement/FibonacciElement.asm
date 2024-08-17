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
//
//
//
//
//
//function Main.fibonacci 0
(Main.fibonacci)
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
//push constant 2
@2
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

@LT0
D;JLT
@0
A=M
M=0
@LTEND0
0;JMP
(LT0)
@0
A=M
M=-1
(LTEND0)

@0
M=M+1
//if-goto N_LT_2

@0
M=M-1
@SP
A=M
D=M
@N_LT_2
D;JNE
//goto N_GE_2
@N_GE_2
0;JMP
//label N_LT_2
(N_LT_2)
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
//label N_GE_2
(N_GE_2)
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
//push constant 2
@2
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
//call Main.fibonacci 1
@Main$ret.1
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
@Main.fibonacci
0;JMP
(Main$ret.1)
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
//call Main.fibonacci 1
@Main$ret.2
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
@Main.fibonacci
0;JMP
(Main$ret.2)
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
//
//
//
//function Sys.init 0
(Sys.init)
//
//push constant 4
@4
D=A
@0
A=M
M=D

@0
M=M+1
//
//call Main.fibonacci 1
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
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP
(Sys$ret.3)
//label END
(END)
//goto END
@END
0;JMP
