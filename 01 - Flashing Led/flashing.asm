
_main:

;flashing.c,1 :: 		void main() {
;flashing.c,2 :: 		TRISC.B0=0;  //led is output
	BCF        TRISC+0, 0
;flashing.c,3 :: 		PORTC.B0=0;                 //led is off
	BCF        PORTC+0, 0
;flashing.c,4 :: 		while (1)
L_main0:
;flashing.c,6 :: 		PORTC.B0=1;
	BSF        PORTC+0, 0
;flashing.c,7 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;flashing.c,8 :: 		PORTC.B0=0;
	BCF        PORTC+0, 0
;flashing.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;flashing.c,10 :: 		}
	GOTO       L_main0
;flashing.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
