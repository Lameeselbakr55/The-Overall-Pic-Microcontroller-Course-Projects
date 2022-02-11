
_main:

;seven segmant 3.c,1 :: 		void main() {
;seven segmant 3.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;seven segmant 3.c,3 :: 		while(1)
L_main0:
;seven segmant 3.c,5 :: 		PORTB=0x3f;
	MOVLW      63
	MOVWF      PORTB+0
;seven segmant 3.c,6 :: 		delay_ms(1000);
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
;seven segmant 3.c,7 :: 		PORTB=0x06;
	MOVLW      6
	MOVWF      PORTB+0
;seven segmant 3.c,8 :: 		delay_ms(1000);
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
;seven segmant 3.c,9 :: 		PORTB=0x5b;
	MOVLW      91
	MOVWF      PORTB+0
;seven segmant 3.c,10 :: 		delay_ms(1000);
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
;seven segmant 3.c,11 :: 		PORTB=0x4f;
	MOVLW      79
	MOVWF      PORTB+0
;seven segmant 3.c,12 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;seven segmant 3.c,13 :: 		PORTB=0x66;
	MOVLW      102
	MOVWF      PORTB+0
;seven segmant 3.c,14 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;seven segmant 3.c,15 :: 		PORTB=0x6d;
	MOVLW      109
	MOVWF      PORTB+0
;seven segmant 3.c,16 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;seven segmant 3.c,17 :: 		}
	GOTO       L_main0
;seven segmant 3.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
