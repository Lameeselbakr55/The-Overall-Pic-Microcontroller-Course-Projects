
_main:

;direction control.c,1 :: 		void main() {
;direction control.c,2 :: 		trisc.f0=0;
	BCF        TRISC+0, 0
;direction control.c,3 :: 		trisc.f1=0;
	BCF        TRISC+0, 1
;direction control.c,4 :: 		while (1)
L_main0:
;direction control.c,6 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;direction control.c,7 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;direction control.c,8 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;direction control.c,9 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;direction control.c,10 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;direction control.c,11 :: 		delay_ms(3000);
	MOVLW      31
	MOVWF      R11+0
	MOVLW      113
	MOVWF      R12+0
	MOVLW      30
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;direction control.c,12 :: 		}
	GOTO       L_main0
;direction control.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
