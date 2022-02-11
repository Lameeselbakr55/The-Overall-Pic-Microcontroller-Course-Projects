
_main:

;lcd 3.c,18 :: 		void main() {
;lcd 3.c,19 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;lcd 3.c,20 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd 3.c,21 :: 		while(1)
L_main0:
;lcd 3.c,23 :: 		for (i=0;i<=16;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       _i+0, 0
	SUBLW      16
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;lcd 3.c,26 :: 		IntToStr(i,str);
	MOVF       _i+0, 0
	MOVWF      FARG_IntToStr_input+0
	MOVF       _i+1, 0
	MOVWF      FARG_IntToStr_input+1
	MOVLW      _str+0
	MOVWF      FARG_IntToStr_output+0
	CALL       _IntToStr+0
;lcd 3.c,27 :: 		Lcd_Out(1,1,str);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _str+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd 3.c,28 :: 		delay_ms(1000);
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
;lcd 3.c,29 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd 3.c,23 :: 		for (i=0;i<=16;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;lcd 3.c,30 :: 		}
	GOTO       L_main2
L_main3:
;lcd 3.c,31 :: 		}
	GOTO       L_main0
;lcd 3.c,32 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
