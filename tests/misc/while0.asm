	.data
L0 : 	.WORD 0
	.text
	READ R1 0
	STORE R1 L0
L1 : 	ADDI R2 R0 #0
	BEQ L2
	ADDI R2 R0 #0
	WRITE R2 0
	BT L1
L2 : 	LOAD R1 L0
	WRITE R1 0
	STORE R1 L0
	HALT
