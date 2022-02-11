#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 4/flashing.c"
void main() {
TRISC=0b00000000;
PORTC=0b00000000;
while (1)
{
PORTC.F0=1;
PORTC.F1=0;
PORTC.F2=0;
delay_ms(1000);
PORTC.F0=0;
PORTC.F1=1;
PORTC.F2=0;
delay_ms(1000);
PORTC.F0=0;
PORTC.F1=0;
PORTC.F2=1;
delay_ms(1000);
}
 }
