
_main:

;speed and direction.c,3 :: 		void main() {
;speed and direction.c,4 :: 		trisa=1;        porta=0;
	MOVLW      1
	MOVWF      TRISA+0
	CLRF       PORTA+0
;speed and direction.c,5 :: 		trisb.f0=1;     portb.f0=0;
	BSF        TRISB+0, 0
	BCF        PORTB+0, 0
;speed and direction.c,6 :: 		trisc=0;        portc=0b00000000;
	CLRF       TRISC+0
	CLRF       PORTC+0
;speed and direction.c,7 :: 		PWM1_init(1000);
	BSF        T2CON+0, 0
	BSF        T2CON+0, 1
	MOVLW      124
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;speed and direction.c,8 :: 		ADC_init();
	CALL       _ADC_Init+0
;speed and direction.c,9 :: 		PWM1_start();
	CALL       _PWM1_Start+0
;speed and direction.c,10 :: 		for(;;)
L_main0:
;speed and direction.c,12 :: 		if(portb.f0==1)
	BTFSS      PORTB+0, 0
	GOTO       L_main3
;speed and direction.c,14 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;speed and direction.c,15 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;speed and direction.c,16 :: 		}
	GOTO       L_main4
L_main3:
;speed and direction.c,19 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;speed and direction.c,20 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;speed and direction.c,21 :: 		}
L_main4:
;speed and direction.c,22 :: 		v=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _v+0
	MOVF       R0+1, 0
	MOVWF      _v+1
;speed and direction.c,23 :: 		duty=v/4;
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	BTFSC      R2+1, 6
	BSF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	BTFSC      R2+1, 6
	BSF        R2+1, 7
	MOVF       R2+0, 0
	MOVWF      _duty+0
	MOVF       R2+1, 0
	MOVWF      _duty+1
;speed and direction.c,24 :: 		PWM1_Set_Duty(duty);
	MOVF       R2+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;speed and direction.c,25 :: 		}
	GOTO       L_main0
;speed and direction.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
