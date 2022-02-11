#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 1/flashing.c"
void main() {
TRISC.B0=0;
PORTC.B0=0;
while (1)
{
PORTC.B0=1;
delay_ms(1000);
PORTC.B0=0;
delay_ms(1000);
}
 }
