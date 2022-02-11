
_main:

;flashing.c,1 :: 		void main() {
;flashing.c,2 :: 		TRISB=0b00000000;  //led is output
	CLRF       TRISB+0
;flashing.c,3 :: 		PORTB=0b0000000;
	CLRF       PORTB+0
;flashing.c,4 :: 		delay_ms(2000);                 //led is off
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
;flashing.c,5 :: 		while (1)      //infinite loop
L_main1:
;flashing.c,7 :: 		PORTB = PORTB + 1;
	INCF       PORTB+0, 1
;flashing.c,8 :: 		delay_ms(2000);                       //wait 1 second
	MOVLW      21
	MOVWF      R11+0
	MOVLW      75
	MOVWF      R12+0
	MOVLW      190
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;flashing.c,9 :: 		}
	GOTO       L_main1
;flashing.c,10 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
