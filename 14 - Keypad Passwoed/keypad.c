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
char keypadport at portb;
int i;   //to use in for loop
char password [4];           //to write password and store
char get_password()    //function to check the password
{
loop :
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,1,"Enter password");   //write on lcd
delay_ms(1000);                               //wait
for (i=0;i<3;i++)                 //loop for entering password using keypad
{
while (password[i]==0)                //check if keypad is clicked or not
{
password[i]=Keypad_Key_Click();     // if keypad is not clicked repeat again until it clicked
}
if(password[i]==1)                    password[i]='7';     //to transform received value to value we press
if(password[i]==2)                    password[i]='8';     //to transform received value to value we press
if(password[i]==3)                    password[i]='9';     //to transform received value to value we press
if(password[i]==5)                    password[i]='4';     //to transform received value to value we press
if(password[i]==6)                    password[i]='5';     //to transform received value to value we press
if(password[i]==7)                    password[i]='6';     //to transform received value to value we press
if(password[i]==9)                    password[i]='1';     //to transform received value to value we press
if(password[i]==10)                    password[i]='2';    //to transform received value to value we press
if(password[i]==11)                    password[i]='3';    //to transform received value to value we press
Lcd_Chr(2,i+1,'*');                                         //to write * on lcd
}
if(strcmp(password,"123")==0)     // strcmp :string compare to check if password is correct
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
trisc.f0=0;      //pin c0 is output for led
portc.f0=0;       // led is initially off
Lcd_Init();          // lcd initialization
Lcd_Cmd(_LCD_CURSOR_OFF);                 //cursor off
get_password();               //call function get password
while (1)
{
Lcd_Cmd(_LCD_CLEAR);    //clear the lcd
Lcd_Out(1,1,"falsh program");          //write on lcd
Lcd_Out(2,1,"by : lamees");
portc.f0=1;                                 //led on
delay_ms(1000);                   // wait for one second
portc.f0=0;                                 //led off
delay_ms(1000);                   // wait for one second
}
}