
_main:

;voltage devider.c,19 :: 		void main()
;voltage devider.c,21 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;voltage devider.c,22 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                    // r2= v * r2/r1+r2       but r1=100
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voltage devider.c,23 :: 		Lcd_Cmd(_LCD_CLEAR);                        //r2= 1000v/5-v
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;voltage devider.c,24 :: 		ADC_Init();
	CALL       _ADC_Init+0
;voltage devider.c,25 :: 		Lcd_Out(1, 1, "resistace =");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_voltage_32devider+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voltage devider.c,26 :: 		while(1)
L_main0:
;voltage devider.c,28 :: 		v=ADC_Read(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	CALL       _Word2Double+0
	MOVF       R0+0, 0
	MOVWF      _v+0
	MOVF       R0+1, 0
	MOVWF      _v+1
	MOVF       R0+2, 0
	MOVWF      _v+2
	MOVF       R0+3, 0
	MOVWF      _v+3
;voltage devider.c,29 :: 		v=(v*5.0)/1023;
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      32
	MOVWF      R4+2
	MOVLW      129
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
;voltage devider.c,30 :: 		res2=(1000*v)/(5-v);
	MOVLW      0
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVLW      122
	MOVWF      R4+2
	MOVLW      136
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
	MOVF       R0+2, 0
	MOVWF      FLOC__main+2
	MOVF       R0+3, 0
	MOVWF      FLOC__main+3
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
	MOVLW      32
	MOVWF      R0+2
	MOVLW      129
	MOVWF      R0+3
	CALL       _Sub_32x32_FP+0
	MOVF       R0+0, 0
	MOVWF      R4+0
	MOVF       R0+1, 0
	MOVWF      R4+1
	MOVF       R0+2, 0
	MOVWF      R4+2
	MOVF       R0+3, 0
	MOVWF      R4+3
	MOVF       FLOC__main+0, 0
	MOVWF      R0+0
	MOVF       FLOC__main+1, 0
	MOVWF      R0+1
	MOVF       FLOC__main+2, 0
	MOVWF      R0+2
	MOVF       FLOC__main+3, 0
	MOVWF      R0+3
	CALL       _Div_32x32_FP+0
	CALL       _Double2Word+0
	MOVF       R0+0, 0
	MOVWF      _res2+0
	MOVF       R0+1, 0
	MOVWF      _res2+1
;voltage devider.c,31 :: 		IntToStr(res2,res);
	MOVF       R0+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       R0+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _res+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;voltage devider.c,32 :: 		Lcd_Out(2,7,res);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      7
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _res+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;voltage devider.c,33 :: 		}
	GOTO       L_main0
;voltage devider.c,34 :: 		}
	GOTO       $+0
; end of _main
