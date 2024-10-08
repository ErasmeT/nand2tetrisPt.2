////////// BOOTSTRAP CODE //////////
@256
D=A
@SP
M=D

/// call Sys.init 0 ///
@RETURN_0
D=A
@SP
A=M
M=D
@SP            // SP++
M=M+1



// pushing segment LCL on the stack !
@LCL
D=M
@SP
A=M
M=D
@SP            // SP++
M=M+1


// pushing segment ARG on the stack !
@ARG
D=M
@SP
A=M
M=D
@SP            // SP++
M=M+1


// pushing segment THIS on the stack !
@THIS
D=M
@SP
A=M
M=D
@SP            // SP++
M=M+1


// pushing segment THAT on the stack !
@THAT
D=M
@SP
A=M
M=D
@SP            // SP++
M=M+1



// ARG = SP-n-5
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D

// LCL = SP
@SP
D=M
@LCL
M=D

// goto f
@Sys.init
0;JMP

(RETURN_0)

////////// BOOTSTRAP CODE END //////////

/// push constant 10 ///
@10
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// pop local 0 ///
@LCL
D=M
@0
D=D+A

@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// push constant 21 ///
@21
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// push constant 22 ///
@22
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// pop argument 2 ///
@ARG
D=M
@2
D=D+A

@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// pop argument 1 ///
@ARG
D=M
@1
D=D+A

@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// push constant 36 ///
@36
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// pop this 6 ///
@THIS
D=M
@6
D=D+A

@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// push constant 42 ///
@42
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// push constant 45 ///
@45
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// pop that 5 ///
@THAT
D=M
@5
D=D+A

@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// pop that 2 ///
@THAT
D=M
@2
D=D+A

@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// push constant 510 ///
@510
D=A

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// pop temp 6 ///
@R5
D=A
@6
D=D+A
@R13
M=D

@SP            // SP--
M=M-1

@SP
A=M
D=M

@R13
A=M
M=D

/// push local 0 ///
@LCL
D=M       // indirect, pointer
@0
A=D+A
D=M

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// push that 5 ///
@THAT
D=M       // indirect, pointer
@5
A=D+A
D=M

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// add ///
@SP            // SP--
M=M-1

@SP
A=M
D=M
@SP            // SP--
M=M-1

@SP
A=M
M=M+D
@SP            // SP++
M=M+1

/// push argument 1 ///
@ARG
D=M       // indirect, pointer
@1
A=D+A
D=M

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// sub ///
@SP            // SP--
M=M-1

@SP
A=M
D=M
@SP            // SP--
M=M-1

@SP
A=M
M=M-D
@SP            // SP++
M=M+1

/// push this 6 ///
@THIS
D=M       // indirect, pointer
@6
A=D+A
D=M

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// push this 6 ///
@THIS
D=M       // indirect, pointer
@6
A=D+A
D=M

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// add ///
@SP            // SP--
M=M-1

@SP
A=M
D=M
@SP            // SP--
M=M-1

@SP
A=M
M=M+D
@SP            // SP++
M=M+1

/// sub ///
@SP            // SP--
M=M-1

@SP
A=M
D=M
@SP            // SP--
M=M-1

@SP
A=M
M=M-D
@SP            // SP++
M=M+1

/// push temp 6 ///
@R5
D=A
@6
A=D+A
D=M

@SP
A=M
M=D
@SP            // SP++
M=M+1

/// add ///
@SP            // SP--
M=M-1

@SP
A=M
D=M
@SP            // SP--
M=M-1

@SP
A=M
M=M+D
@SP            // SP++
M=M+1

