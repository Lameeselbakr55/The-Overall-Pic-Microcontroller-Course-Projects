#line 1 "D:/FEE/self learning/micropedia/19 - temperature sensor/ADC Project .c"

sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;


sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;
float tmp;
float v;
char str[7];
void main()
{
trisc.f0=0;
portc.f0=0;
Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);
Lcd_Cmd(_LCD_CLEAR);
ADC_Init();
Lcd_Out(1, 1, "temperature =");
while(1)
{
tmp = ADC_Read(0);
v = (tmp*500.0)/1023;
floatToStr(v,str);
Lcd_Out(1,14,str);
delay_ms (500);
if (v>30 )
{
portc.f0=1;
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1, 1, "temperature =");
Lcd_Out(1,14,str);
Lcd_Out(2,1,"overheated");
delay_ms (1000);
}
else
{
portc.f0=0;
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1, 1, "temperature =");
Lcd_Out(1,14,str);
Lcd_Out(2,1,"normal");
delay_ms (1000);
}
}
}
