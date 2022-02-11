#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 3/flashing.c"
void main() {
int i;
TRISC.B0=0;
PORTC.B0=0;
for( i=0;i<5;i++)
{
PORTC.B0=1;
delay_ms(1000);
PORTC.B0=0;
delay_ms(1000);
}
 }
