ORG 0H
MOV R1,#03H
MOV R7,#01H
LCALL FACT
MOV R7,A
FACT:
MOV A,R7
CJNE R1,#00H,UP
SJMP UP1
UP:
MOV B,R1
MUL AB
DJNZ R1,UP
UP1:
RET
END


RET
The RET instruction pops the high-order and low-order bytes of the PC from the stack (and decrements the stack pointer by 2). Program execution resumes from the resulting address which is typically the instruction following an ACALL or LCALL instruction. No flags are affected by this instruction.

LCALL
The LCALL instruction calls a subroutine located at the specified address. This instruction first adds 3 to the PC to generate the address of the next instruction. This result is pushed onto the stack low-byte first and the stack pointer is incremented by 2. The high-order and low-order bytes of the PC are loaded from the second and third bytes of the instruction respectively. Program execution is transferred to the subroutine at this address. No flags are affected by this instruction.
