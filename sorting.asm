;
; DPS_EAST_CHATTRE.asm
;
; Does the sorting
; Created: 9/4/2024 2:29:50 PM
; Author : loafers
;

.CSEG
LDI ZL,LOW(NUM<<1)
LDI ZH,HIGH(NUM<<1)

LDI XL,0x60
LDI XH,0x00

LDI R17,0x00 ;; i
LDI R18,0x01 ;; j
LDI R19,0x04 ;; N

fill_data_loop: ;; Loop that populates the iram with data in flash
	LPM R16, Z+ ;; Load 1 from flash
	ST X+, R16 ;; Store into iram

	INC R17
	CP R19, R17
	BRCC fill_data_loop ;; This will jump while R17 <= R19

LDI R17,0x00 ;; Reset i to 0

loop1: ;; Loop 5 times
    ;; Reset pointer to data
    LDI XL,0x60 
	LDI XH,0x00

    ;; Set j to i + 1
	MOV R18, R17
	INC R18
	loop2: ;; Loop 5 - j + 1 times
        ;; Load adjacent numbers from iRAM into R20 and R21
		LD R20,X+
		LD R21,X

        ;; Compare :)
		CP R21, R20
        BRCC skip_swap ;; Jumps if R20 <= R21
        
        ;; Swaps iRam[X-1] and iRam[X]
        DEC XL
        ST X+,R21
        ST X,R20

		skip_swap:
		INC R18
		CP R19, R18
		BRCC loop2

	INC R17
	CP R19, R17
	BRCC loop1

NOP
NUM: .db 0xAA, 0xA0, 0xDF, 0xCF, 0x01