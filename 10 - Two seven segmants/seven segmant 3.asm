
_main:

;seven segmant 3.c,1 :: 		void main() {
;seven segmant 3.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;seven segmant 3.c,3 :: 		trisc=0;
	CLRF       TRISC+0
;seven segmant 3.c,4 :: 		while(1)
L_main0:
;seven segmant 3.c,6 :: 		portb=0b00000000;
	CLRF       PORTB+0
;seven segmant 3.c,7 :: 		portc=0b00000000;
	CLRF       PORTC+0
;seven segmant 3.c,8 :: 		PORTB=0x3f;
	MOVLW      63
	MOVWF      PORTB+0
;seven segmant 3.c,9 :: 		delay_ms(1000);
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
;seven segmant 3.c,10 :: 		PORTB=0x06;
	MOVLW      6
	MOVWF      PORTB+0
;seven segmant 3.c,11 :: 		delay_ms(1000);
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
;seven segmant 3.c,12 :: 		PORTB=0x5b;
	MOVLW      91
	MOVWF      PORTB+0
;seven segmant 3.c,13 :: 		delay_ms(1000);
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
;seven segmant 3.c,14 :: 		PORTB=0x4f;
	MOVLW      79
	MOVWF      PORTB+0
;seven segmant 3.c,15 :: 		delay_ms(1000);
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
;seven segmant 3.c,16 :: 		PORTB=0x66;
	MOVLW      102
	MOVWF      PORTB+0
;seven segmant 3.c,17 :: 		delay_ms(1000);
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
;seven segmant 3.c,18 :: 		PORTB=0x6d;
	MOVLW      109
	MOVWF      PORTB+0
;seven segmant 3.c,19 :: 		delay_ms(1000);
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
;seven segmant 3.c,20 :: 		PORTB=0x7d;
	MOVLW      125
	MOVWF      PORTB+0
;seven segmant 3.c,21 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;seven segmant 3.c,22 :: 		PORTB=0x47;
	MOVLW      71
	MOVWF      PORTB+0
;seven segmant 3.c,23 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;seven segmant 3.c,24 :: 		PORTB=0x7f;
	MOVLW      127
	MOVWF      PORTB+0
;seven segmant 3.c,25 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;seven segmant 3.c,26 :: 		PORTB=0x6f;
	MOVLW      111
	MOVWF      PORTB+0
;seven segmant 3.c,27 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;seven segmant 3.c,28 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,29 :: 		portc=0x3f;
	MOVLW      63
	MOVWF      PORTC+0
;seven segmant 3.c,30 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;seven segmant 3.c,31 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,32 :: 		PORTC=0x30;
	MOVLW      48
	MOVWF      PORTC+0
;seven segmant 3.c,33 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main13:
	DECFSZ     R13+0, 1
	GOTO       L_main13
	DECFSZ     R12+0, 1
	GOTO       L_main13
	DECFSZ     R11+0, 1
	GOTO       L_main13
	NOP
	NOP
;seven segmant 3.c,34 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,35 :: 		portc=0x5b;
	MOVLW      91
	MOVWF      PORTC+0
;seven segmant 3.c,36 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;seven segmant 3.c,37 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,38 :: 		portc=0x4f;
	MOVLW      79
	MOVWF      PORTC+0
;seven segmant 3.c,39 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	DECFSZ     R11+0, 1
	GOTO       L_main15
	NOP
	NOP
;seven segmant 3.c,40 :: 		portb=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,41 :: 		PORTC=0x66;
	MOVLW      102
	MOVWF      PORTC+0
;seven segmant 3.c,42 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;seven segmant 3.c,43 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,44 :: 		portc=0x6d;
	MOVLW      109
	MOVWF      PORTC+0
;seven segmant 3.c,45 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
	NOP
	NOP
;seven segmant 3.c,46 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,47 :: 		portc=0x7d;
	MOVLW      125
	MOVWF      PORTC+0
;seven segmant 3.c,48 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	DECFSZ     R11+0, 1
	GOTO       L_main18
	NOP
	NOP
;seven segmant 3.c,49 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,50 :: 		portc=0x47;
	MOVLW      71
	MOVWF      PORTC+0
;seven segmant 3.c,51 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	DECFSZ     R11+0, 1
	GOTO       L_main19
	NOP
	NOP
;seven segmant 3.c,52 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,53 :: 		portc=0x7f;
	MOVLW      127
	MOVWF      PORTC+0
;seven segmant 3.c,54 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
	NOP
	NOP
;seven segmant 3.c,55 :: 		PORTB=0x30;
	MOVLW      48
	MOVWF      PORTB+0
;seven segmant 3.c,56 :: 		portc=0x6f;
	MOVLW      111
	MOVWF      PORTC+0
;seven segmant 3.c,57 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main21:
	DECFSZ     R13+0, 1
	GOTO       L_main21
	DECFSZ     R12+0, 1
	GOTO       L_main21
	DECFSZ     R11+0, 1
	GOTO       L_main21
	NOP
	NOP
;seven segmant 3.c,58 :: 		PORTB=0x5b;
	MOVLW      91
	MOVWF      PORTB+0
;seven segmant 3.c,59 :: 		portc=0x3f;
	MOVLW      63
	MOVWF      PORTC+0
;seven segmant 3.c,60 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
	NOP
	NOP
;seven segmant 3.c,61 :: 		}
	GOTO       L_main0
;seven segmant 3.c,62 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
