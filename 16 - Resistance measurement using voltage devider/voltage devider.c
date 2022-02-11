// Lcd pinout settings
sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D7 at RB7_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D4 at RB4_bit;

// Pin direction
sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D7_Direction at TRISB7_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D4_Direction at TRISB4_bit;
char res[12];
float v;
unsigned int res2;
void main() 
{
Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);                    // r2= v * r2/r1+r2       but r1=100
Lcd_Cmd(_LCD_CLEAR);                        //r2= 1000v/5-v
ADC_Init();
Lcd_Out(1, 1, "resistace =");
while(1)
{
v=ADC_Read(1);
v=(v*5.0)/1023;
res2=(1000*v)/(5-v);
IntToStr(res2,res);
Lcd_Out(2,7,res);
}
}