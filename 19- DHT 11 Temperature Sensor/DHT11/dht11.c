
 sbit LCD_RS at RB5_bit;
 sbit LCD_EN at RB4_bit;
 sbit LCD_D4 at RB3_bit;
 sbit LCD_D5 at RB2_bit;
 sbit LCD_D6 at RB1_bit;
 sbit LCD_D7 at RB0_bit;
 sbit LCD_RS_Direction at TRISB5_bit;
 sbit LCD_EN_Direction at TRISB4_bit;
 sbit LCD_D4_Direction at TRISB3_bit;
 sbit LCD_D5_Direction at TRISB2_bit;
 sbit LCD_D6_Direction at TRISB1_bit;
 sbit LCD_D7_Direction at TRISB0_bit;

 char mytext[4];
 unsigned char  Check = 0, b = 0,i = 0,Temp1 = 0,Temp2 = 0,
               RH1 = 0,RH2 = 0,Sum = 0, Temp = 0 , RH = 0 ;
 void StartSignal(){
 TRISD.F1 = 0;
 PORTD.F1 = 0;
 delay_ms(18);
 PORTD.F1 = 1;
 delay_us(30);
 TRISD.F1 = 1;
  }
 void CheckResponse(){
 Check = 0;
 delay_us(40);
 if (PORTD.F1 == 0){
 delay_us(80);
 if (PORTD.F1 == 1)   Check = 1;   delay_us(40);}
 }
 void ReadData(){
 for(b=0;b<8;b++){
 while(!PORTD.F1);
 delay_us(30);
 if(PORTD.F1 == 0)    i&=~(1<<(7-b));
 else{i|= (1<<(7-b));
 while(PORTD.F1);}
 }
 }
 void main() {

 trisd.b4=0;
 portd.b4=0;
 trisd.b5=0;
 portd.b5=0;
 trisd.b6=0;
 portd.b6=0;
 Lcd_Init();
 while(1){
  Lcd_Cmd(_LCD_CURSOR_OFF);
  Lcd_Cmd(_LCD_CLEAR);
  StartSignal();
  CheckResponse();
  if(Check == 1){
  ReadData();
  RH1 =i;
  ReadData();
  RH2 =i;
  ReadData();
  Temp1 =i;
  ReadData();
  Temp2 =i;
  ReadData();
  Sum = i;
  if(Sum == RH1+RH2+Temp1+Temp2){
  Temp=Temp1 ;
  RH=RH1 ;
  Lcd_Out(1,6,"Temp:  .0C");
  Lcd_Out(2,2,"Humidity:  .0%");
  ByteToStr(Temp,mytext);
  Lcd_Out(1,11,Ltrim(mytext));
  ByteToStr(RH,mytext);
  Lcd_Out(2,11,Ltrim(mytext));
  if( Temp>30 ||  RH>40 )
  {
    portd.b6=0;
    portd.b4=1;
    portd.b5=1;

  
  }
  else
  {

    portd.b4=0;
    portd.b5=0;
    portd.b6=1;
  
  }
  
  }
  else{
  Lcd_Cmd(_LCD_CURSOR_OFF);
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Out(1,1,"Check sum error");}
  }
  else {

  Lcd_Out(1,3,"No response");
  Lcd_Out(2,1,"from the sensor");
  }
  delay_ms(1000);
  }
  }