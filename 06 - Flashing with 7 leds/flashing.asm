
_main:

;flashing.c,1 :: 		void main() {
;flashing.c,3 :: 		TRISB=0b00000000;  //led is output
	CLRF       TRISB+0
;flashing.c,4 :: 		PORTB=0b0000000;
	CLRF       PORTB+0
;flashing.c,5 :: 		for(i=0;i<20;i++)
	CLRF       R1+0
	CLRF       R1+1
L_main0:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      20
	SUBWF      R1+0, 0
L__main6:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;flashing.c,7 :: 		PORTB=0b11111111;
	MOVLW      255
	MOVWF      PORTB+0
;flashing.c,8 :: 		delay_ms(1000);
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
;flashing.c,9 :: 		PORTB=0b0000000;                       //wait 1 second
	CLRF       PORTB+0
;flashing.c,10 :: 		delay_ms(1000);
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
;flashing.c,5 :: 		for(i=0;i<20;i++)
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;flashing.c,11 :: 		}
	GOTO       L_main0
L_main1:
;flashing.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
