
_get_password:

;keypad.c,19 :: 		char get_password()    //function to check the password
;keypad.c,21 :: 		loop :
___get_password_loop:
;keypad.c,22 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad.c,23 :: 		Lcd_Out(1,1,"Enter password");   //write on lcd
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_keypad+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad.c,24 :: 		delay_ms(1000);                               //wait
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_get_password0:
	DECFSZ     R13+0, 1
	GOTO       L_get_password0
	DECFSZ     R12+0, 1
	GOTO       L_get_password0
	DECFSZ     R11+0, 1
	GOTO       L_get_password0
	NOP
	NOP
;keypad.c,25 :: 		for (i=0;i<3;i++)                 //loop for entering password using keypad
	CLRF       _i+0
	CLRF       _i+1
L_get_password1:
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password22
	MOVLW      3
	SUBWF      _i+0, 0
L__get_password22:
	BTFSC      STATUS+0, 0
	GOTO       L_get_password2
;keypad.c,27 :: 		while (password[i]==0)                //check if keypad is clicked or not
L_get_password4:
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_get_password5
;keypad.c,29 :: 		password[i]=Keypad_Key_Click();     // if keypad is not clicked repeat again until it clicked
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FLOC__get_password+0
	CALL       _Keypad_Key_Click+0
	MOVF       FLOC__get_password+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;keypad.c,30 :: 		}
	GOTO       L_get_password4
L_get_password5:
;keypad.c,31 :: 		if(password[i]==1)                    password[i]='7';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_get_password6
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      55
	MOVWF      INDF+0
L_get_password6:
;keypad.c,32 :: 		if(password[i]==2)                    password[i]='8';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L_get_password7
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      56
	MOVWF      INDF+0
L_get_password7:
;keypad.c,33 :: 		if(password[i]==3)                    password[i]='9';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L_get_password8
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      57
	MOVWF      INDF+0
L_get_password8:
;keypad.c,34 :: 		if(password[i]==5)                    password[i]='4';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L_get_password9
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      52
	MOVWF      INDF+0
L_get_password9:
;keypad.c,35 :: 		if(password[i]==6)                    password[i]='5';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L_get_password10
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      53
	MOVWF      INDF+0
L_get_password10:
;keypad.c,36 :: 		if(password[i]==7)                    password[i]='6';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L_get_password11
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      54
	MOVWF      INDF+0
L_get_password11:
;keypad.c,37 :: 		if(password[i]==9)                    password[i]='1';     //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      9
	BTFSS      STATUS+0, 2
	GOTO       L_get_password12
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      49
	MOVWF      INDF+0
L_get_password12:
;keypad.c,38 :: 		if(password[i]==10)                    password[i]='2';    //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      10
	BTFSS      STATUS+0, 2
	GOTO       L_get_password13
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      50
	MOVWF      INDF+0
L_get_password13:
;keypad.c,39 :: 		if(password[i]==11)                    password[i]='3';    //to transform received value to value we press
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      11
	BTFSS      STATUS+0, 2
	GOTO       L_get_password14
	MOVF       _i+0, 0
	ADDLW      _password+0
	MOVWF      FSR
	MOVLW      51
	MOVWF      INDF+0
L_get_password14:
;keypad.c,40 :: 		Lcd_Chr(2,i+1,'*');                                         //to write * on lcd
	MOVLW      2
	MOVWF      FARG_Lcd_Chr_row+0
	INCF       _i+0, 0
	MOVWF      FARG_Lcd_Chr_column+0
	MOVLW      42
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;keypad.c,25 :: 		for (i=0;i<3;i++)                 //loop for entering password using keypad
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;keypad.c,41 :: 		}
	GOTO       L_get_password1
L_get_password2:
;keypad.c,42 :: 		if(strcmp(password,"123")==0)     // strcmp :string compare to check if password is correct
	MOVLW      _password+0
	MOVWF      FARG_strcmp_s1+0
	MOVLW      ?lstr2_keypad+0
	MOVWF      FARG_strcmp_s2+0
	CALL       _strcmp+0
	MOVLW      0
	XORWF      R0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__get_password23
	MOVLW      0
	XORWF      R0+0, 0
L__get_password23:
	BTFSS      STATUS+0, 2
	GOTO       L_get_password15
;keypad.c,43 :: 		return 1;
	MOVLW      1
	MOVWF      R0+0
	GOTO       L_end_get_password
L_get_password15:
;keypad.c,46 :: 		password[0]=0;
	CLRF       _password+0
;keypad.c,47 :: 		password[1]=0;
	CLRF       _password+1
;keypad.c,48 :: 		password[2]=0;
	CLRF       _password+2
;keypad.c,49 :: 		password[3]=0;
	CLRF       _password+3
;keypad.c,50 :: 		goto loop
	GOTO       ___get_password_loop
;keypad.c,52 :: 		}
L_end_get_password:
	RETURN
; end of _get_password

_main:

;keypad.c,53 :: 		void main() {
;keypad.c,54 :: 		trisc.f0=0;      //pin c0 is output for led
	BCF        TRISC+0, 0
;keypad.c,55 :: 		portc.f0=0;       // led is initially off
	BCF        PORTC+0, 0
;keypad.c,56 :: 		Lcd_Init();          // lcd initialization
	CALL       _Lcd_Init+0
;keypad.c,57 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                 //cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad.c,58 :: 		get_password();               //call function get password
	CALL       _get_password+0
;keypad.c,59 :: 		while (1)
L_main17:
;keypad.c,61 :: 		Lcd_Cmd(_LCD_CLEAR);    //clear the lcd
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;keypad.c,62 :: 		Lcd_Out(1,1,"falsh program");          //write on lcd
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_keypad+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad.c,63 :: 		Lcd_Out(2,1,"by : lamees");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_keypad+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;keypad.c,64 :: 		portc.f0=1;                                 //led on
	BSF        PORTC+0, 0
;keypad.c,65 :: 		delay_ms(1000);                   // wait for one second
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
;keypad.c,66 :: 		portc.f0=0;                                 //led off
	BCF        PORTC+0, 0
;keypad.c,67 :: 		delay_ms(1000);                   // wait for one second
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
;keypad.c,68 :: 		}
	GOTO       L_main17
;keypad.c,69 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
