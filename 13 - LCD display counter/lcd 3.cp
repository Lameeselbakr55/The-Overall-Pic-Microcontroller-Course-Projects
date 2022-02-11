#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 16/lcd 3.c"

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

int i;
char str [7];
void main() {
Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);
while(1)
{
for (i=0;i<=16;i++)
{

IntToStr(i,str);
Lcd_Out(1,1,str);
delay_ms(1000);
Lcd_Cmd(_LCD_CLEAR);
}
}
}
