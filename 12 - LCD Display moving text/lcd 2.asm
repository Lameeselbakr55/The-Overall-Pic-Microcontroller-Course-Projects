
_main:

;lcd 2.c,17 :: 		void main() {
;lcd 2.c,18 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;lcd 2.c,19 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd 2.c,20 :: 		while(1)
L_main0:
;lcd 2.c,22 :: 		for (i=0;i<=16;i++)
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       _i+0, 0
	SUBLW      16
L__main8:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;lcd 2.c,24 :: 		Lcd_Out(1,i,"Display");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVF       _i+0, 0
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcd_322+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd 2.c,25 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;lcd 2.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);               // Clear display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd 2.c,27 :: 		delay_ms(20);
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;lcd 2.c,22 :: 		for (i=0;i<=16;i++)
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;lcd 2.c,28 :: 		}
	GOTO       L_main2
L_main3:
;lcd 2.c,29 :: 		}
	GOTO       L_main0
;lcd 2.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
