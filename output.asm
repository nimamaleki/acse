	.data
L0 : 	.WORD 0
L1 : 	.WORD 0
	.text
	READ R1 0
	SUBI R2 R1 #0
	STORE R1 L0
	SLT R2 0
	ANDB R2 R2 R2
	BEQ L2
	ADDI R2 R0 #-1
	WRITE R2 0
	HALT
L2 : 	ADDI R2 R0 #1
	STORE R2 L1
L3 : 	LOAD R1 L0
	SUBI R3 R1 #0
	STORE R1 L0
	SGT R3 0
	ANDB R3 R3 R3
	BEQ L4
	LOAD R1 L0
	LOAD R2 L1
	MUL R3 R1 R2
	ADD R2 R0 R3
	STORE R2 L1
	SUBI R3 R1 #1
	ADD R1 R0 R3
	STORE R1 L0
	BT L3
L4 : 	LOAD R2 L1
	WRITE R2 0
	STORE R2 L1
	HALT
