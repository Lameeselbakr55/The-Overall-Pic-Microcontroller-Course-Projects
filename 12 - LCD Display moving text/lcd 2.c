// LCD module connections
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
// End LCD module connections
int i;
void main() {
Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);          // Cursor off
while(1)
{
for (i=0;i<=16;i++)
{
Lcd_Out(1,i,"Display");
delay_ms(20);
Lcd_Cmd(_LCD_CLEAR);               // Clear display
delay_ms(20);
}
}
}