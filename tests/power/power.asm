	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
L2 : 	.WORD 0
L3 : 	.WORD 0
	.text
	READ R1 0
	STORE R1 L0
	READ R2 0
	SUBI R3 R2 #0
	STORE R2 L2
	SEQ R3 0
	ANDB R3 R3 R3
	BEQ L4
	ADDI R3 R0 #0
	WRITE R3 0
	HALT
L4 : 	LOAD R2 L2
	SUBI R3 R2 #0
	STORE R2 L2
	SLT R3 0
	ANDB R3 R3 R3
	BEQ L5
	ADDI R3 R0 #1
	STORE R3 L3
	LOAD R2 L2
	SUB R4 R0 R2
	ADD R2 R0 R4
	STORE R2 L2
	BT L6
L5 : 	ADDI R3 R0 #0
	STORE R3 L3
L6 : 	LOAD R1 L0
	ADD R4 R0 R1
	STORE R4 L1
	STORE R1 L0
L7 : 	LOAD R2 L2
	SUBI R5 R2 #1
	STORE R2 L2
	SGT R5 0
	ANDB R5 R5 R5
	BEQ L8
	LOAD R4 L1
	LOAD R1 L0
	MUL R5 R4 R1
	STORE R1 L0
	ADD R4 R0 R5
	STORE R4 L1
	LOAD R2 L2
	SUBI R5 R2 #1
	ADD R2 R0 R5
	STORE R2 L2
	BT L7
L8 : 	LOAD R3 L3
	SUBI R2 R3 #1
	STORE R3 L3
	SEQ R2 0
	ANDB R2 R2 R2
	BEQ L9
	ADDI R2 R0 #1
	LOAD R4 L1
	DIV R3 R2 R4
	ADD R4 R0 R3
	STORE R4 L1
L9 : 	LOAD R4 L1
	WRITE R4 0
	STORE R4 L1
	HALT
