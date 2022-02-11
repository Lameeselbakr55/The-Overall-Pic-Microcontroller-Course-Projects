#line 1 "C:/Users/«·ﬂ«‘›/Desktop/micropedia/project 5/flashing.c"
void main() {
TRISB=0b00000000;
PORTB=0b0000000;
delay_ms(2000);
while (1)
{
PORTB = PORTB + 1;
delay_ms(2000);
}
 }
