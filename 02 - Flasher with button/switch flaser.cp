#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 2/switch flaser.c"
void main() {
TRISC.B0=0;
PORTC.B0=0;
TRISB.F0=1;
while (1)
{
if(PORTB.F0==1)
{
PORTC.B0=1;
delay_ms(1000);
PORTC.B0=0;
delay_ms(1000);
}
 }
}
