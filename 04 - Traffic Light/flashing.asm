
_main:

;flashing.c,1 :: 		void main() {
;flashing.c,2 :: 		TRISC=0b00000000;  //led is output
	CLRF       TRISC+0
;flashing.c,3 :: 		PORTC=0b00000000;  //led is off
	CLRF       PORTC+0
;flashing.c,4 :: 		while (1)      //infinite loop
L_main0:
;flashing.c,6 :: 		PORTC.F0=1;                   //led on
	BSF        PORTC+0, 0
;flashing.c,7 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;flashing.c,8 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;flashing.c,9 :: 		delay_ms(1000);                       //wait 1 second
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
;flashing.c,10 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;flashing.c,11 :: 		PORTC.F1=1;
	BSF        PORTC+0, 1
;flashing.c,12 :: 		PORTC.F2=0;
	BCF        PORTC+0, 2
;flashing.c,13 :: 		delay_ms(1000);                        //wait i second
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
;flashing.c,14 :: 		PORTC.F0=0;
	BCF        PORTC+0, 0
;flashing.c,15 :: 		PORTC.F1=0;
	BCF        PORTC+0, 1
;flashing.c,16 :: 		PORTC.F2=1;
	BSF        PORTC+0, 2
;flashing.c,17 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;flashing.c,18 :: 		}
	GOTO       L_main0
;flashing.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
