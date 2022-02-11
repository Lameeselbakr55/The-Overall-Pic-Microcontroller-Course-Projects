#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 7/flashing.c"
void main() {
int i;
TRISB=0b00000000;
PORTB=0b0000000;
for(i=0;i<20;i++)
{
PORTB=0b11111111;
delay_ms(1000);
PORTB=0b0000000;
delay_ms(1000);
}
 }
