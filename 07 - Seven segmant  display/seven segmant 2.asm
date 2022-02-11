
_main:

;seven segmant 2.c,1 :: 		void main() {
;seven segmant 2.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;seven segmant 2.c,3 :: 		PORTB=0x3f;
	MOVLW      63
	MOVWF      PORTB+0
;seven segmant 2.c,4 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;seven segmant 2.c,5 :: 		PORTB=0x06;
	MOVLW      6
	MOVWF      PORTB+0
;seven segmant 2.c,6 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main1:
	DECFSZ     R13+0, 1
	GOTO       L_main1
	DECFSZ     R12+0, 1
	GOTO       L_main1
	DECFSZ     R11+0, 1
	GOTO       L_main1
	NOP
	NOP
;seven segmant 2.c,7 :: 		portb=0x5b;
	MOVLW      91
	MOVWF      PORTB+0
;seven segmant 2.c,8 :: 		delay_ms(1000);
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
;seven segmant 2.c,9 :: 		portb=0x4f;
	MOVLW      79
	MOVWF      PORTB+0
;seven segmant 2.c,10 :: 		delay_ms(1000);
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
;seven segmant 2.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
