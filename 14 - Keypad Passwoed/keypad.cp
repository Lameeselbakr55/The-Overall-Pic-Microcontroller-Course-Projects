#line 1 "D:/FEE/self learning/micropedia/project 17/keypad.c"

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

char keypadport at portb;
int i;
char password [4];
char get_password()
{
loop :
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"Enter password");
delay_ms(1000);
for (i=0;i<3;i++)
{
while (password[i]==0)
{
password[i]=Keypad_Key_Click();
}
if(password[i]==1) password[i]='7';
if(password[i]==2) password[i]='8';
if(password[i]==3) password[i]='9';
if(password[i]==5) password[i]='4';
if(password[i]==6) password[i]='5';
if(password[i]==7) password[i]='6';
if(password[i]==9) password[i]='1';
if(password[i]==10) password[i]='2';
if(password[i]==11) password[i]='3';
Lcd_Chr(2,i+1,'*');
}
if(strcmp(password,"123")==0)
return 1;
else
{
password[0]=0;
password[1]=0;
password[2]=0;
password[3]=0;
goto loop
}
 }
void main() {
trisc.f0=0;
portc.f0=0;
Lcd_Init();
Lcd_Cmd(_LCD_CURSOR_OFF);
get_password();
while (1)
{
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"falsh program");
Lcd_Out(2,1,"by : lamees");
portc.f0=1;
delay_ms(1000);
portc.f0=0;
delay_ms(1000);
}
}
