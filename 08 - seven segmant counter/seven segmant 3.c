void main() {
TRISB=0;
while(1)
{
PORTB=0x3f;
delay_ms(1000);
PORTB=0x06;
delay_ms(1000);
PORTB=0x5b;
delay_ms(1000);
PORTB=0x4f;
delay_ms(1000);
PORTB=0x66;
delay_ms(1000);
PORTB=0x6d;
delay_ms(1000);
}
}