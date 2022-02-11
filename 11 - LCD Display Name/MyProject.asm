
_main:

;MyProject.c,16 :: 		void main ()
;MyProject.c,19 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;MyProject.c,20 :: 		Lcd_cmd(_lcd_CURSOR_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;MyProject.c,21 :: 		while(1)
L_main0:
;MyProject.c,23 :: 		lcd_out(1,1," lamees elbakr ");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,24 :: 		lcd_out(2,1," Electronic engineering ");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_MyProject+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;MyProject.c,26 :: 		}
	GOTO       L_main0
;MyProject.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
