
_StartSignal:

;dht11.c,18 :: 		void StartSignal(){
;dht11.c,19 :: 		TRISD.F1 = 0;
	BCF        TRISD+0, 1
;dht11.c,20 :: 		PORTD.F1 = 0;
	BCF        PORTD+0, 1
;dht11.c,21 :: 		delay_ms(18);
	MOVLW      47
	MOVWF      R12+0
	MOVLW      191
	MOVWF      R13+0
L_StartSignal0:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal0
	DECFSZ     R12+0, 1
	GOTO       L_StartSignal0
	NOP
	NOP
;dht11.c,22 :: 		PORTD.F1 = 1;
	BSF        PORTD+0, 1
;dht11.c,23 :: 		delay_us(30);
	MOVLW      19
	MOVWF      R13+0
L_StartSignal1:
	DECFSZ     R13+0, 1
	GOTO       L_StartSignal1
	NOP
	NOP
;dht11.c,24 :: 		TRISD.F1 = 1;
	BSF        TRISD+0, 1
;dht11.c,25 :: 		}
L_end_StartSignal:
	RETURN
; end of _StartSignal

_CheckResponse:

;dht11.c,26 :: 		void CheckResponse(){
;dht11.c,27 :: 		Check = 0;
	CLRF       _Check+0
;dht11.c,28 :: 		delay_us(40);
	MOVLW      26
	MOVWF      R13+0
L_CheckResponse2:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse2
	NOP
;dht11.c,29 :: 		if (PORTD.F1 == 0){
	BTFSC      PORTD+0, 1
	GOTO       L_CheckResponse3
;dht11.c,30 :: 		delay_us(80);
	MOVLW      53
	MOVWF      R13+0
L_CheckResponse4:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse4
;dht11.c,31 :: 		if (PORTD.F1 == 1)   Check = 1;   delay_us(40);}
	BTFSS      PORTD+0, 1
	GOTO       L_CheckResponse5
	MOVLW      1
	MOVWF      _Check+0
L_CheckResponse5:
	MOVLW      26
	MOVWF      R13+0
L_CheckResponse6:
	DECFSZ     R13+0, 1
	GOTO       L_CheckResponse6
	NOP
L_CheckResponse3:
;dht11.c,32 :: 		}
L_end_CheckResponse:
	RETURN
; end of _CheckResponse

_ReadData:

;dht11.c,33 :: 		void ReadData(){
;dht11.c,34 :: 		for(b=0;b<8;b++){
	CLRF       _b+0
L_ReadData7:
	MOVLW      8
	SUBWF      _b+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ReadData8
;dht11.c,35 :: 		while(!PORTD.F1);
L_ReadData10:
	BTFSC      PORTD+0, 1
	GOTO       L_ReadData11
	GOTO       L_ReadData10
L_ReadData11:
;dht11.c,36 :: 		delay_us(30);
	MOVLW      19
	MOVWF      R13+0
L_ReadData12:
	DECFSZ     R13+0, 1
	GOTO       L_ReadData12
	NOP
	NOP
;dht11.c,37 :: 		if(PORTD.F1 == 0)    i&=~(1<<(7-b));
	BTFSC      PORTD+0, 1
	GOTO       L_ReadData13
	MOVF       _b+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData32:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData33
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData32
L__ReadData33:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      _i+0, 1
	GOTO       L_ReadData14
L_ReadData13:
;dht11.c,38 :: 		else{i|= (1<<(7-b));
	MOVF       _b+0, 0
	SUBLW      7
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__ReadData34:
	BTFSC      STATUS+0, 2
	GOTO       L__ReadData35
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__ReadData34
L__ReadData35:
	MOVF       R0+0, 0
	IORWF      _i+0, 1
;dht11.c,39 :: 		while(PORTD.F1);}
L_ReadData15:
	BTFSS      PORTD+0, 1
	GOTO       L_ReadData16
	GOTO       L_ReadData15
L_ReadData16:
L_ReadData14:
;dht11.c,34 :: 		for(b=0;b<8;b++){
	INCF       _b+0, 1
;dht11.c,40 :: 		}
	GOTO       L_ReadData7
L_ReadData8:
;dht11.c,41 :: 		}
L_end_ReadData:
	RETURN
; end of _ReadData

_main:

;dht11.c,42 :: 		void main() {
;dht11.c,44 :: 		trisd.b4=0;
	BCF        TRISD+0, 4
;dht11.c,45 :: 		portd.b4=0;
	BCF        PORTD+0, 4
;dht11.c,46 :: 		trisd.b5=0;
	BCF        TRISD+0, 5
;dht11.c,47 :: 		portd.b5=0;
	BCF        PORTD+0, 5
;dht11.c,48 :: 		trisd.b6=0;
	BCF        TRISD+0, 6
;dht11.c,49 :: 		portd.b6=0;
	BCF        PORTD+0, 6
;dht11.c,50 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;dht11.c,51 :: 		while(1){
L_main17:
;dht11.c,52 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;dht11.c,53 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;dht11.c,54 :: 		StartSignal();
	CALL       _StartSignal+0
;dht11.c,55 :: 		CheckResponse();
	CALL       _CheckResponse+0
;dht11.c,56 :: 		if(Check == 1){
	MOVF       _Check+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main19
;dht11.c,57 :: 		ReadData();
	CALL       _ReadData+0
;dht11.c,58 :: 		RH1 =i;
	MOVF       _i+0, 0
	MOVWF      _RH1+0
;dht11.c,59 :: 		ReadData();
	CALL       _ReadData+0
;dht11.c,60 :: 		RH2 =i;
	MOVF       _i+0, 0
	MOVWF      _RH2+0
;dht11.c,61 :: 		ReadData();
	CALL       _ReadData+0
;dht11.c,62 :: 		Temp1 =i;
	MOVF       _i+0, 0
	MOVWF      _Temp1+0
;dht11.c,63 :: 		ReadData();
	CALL       _ReadData+0
;dht11.c,64 :: 		Temp2 =i;
	MOVF       _i+0, 0
	MOVWF      _Temp2+0
;dht11.c,65 :: 		ReadData();
	CALL       _ReadData+0
;dht11.c,66 :: 		Sum = i;
	MOVF       _i+0, 0
	MOVWF      _Sum+0
;dht11.c,67 :: 		if(Sum == RH1+RH2+Temp1+Temp2){
	MOVF       _RH2+0, 0
	ADDWF      _RH1+0, 0
	MOVWF      R0+0
	CLRF       R0+1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       _Temp1+0, 0
	ADDWF      R0+0, 1
	BTFSC      STATUS+0, 0
	INCF       R0+1, 1
	MOVF       _Temp2+0, 0
	ADDWF      R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R2+1
	MOVLW      0
	XORWF      R2+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main37
	MOVF       R2+0, 0
	XORWF      _i+0, 0
L__main37:
	BTFSS      STATUS+0, 2
	GOTO       L_main20
;dht11.c,68 :: 		Temp=Temp1 ;
	MOVF       _Temp1+0, 0
	MOVWF      _Temp+0
;dht11.c,69 :: 		RH=RH1 ;
	MOVF       _RH1+0, 0
	MOVWF      _RH+0
;dht11.c,70 :: 		Lcd_Out(1,6,"Temp:  .0C");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      6
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_dht11+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;dht11.c,71 :: 		Lcd_Out(2,2,"Humidity:  .0%");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_dht11+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;dht11.c,72 :: 		ByteToStr(Temp,mytext);
	MOVF       _Temp+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _mytext+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;dht11.c,73 :: 		Lcd_Out(1,11,Ltrim(mytext));
	MOVLW      _mytext+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	CALL       _Lcd_Out+0
;dht11.c,74 :: 		ByteToStr(RH,mytext);
	MOVF       _RH+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _mytext+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;dht11.c,75 :: 		Lcd_Out(2,11,Ltrim(mytext));
	MOVLW      _mytext+0
	MOVWF      FARG_Ltrim_string+0
	CALL       _Ltrim+0
	MOVF       R0+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      11
	MOVWF      FARG_Lcd_Out_column+0
	CALL       _Lcd_Out+0
;dht11.c,76 :: 		if( Temp>30 ||  RH>40 )
	MOVF       _Temp+0, 0
	SUBLW      30
	BTFSS      STATUS+0, 0
	GOTO       L__main28
	MOVF       _RH+0, 0
	SUBLW      40
	BTFSS      STATUS+0, 0
	GOTO       L__main28
	GOTO       L_main23
L__main28:
;dht11.c,78 :: 		portd.b6=0;
	BCF        PORTD+0, 6
;dht11.c,79 :: 		portd.b4=1;
	BSF        PORTD+0, 4
;dht11.c,80 :: 		portd.b5=1;
	BSF        PORTD+0, 5
;dht11.c,83 :: 		}
	GOTO       L_main24
L_main23:
;dht11.c,87 :: 		portd.b4=0;
	BCF        PORTD+0, 4
;dht11.c,88 :: 		portd.b5=0;
	BCF        PORTD+0, 5
;dht11.c,89 :: 		portd.b6=1;
	BSF        PORTD+0, 6
;dht11.c,91 :: 		}
L_main24:
;dht11.c,93 :: 		}
	GOTO       L_main25
L_main20:
;dht11.c,95 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;dht11.c,96 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;dht11.c,97 :: 		Lcd_Out(1,1,"Check sum error");}
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_dht11+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main25:
;dht11.c,98 :: 		}
	GOTO       L_main26
L_main19:
;dht11.c,101 :: 		Lcd_Out(1,3,"No response");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_dht11+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;dht11.c,102 :: 		Lcd_Out(2,1,"from the sensor");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_dht11+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;dht11.c,103 :: 		}
L_main26:
;dht11.c,104 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
	NOP
	NOP
;dht11.c,105 :: 		}
	GOTO       L_main17
;dht11.c,106 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
