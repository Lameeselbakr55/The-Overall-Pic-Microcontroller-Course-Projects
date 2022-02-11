#line 1 "F:/self learning/all over the pic/LCD project 2/MyProject.c"


sbit LCD_RS at RD2_bit;
sbit LCD_EN at RD3_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;
sbit LCD_RS_Direction at TRISD2_bit;
sbit LCD_EN_Direction at TRISD3_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

 void main ()
 {

 Lcd_Init();
 Lcd_cmd(_lcd_CURSOR_off);
 while(1)
 {
 lcd_out(1,1," lamees elbakr ");
 lcd_out(2,1," Electronic engineering ");

 }
 }
