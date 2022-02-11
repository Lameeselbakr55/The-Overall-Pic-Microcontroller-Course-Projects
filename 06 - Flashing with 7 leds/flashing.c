void main() {
int i;
TRISB=0b00000000;  //led is output
PORTB=0b0000000;
for(i=0;i<20;i++)
{
PORTB=0b11111111;
delay_ms(1000);
PORTB=0b0000000;                       //wait 1 second
delay_ms(1000);
}
 }