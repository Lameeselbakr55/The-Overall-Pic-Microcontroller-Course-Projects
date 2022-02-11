
_main:

;ADC Project .c,19 :: 		void main()
;ADC Project .c,21 :: 		trisc.f0=0;
	BCF        TRISC+0, 0
;ADC Project .c,22 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;ADC Project .c,23 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;ADC Project .c,24 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ADC Project .c,25 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ADC Project .c,26 :: 		ADC_Init();
	CALL       _ADC_Init+0
;ADC Project .c,27 :: 		Lcd_Out(1, 1, "temperature =");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_ADC_32Project_32+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,28 :: 		while(1)
L_main0:
;ADC Project .c,30 :: 		tmp = ADC_Read(0);                                      // 10 mv  -----> 1 c
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _Word2Double+0
	MOVF       R0+0, 0
	MOVWF      _tmp+0
	MOVF       R0+1, 0
	MOVWF      _tmp+1
	MOVF       R0+2, 0
	MOVWF      _tmp+2
	MOVF       R0+3, 0
	MOVWF      _tmp+3
;ADC Project .c,31 :: 		v = (tmp*500.0)/1023;                                  //  z (temperature) -----> y (volt)
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      122
	MOVWF      R4+2
	MOVLW      135
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVLW      0
	MOVWF      R4+0
	MOVLW      192
	MOVWF      R4+1
	MOVLW      127
	MOVWF      R4+2
	MOVLW      136
	MOVWF      R4+3
	CALL       _Div_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      _v+0
	MOVF       R0+1, 0
	MOVWF      _v+1
	MOVF       R0+2, 0
	MOVWF      _v+2
	MOVF       R0+3, 0
	MOVWF      _v+3
;ADC Project .c,32 :: 		floatToStr(v,str);                                     // z(temperature ) = 100 y (volt)
	MOVF       R0+0, 0
	MOVWF      FARG_FloatToStr_fnum+0
	MOVF       R0+1, 0
	MOVWF      FARG_FloatToStr_fnum+1
	MOVF       R0+2, 0
	MOVWF      FARG_FloatToStr_fnum+2
	MOVF       R0+3, 0
	MOVWF      FARG_FloatToStr_fnum+3
	MOVLW      _str+0
	MOVWF      FARG_FloatToStr_str+0
	CALL       _FloatToStr+0
;ADC Project .c,33 :: 		Lcd_Out(1,14,str);                                         // y = x * 5 / 1023
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,34 :: 		delay_ms (500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;ADC Project .c,35 :: 		if (v>30 )
	MOVF       _v+0, 0
	MOVWF      R4+0
	MOVF       _v+1, 0
	MOVWF      R4+1
	MOVF       _v+2, 0
	MOVWF      R4+2
	MOVF       _v+3, 0
	MOVWF      R4+3
	MOVLW      0
	MOVWF      R0+0
	MOVLW      0
	MOVWF      R0+1
	MOVLW      112
	MOVWF      R0+2
	MOVLW      131
	MOVWF      R0+3
	CALL       _Compare_Double+0
	MOVLW      1
	BTFSC      STATUS+0, 0
	MOVLW      0
	MOVWF      R0+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main3
;ADC Project .c,37 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;ADC Project .c,38 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ADC Project .c,39 :: 		Lcd_Out(1, 1, "temperature =");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_ADC_32Project_32+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,40 :: 		Lcd_Out(1,14,str);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,41 :: 		Lcd_Out(2,1,"overheated");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_ADC_32Project_32+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,42 :: 		delay_ms (1000);
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
;ADC Project .c,43 :: 		}
	GOTO       L_main5
L_main3:
;ADC Project .c,46 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;ADC Project .c,47 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;ADC Project .c,48 :: 		Lcd_Out(1, 1, "temperature =");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_ADC_32Project_32+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,49 :: 		Lcd_Out(1,14,str);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,50 :: 		Lcd_Out(2,1,"normal");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_ADC_32Project_32+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;ADC Project .c,51 :: 		delay_ms (1000);
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
;ADC Project .c,52 :: 		}
L_main5:
;ADC Project .c,53 :: 		}
	GOTO       L_main0
;ADC Project .c,54 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
