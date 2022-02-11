#line 1 "D:/self learning/microcontroller course/speed and direction/speed and direction.c"
int v;
int duty;
void main() {
trisa=1; porta=0;
trisb.f0=1; portb.f0=0;
trisc=0; portc=0b00000000;
PWM1_init(1000);
ADC_init();
PWM1_start();
for(;;)
{
if(portb.f0==1)
{
portc.f0=1;
portc.f1=0;
}
else
{
portc.f0=0;
portc.f1=1;
}
v=ADC_Read(0);
duty=v/4;
PWM1_Set_Duty(duty);
}
}
