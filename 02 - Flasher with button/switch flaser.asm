
_main:

;switch flaser.c,1 :: 		void main() {
;switch flaser.c,2 :: 		TRISC.B0=0;  //led is output
	BCF        TRISC+0, 0
;switch flaser.c,3 :: 		PORTC.B0=0;                 //led is off
	BCF        PORTC+0, 0
;switch flaser.c,4 :: 		TRISB.F0=1;
	BSF        TRISB+0, 0
;switch flaser.c,5 :: 		while (1)      //infinite loop
L_main0:
;switch flaser.c,7 :: 		if(PORTB.F0==1)
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;switch flaser.c,9 :: 		PORTC.B0=1;                   //led on
	BSF        PORTC+0, 0
;switch flaser.c,10 :: 		delay_ms(1000);                       //wait 1 second
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
;switch flaser.c,11 :: 		PORTC.B0=0;                   //led off
	BCF        PORTC+0, 0
;switch flaser.c,12 :: 		delay_ms(1000);                        //wait i second
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
;switch flaser.c,13 :: 		}
L_main2:
;switch flaser.c,14 :: 		}
	GOTO       L_main0
;switch flaser.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
